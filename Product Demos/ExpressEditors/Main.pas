unit Main;

{$I cxVer.inc}

interface

uses
{$IFDEF DELPHI16}
  System.UITypes,
{$ENDIF}
  System.Types, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxDemoBaseMainForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxRibbonSkins, dxRibbonCustomizationForm, cxContainer,
  cxEdit, Vcl.Menus, dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxScreenTip, dxCustomHint, cxHint, dxLayoutLookAndFeels, Vcl.ActnList, Vcl.ImgList,
  cxImageList, dxBar, dxBarApplicationMenu, dxRibbon, dxSkinsForm, dxPgsDlg,
  dxPSCore, dxBarExtItems, cxClasses, dxGDIPlusClasses, cxImage,
  dxLayoutContainer, Vcl.StdCtrls, cxButtons, cxTextEdit, dxLayoutControl,
  dxNavBarBase, dxNavBarStyles, dxNavBar, Vcl.ExtCtrls, cxSplitter, dxNavBarCollns, dxCustomDemoFrameUnit, dxGalleryControl,
  dxRibbonBackstageViewGalleryControl, dxBevel, cxLabel, cxGroupBox, dxRibbonBackstageView, System.Actions, dxCore,
  cxGeometry, dxFramedControl, dxShellDialogs, dxPanel;

type
  TfrmMain = class(TfrmMainBase)
    nbgOverview: TdxNavBarGroup;
    nbgInplaceEditing: TdxNavBarGroup;
    nbgEditorsWithoutTextBoxes: TdxNavBarGroup;
    nbgEditorsWithTextBoxes: TdxNavBarGroup;
    nvgRangeControl: TdxNavBarGroup;
    nvbSpinEditors: TdxNavBarGroup;
    nvbEditorsWithDropDown: TdxNavBarGroup;
    nbgMultiPurpose: TdxNavBarGroup;
    bbShowGuides: TdxBarLargeButton;
    nbgHighlightedFeatures: TdxNavBarGroup;
    dxBarLargeButton1: TdxBarLargeButton;
    procedure FormShow(Sender: TObject);
    procedure bbShowGuidesClick(Sender: TObject);
  private
    FFrameUpdating: Boolean;
    function GetActiveFrame: TdxCustomDemoFrame;
    function GetActiveFrameID: Integer;
  protected
    procedure ActivateDemo(AID: Integer); override;
    procedure CustomizeSetupRibbonGroups; override;
    function GetDemoCaption: string; override;
    function GetInspectedObject: TPersistent; override;
    procedure InitNavBar; override;
    function IsApplicationButtonAvailable: Boolean; override;
    function IsBarOptionsVisible: Boolean; override;
    procedure LookAndFeelChanged; override;
    procedure SwitchFullWindowMode; override;

    procedure ShowFrame(FrameID: Integer);
    procedure SynchronizeFrameChoosers(FrameID: Integer);

    property ActiveFrame: TdxCustomDemoFrame read GetActiveFrame;
    property ActiveFrameID: Integer read GetActiveFrameID;
  public
    procedure ChangeShowGuidesState(ADown: Boolean);
    procedure UpdateBaseMenuOptions; override;
  end;

var
  frmMain: TfrmMain;

implementation

uses dxFrames, dxDemoUtils, FrameIDs;

{$R *.dfm}

type
  TdxNavBarViewInfoAccess = class(TdxNavBarViewInfo);

{ TfrmMain }

procedure TfrmMain.FormShow(Sender: TObject);
begin
  inherited;
  ShowFrame(StartFrameID);
  SynchronizeFrameChoosers(StartFrameID);
  SynchronizeFrameNavigation(StartFrameID);
end;

procedure TfrmMain.ChangeShowGuidesState(ADown: Boolean);
begin
  bbShowGuides.Down := ADown;
end;

procedure TfrmMain.UpdateBaseMenuOptions;
begin
  inherited UpdateBaseMenuOptions;
  if ActiveFrameID = ContactDetailsFrameID then
    bbShowGuides.Visible := ivAlways
  else
    bbShowGuides.Visible := ivNever;
end;

procedure TfrmMain.ActivateDemo(AID: Integer);
begin
  if AID > 0 then
    ShowFrame(AID);
end;

procedure TfrmMain.bbShowGuidesClick(Sender: TObject);
begin
  ActiveFrame.ChangeGuidesVisibility(bbShowGuides.Down);
end;

procedure TfrmMain.CustomizeSetupRibbonGroups;
begin
  biShowInspector.Visible := ivNever;
  biFullWindowMode.Visible := ivAlways;
end;

function TfrmMain.GetActiveFrame: TdxCustomDemoFrame;
begin
  Result := dxFrameManager.ActiveFrame;
end;

function TfrmMain.GetActiveFrameID: Integer;
begin
  Result := dxFrameManager.ActiveFrameID;
end;

function TfrmMain.GetDemoCaption: string;
begin
  if ActiveFrame <> nil then
    Result := ActiveFrame.Caption
  else
    Result := inherited GetDemoCaption;
