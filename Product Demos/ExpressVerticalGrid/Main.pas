unit Main;

{$I cxVer.inc}

interface

uses
{$IFDEF DELPHI16}
  System.UITypes,
{$ENDIF}
  System.Types, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxDemoBaseMainForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxRibbonSkins, cxContainer, cxEdit, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxEditorProducers, dxPScxExtEditorProducers,
  Vcl.ActnList, Vcl.ImgList, dxBar, dxBarApplicationMenu, dxRibbon, dxSkinsForm,
  dxPgsDlg, dxPSCore, dxBarExtItems, cxLabel, cxTextEdit, dxNavBar, dxNavBarCollns,
  dxGDIPlusClasses, Vcl.ExtCtrls, cxSplitter, cxClasses, dxPScxPivotGridLnk, dxCustomDemoFrameUnit, dxDemoUtils,
  dxNavBarBase, dxLayoutcxEditAdapters, dxPScxSchedulerLnk,
  dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl, dxPScxDBEditorLnks,
  dxPSTextLnk, dxPSdxLCLnk, dxRibbonCustomizationForm, dxScreenTip, dxCustomHint, cxHint, cxImageList, cxImage, Vcl.Menus,
  dxLayoutControlAdapters, Vcl.StdCtrls, cxButtons, dxNavBarStyles, dxGalleryControl, dxRibbonBackstageViewGalleryControl,
  dxBevel, cxGroupBox, dxRibbonBackstageView, dxCore, cxGeometry, dxFramedControl, dxShellDialogs, System.Actions,
  System.ImageList, dxPanel;

type
  TfrmMain = class(TfrmMainBase)
    nvgNewAndHighlighted: TdxNavBarGroup;
    NavBarGroup1: TdxNavBarGroup;
    NavBarGroup2: TdxNavBarGroup;
    procedure FormShow(Sender: TObject);
  private
    FFrameUpdating: Boolean;
    function GetActiveFrame: TdxCustomDemoFrame;
  protected
    function IsExportOptionsAvailable: Boolean; override;
    function IsPrintOptionsAvailable: Boolean; override;

    procedure ActivateDemo(AID: Integer); override;
    procedure CustomizeSetupRibbonGroups; override;
    procedure LookAndFeelChanged; override;
    procedure ShowFrame(FrameID: Integer);
    procedure SwitchFullWindowMode; override;
    procedure SwitchDemoCustomPropertiesSetup; override;
    procedure SynchronizeFrameChoosers(FrameID: Integer);

    procedure InitNavBar; override;
    function IsSupportExport: Boolean;
    procedure DoExportToFile(AExportType: TSupportedExportType; ADataOnly: Boolean; const AFileName: string; AHandler: TObject); override;
    function GetActiveReportLink: TBasedxReportLink; override;
    function GetDemoCaption: string; override;
    function GetExportFileName: string; override;
    function GetInspectedObject: TPersistent; override;

    property ActiveFrame: TdxCustomDemoFrame read GetActiveFrame;
    property ActiveReportLink: TBasedxReportLink read GetActiveReportLink;
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses
  FrameIDs, dxFrames, maindata, dxThemeManager,
  uStrsConst, dxOffice11, cxVerticalGridDemoUtils;

type
  TdxNavBarViewInfoAccess = class(TdxNavBarViewInfo);

procedure TfrmMain.FormShow(Sender: TObject);
begin
  inherited;
  ShowFrame(StartFrameID);
  SynchronizeFrameChoosers(StartFrameID);
  SynchronizeFrameNavigation(StartFrameID);
end;

function TfrmMain.GetActiveFrame: TdxCustomDemoFrame;
begin
  Result := dxFrameManager.ActiveFrame;
end;

function TfrmMain.IsExportOptionsAvailable: Boolean;
begin
  Result := IsSupportExport;
end;

function TfrmMain.IsPrintOptionsAvailable: Boolean;
begin
  Result := ActiveReportLink <> nil;
end;

procedure TfrmMain.ActivateDemo(AID: Integer);
begin
  if AID > 0 then
    ShowFrame(AID);
end;

procedure TfrmMain.CustomizeSetupRibbonGroups;
begin
  biFullWindowMode.Visible := ivAlways;
  biCustomProperties.Visible := ivNever;
end;

procedure TfrmMain.LookAndFeelChanged;
begin
  inherited LookAndFeelChanged;
  if ActiveFrame <> nil then
    ActiveFrame.LookAndFeelChanged;
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
    dxComponentPrinter.CurrentLink := ActiveReportLink;
    UpdateInspectedObject;
    Caption := GetMainFormCaption + ' - ' + GetDemoCaption;
  finally
    FFrameUpdating := False;
  end;
end;

procedure TfrmMain.SwitchFullWindowMode;
begin
  inherited SwitchFullWindowMode;
  ActiveFrame.SwitchFullWindowMode(FullWindowModeOn);
end;

procedure TfrmMain.SwitchDemoCustomPropertiesSetup;
begin
  inherited SwitchDemoCustomPropertiesSetup;
  ActiveFrame.ShowSetup := biCustomProperties.Down;
end;

procedure TfrmMain.SynchronizeFrameChoosers(FrameID: Integer);

  function CheckSelectedLink(AGroup: TdxNavBarGroup): Boolean;
  var
    ALinkIndex: Integer;
    ALink: TdxNavBarItemLink;
  begin
    Result := False;
    if AGroup.Visible then
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
  if not CheckSelectedLink(nvgNewAndHighlighted) then
    for AGroupIndex := 0 to NavBar.Groups.Count - 1 do
      if (AGroupIndex <> nvgNewAndHighlighted.Index) and CheckSelectedLink(NavBar.Groups[AGroupIndex]) then
        Break;
end;

procedure TfrmMain.InitNavBar;
var
  I: Integer;
  AFrameInfo: TdxFrameInfo;
  AItem: TdxNavBarItem;

  procedure CheckSideBarGroup(AGroupIndex: Integer);
  begin
    if (AGroupIndex < NavBar.Groups.Count) and (AGroupIndex > -1) then
      NavBar.Groups[AGroupIndex].CreateLink(AItem);
  end;

begin
  inherited InitNavBar;
  for I := 0 to dxFrameManager.Count - 1 do
  begin
    AFrameInfo := dxFrameManager[I];
    AItem := NavBar.Items.Add;
    AItem.Caption := AFrameInfo.Caption;
    AItem.SmallImageIndex := AFrameInfo.ImageIndex;
    AItem.Tag := AFrameInfo.ID;
    AItem.CustomStyles.Item := nbsItemStyle;
    AItem.CustomStyles.ItemDisabled := nbsItemStyle;
    AItem.CustomStyles.ItemHotTracked := nbsItemStyle;
    AItem.CustomStyles.ItemPressed := nbsItemStyle;
    CheckSideBarGroup(AFrameInfo.SideBarGroupIndex);
    CheckSideBarGroup(AFrameInfo.SideBarFirstAdditionalGroupIndex);
   // CheckSideBarGroup(AFrameInfo.SideBarSecondAdditionalGroupIndex);
  end;
  NavBar.ActiveGroupIndex := 0;
end;

function TfrmMain.IsSupportExport: Boolean;
begin
  Result := (ActiveFrame <> nil) and
    ActiveFrame.IsSupportExport;
end;

procedure TfrmMain.DoExportToFile(AExportType: TSupportedExportType; ADataOnly: Boolean; const AFileName: string; AHandler: TObject);
begin
  ActiveFrame.DoExport(AExportType, AFileName, AHandler);
end;

function TfrmMain.GetActiveReportLink: TBasedxReportLink;
begin
  if ActiveFrame <> nil then
    Result := ActiveFrame.ReportLink
  else
    Result := nil;
end;

function TfrmMain.GetDemoCaption: string;
begin
  if ActiveFrame <> nil then
    Result := ActiveFrame.Caption
  else
    Result := inherited GetDemoCaption;
end;

function TfrmMain.GetExportFileName: string;
begin
  Result := ActiveFrame.ExportFileName;
end;

function TfrmMain.GetInspectedObject: TPersistent;
begin
  if ActiveFrame <> nil then
    Result := ActiveFrame.InspectedObject
  else
    Result := nil;
end;

initialization
  dxMegaDemoProductIndex := dxVerticalGridIndex;

finalization

end.