end;

function TfrmMain.GetInspectedObject: TPersistent;
begin
  if ActiveFrame <> nil then
    Result := ActiveFrame.InspectedObject
  else
    Result := nil;
end;

procedure TfrmMain.InitNavBar;
  procedure CheckSideBarGroup(AGroupIndex: Integer; AItem: TdxNavBarItem);
  begin
    if (AGroupIndex < NavBar.Groups.Count) and (AGroupIndex > -1) then
      NavBar.Groups[AGroupIndex].CreateLink(AItem);
  end;

  procedure SetItemStyle(AItem: TdxNavBarItem; AStyleItem: TdxNavBarStyleItem);
  begin
    AItem.Style := AStyleItem;
    AItem.StyleDisabled := AStyleItem;
    AItem.StyleHotTracked := AStyleItem;
    AItem.StylePressed := AStyleItem;
  end;

var
  I: Integer;
  AFrameInfo: TdxFrameInfo;
  AItem: TdxNavBarItem;
begin
  inherited InitNavBar;
  for I := 0 to dxFrameManager.Count - 1 do
  begin
    AFrameInfo := dxFrameManager[I];
    AItem := NavBar.Items.Add;
    AItem.Caption := AFrameInfo.Caption;
    AItem.SmallImageIndex := AFrameInfo.ImageIndex;
    AItem.Tag := AFrameInfo.ID;
    SetItemStyle(AItem, nbsItemStyle);
    CheckSideBarGroup(AFrameInfo.SideBarGroupIndex, AItem);
    CheckSideBarGroup(AFrameInfo.SideBarFirstAdditionalGroupIndex, AItem);
    CheckSideBarGroup(AFrameInfo.SideBarSecondAdditionalGroupIndex, AItem);
  end;
  for I := NavBar.Groups.Count - 1 downto 0 do
    if not NavBar.Groups[I].Visible then
      NavBar.Groups[I].Free;
  NavBar.ActiveGroupIndex := 0;
end;

function TfrmMain.IsApplicationButtonAvailable: Boolean;
begin
  Result := False;
end;

function TfrmMain.IsBarOptionsVisible: Boolean;
begin
  Result := False;
end;

procedure TfrmMain.LookAndFeelChanged;
begin
  inherited LookAndFeelChanged;
  if ActiveFrame <> nil then
    ActiveFrame.LookAndFeelChanged;
end;

procedure TfrmMain.SwitchFullWindowMode;
begin
  inherited SwitchFullWindowMode;
  ActiveFrame.SwitchFullWindowMode(FullWindowModeOn);
end;

procedure TfrmMain.ShowFrame(FrameID: Integer);
var
  ANavBarDragDropFlags: TdxNavBarDragDropFlags;
begin
  if FFrameUpdating or (ActiveFrame <> nil) and not ActiveFrame.CanDeactivate then
    Exit;
  FFrameUpdating := True;
  try
    if (dxFrameManager.ActiveFrameInfo = nil) or
      (dxFrameManager.ActiveFrameInfo.ID <> FrameID) then
    begin
      ANavBarDragDropFlags := NavBar.DragDropFlags;
      NavBar.DragDropFlags := [];
      try
        LockWindowUpdate(Handle);
        dxFrameManager.ShowFrame(FrameID, plClient);
      finally
        LockWindowUpdate(0);
        NavBar.DragDropFlags := ANavBarDragDropFlags;
      end;
      if ActiveFrame <> nil then
      begin
        Application.ProcessMessages;
        ActiveFrame.AfterShow;
      end;
      UpdateBaseMenuOptions;
    end;
    UpdateInspectedObject;
  finally
    FFrameUpdating := False;
  end;
  Caption := GetMainFormCaption + ' - ' + GetDemoCaption;
end;

procedure TfrmMain.SynchronizeFrameChoosers(FrameID: Integer);

  function CheckSelectedLink(AGroup: TdxNavBarGroup): Boolean;
  var
    ALinkIndex: Integer;
    ALink: TdxNavBarItemLink;
  begin
    Result := False;
    for ALinkIndex := 0 to AGroup.LinkCount - 1 do
    begin
      ALink := AGroup.Links[ALinkIndex];
      ALink.Selected := ALink.Item.Tag = FrameID;
      if ALink.Selected then
      begin
        TdxNavBarViewInfoAccess(NavBar.ViewInfo).MakeLinkVisible(ALink, False);
        Result := True;
      end;
    end;
  end;

var
  AGroupIndex: Integer;
begin
  if not CheckSelectedLink(nbgOverview) then
    for AGroupIndex := 0 to NavBar.Groups.Count - 1 do
      if (AGroupIndex <> nbgOverview.Index) and CheckSelectedLink(NavBar.Groups[AGroupIndex]) then
        Break;
end;

initialization
  dxMegaDemoProductIndex := dxEditorsIndex;
  UseLatestCommonDialogs := False;

finalization

end.
