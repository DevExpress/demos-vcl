unit Main;

{$I cxVer.inc}

interface

uses
{$IFDEF DELPHI16}
  System.UITypes,
{$ENDIF}
  System.Types, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Menus, Vcl.StdCtrls,
  cxGraphics, cxClasses, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxRibbonSkins,
  cxContainer, cxEdit, cxDrawTextUtils,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxBar, dxBarApplicationMenu, dxRibbon, dxSkinsForm, dxPgsDlg, dxPSCore,
  dxBarExtItems, dxRibbonGallery, dxSkinChooserGallery, cxLabel, cxTextEdit,
  dxNavBar, dxStatusBar, cxSplitter, cxProgressBar, dxNavBarCollns,
  dxDemoBaseMainForm, dxDemoUtils, dxNavBarBase,
  dxPScxSchedulerLnk, dxPScxPivotGridLnk, Vcl.ActnList, Vcl.ImgList,
  dxCustomDemoFrameUnit, dxGDIPlusClasses, dxLayoutcxEditAdapters, dxLayoutLookAndFeels,
  dxLayoutContainer, dxLayoutControl, dxPScxDBEditorLnks, dxPSTextLnk,
  dxPSdxLCLnk, dxRibbonCustomizationForm, cxCheckBox,
  cxBarEditItem, dxScreenTip, dxCustomHint, cxHint, cxImageList, cxImage, dxRibbonBackstageView, dxNavBarStyles,
  dxLayoutControlAdapters, cxButtons, dxGalleryControl, dxRibbonBackstageViewGalleryControl, dxBevel, cxGroupBox,
  System.Actions, dxCore, dxShellDialogs,
  dxPanel, cxGeometry, dxFramedControl;

type
  TfrmMain = class(TfrmMainBase)
    blbOddEvenStyle: TdxBarLargeButton;
    nvgGridView: TdxNavBarGroup;
    nvgEditing: TdxNavBarGroup;
    nvgFiltering: TdxNavBarGroup;
    nvgSortingGrouping: TdxNavBarGroup;
    nvgPreviewAndView: TdxNavBarGroup;
    nvgDataBinding: TdxNavBarGroup;
    nvgMasterDetail: TdxNavBarGroup;
    nvgTableBandedTable: TdxNavBarGroup;
    nvgSummaries: TdxNavBarGroup;
    nvgNewAndHighlighted: TdxNavBarGroup;
    procedure FormShow(Sender: TObject);
    procedure blbOddEvenStyleClick(Sender: TObject);
  private
    FFrameUpdating: Boolean;
    function GetActiveFrame: TdxCustomDemoFrame;
    procedure TuneWorkAreaWithSkin;
  protected
    function IsExportOptionsAvailable: Boolean; override;
    function IsPrintOptionsAvailable: Boolean; override;

    procedure ActivateDemo(AID: Integer); override;
    procedure CustomizeOptionsRibbonGroups; override;
    procedure CustomizeSetupRibbonGroups; override;
    function IsApplicationButtonVisible: Boolean; virtual;
    function IsCustomPropertiesButtonVisible: TdxBarItemVisible; virtual;
    function IsOptionsVisible: Boolean; virtual;
    function IsScrollbarModeButtonVisible: TdxBarItemVisible; virtual;
    procedure LookAndFeelChanged; override;
    procedure ScaleFactorChanged(M: Integer; D: Integer); override;
    procedure ShowFrame(FrameID: Integer);
    procedure SynchronizeFrameChoosers(FrameID: Integer);
    procedure SwitchDemoCustomPropertiesSetup; override;
    procedure SwitchFullWindowMode; override;
    procedure UpdateApplicationButtonVisibility; override;
    procedure UpdateQATButtonsVisibility; override;

    procedure InitNavBar; override;
    function IsSupportExport: Boolean;
    procedure DoExportToFile(AExportType: TSupportedExportType; ADataOnly: Boolean; const AFileName: string; AHandler: TObject); override;
    function GetActiveReportLink: TBasedxReportLink; override;
    function GetDemoCaption: string; override;
    function GetExportFileName: string; override;
    function GetInspectedObject: TPersistent; override;
    function GetSupportedDataOnlyExportTypes: TSupportedExportTypes; override;

    property ActiveFrame: TdxCustomDemoFrame read GetActiveFrame;
    property ActiveReportLink: TBasedxReportLink read GetActiveReportLink;
    property FullWindowModeOn;
  public
    procedure UpdateInspectedObject; override;
    procedure UpdateColorScheme; override;
  end;

var
  frmMain: TfrmMain;

implementation

uses
  dxFrames, dxSkinInfo, FrameIDs, maindata, uStrsConst, dxOffice11, dxGridFrame, cxGridTableView,
  dxSkinsdxRibbonPainter, dxSkinsLookAndFeelPainter;

{$R *.dfm}

const
  StartHintCoordinateX = 0;
  HintCoordinateXDelta = 1;
  EmptySpaceWidth = 100;

type
  TDummyBarControl = class(TdxBarControl);
  TDummyDockControl = class(TdxDockControl);
  TdxNavBarViewInfoAccess = class(TdxNavBarViewInfo);
  TdxSkinRibbonPainterAccess = class(TdxSkinRibbonPainter);
  TdxSkinLookAndFeelPainterAccess = class(TdxSkinLookAndFeelPainter);

{ TfrmMain }

procedure TfrmMain.FormShow(Sender: TObject);
begin
  inherited;
  ShowFrame(StartFrameID);
  SynchronizeFrameChoosers(StartFrameID);
  SynchronizeFrameNavigation(StartFrameID);
end;

procedure TfrmMain.UpdateInspectedObject;
var
  AGridView: TcxGridTableView;
begin
  inherited UpdateInspectedObject;
  if (ActiveFrame <> nil) and ActiveFrame.CanUseOddEvenStyle then
  begin
    blbOddEvenStyle.Visible := ivAlways;
    AGridView := TcxGridTableView(GetInspectedObject);
    blbOddEvenStyle.Down := dxDefaultBooleanToBoolean(AGridView.Styles.UseOddEvenStyles, False);
  end
  else
  begin
    blbOddEvenStyle.Visible := ivNever;
    blbOddEvenStyle.Down := False;
  end;
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

procedure TfrmMain.blbOddEvenStyleClick(Sender: TObject);
var
  AGridView: TcxGridTableView;
begin
  AGridView := TcxGridTableView(GetInspectedObject);
  AGridView.Styles.UseOddEvenStyles := dxBooleanToDefaultBoolean(blbOddEvenStyle.Down);
end;

procedure TfrmMain.CustomizeOptionsRibbonGroups;
begin
  barOptions.Visible := IsOptionsVisible;
end;

procedure TfrmMain.CustomizeSetupRibbonGroups;
begin
  biFullWindowMode.Visible := ivAlways;
  biCustomProperties.Visible := IsCustomPropertiesButtonVisible;
end;

function TfrmMain.IsApplicationButtonVisible: Boolean;
begin
  Result := (ActiveFrame <> nil) and ActiveFrame.IsApplicationButtonVisible;
end;

function TfrmMain.IsCustomPropertiesButtonVisible: TdxBarItemVisible;
begin
  if (ActiveFrame <> nil) and ActiveFrame.CanToggleSetup then
    Result := ivAlways
  else
    Result := ivNever;
end;

function TfrmMain.IsOptionsVisible: Boolean;
begin
  Result := (ActiveFrame <> nil) and ActiveFrame.IsOptionsVisible;
end;

function TfrmMain.IsScrollbarModeButtonVisible: TdxBarItemVisible;
begin
  if (ActiveFrame <> nil) and ActiveFrame.CanToggleScrollbars then
    Result := ivAlways
  else
    Result := ivNever;
end;

procedure TfrmMain.LookAndFeelChanged;
begin
  inherited LookAndFeelChanged;
  if ActiveFrame <> nil then
    ActiveFrame.LookAndFeelChanged;
end;

procedure TfrmMain.ScaleFactorChanged(M: Integer; D: Integer);
begin
  inherited ScaleFactorChanged(M, D);
  if ActiveFrame <> nil then
    ActiveFrame.ScaleFactorChanged(M, D);
end;

procedure TfrmMain.ShowFrame(FrameID: Integer);
var
  ANavBarDragDropFlags: TdxNavBarDragDropFlags;
begin
  if FFrameUpdating or (ActiveFrame <> nil) and not ActiveFrame.CanDeactivate then
    Exit;
  DisableAlign;
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
  finally
    FFrameUpdating := False;
    EnableAlign;
  end;
  Caption := GetMainFormCaption + ' - ' + GetDemoCaption;
  TuneWorkAreaWithSkin;
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
  if not CheckSelectedLink(nvgNewAndHighlighted) then
    for AGroupIndex := dxFirstNavBarGroupIndex to NavBar.Groups.Count - 1 do
      if (AGroupIndex <> nvgNewAndHighlighted.Index) and CheckSelectedLink(NavBar.Groups[AGroupIndex]) then
        Break;
end;

procedure TfrmMain.TuneWorkAreaWithSkin;

  function GetRibbonLeftAndRightMargins(out ALeftMargin, ARightMargin: Integer): Boolean;
  var
    APainter: TdxSkinRibbonPainterAccess;
  begin
    ALeftMargin := 0;
    ARightMargin := 0;
    Result := Assigned(dxRibbon1) and not (csLoading in ComponentState) and not (csReading in ComponentState) and not (csDestroying in ComponentState);
    if Result and (dxRibbon1.ColorScheme is TdxSkinRibbonPainter) then
    begin
      APainter := TdxSkinRibbonPainterAccess(dxRibbon1.ColorScheme);
      if Assigned(APainter.SkinInfo.RibbonTabPanelHorizontalMargin) then
      begin
        ALeftMargin := APainter.SkinInfo.RibbonTabPanelHorizontalMargin.Left;
        ARightMargin := APainter.SkinInfo.RibbonTabPanelHorizontalMargin.Right;
      end;
    end;
  end;

  function FindGridFrame: TdxGridFrame;
  var
    I: Integer;
  begin
    for I := 0 to plClient.ControlCount - 1 do
    begin
      if plClient.Controls[I] is TdxGridFrame then
      begin
        Result := TdxGridFrame(plClient.Controls[I]);
        Exit;
      end;
    end;
    Result := nil;
  end;

var
  ALeftMargin, ARightMargin: Integer;
  AGridFrame: TdxGridFrame;
  APanelPainter: TdxSkinLookAndFeelPainterAccess;
begin
  if GetRibbonLeftAndRightMargins(ALeftMargin, ARightMargin) then
  begin
    AGridFrame := FindGridFrame;
    if (ALeftMargin > 0) and (ARightMargin > 0) then
    begin
      plClient.Margins.SetBounds(ALeftMargin, (ALeftMargin + ARightMargin) div 2, ARightMargin, 0);
      plClient.AlignWithMargins := True;
      if Assigned(AGridFrame) then
      begin
        AGridFrame.PanelGrid.Frame.Scale := True;
        AGridFrame.PanelGrid.Frame.Borders := [bLeft, bTop, bRight, bBottom];
        AGridFrame.PanelGrid.Frame.Visible := True;
        if not (AGridFrame.PanelSetupTools.LookAndFeel.Painter is TdxSkinLookAndFeelPainter) then
          Assert(False, ClassName);
        APanelPainter := TdxSkinLookAndFeelPainterAccess(AGridFrame.PanelSetupTools.LookAndFeel.Painter);
        AGridFrame.PanelSetupTools.Frame.Color := APanelPainter.SkinInfo.GroupBoxClient.Color;
        AGridFrame.PanelSetupTools.Frame.Thickness := (ALeftMargin + ARightMargin) div 2;
        AGridFrame.gbSetupTools.Style.BorderStyle := ebsUltraFlat;
        AGridFrame.gbSetupTools.Style.Edges := [bLeft, bRight, bBottom];
        AGridFrame.gbSetupTools.Style.TransparentBorder := False;
        AGridFrame.PanelDescription.Frame.Borders := AGridFrame.PanelDescription.Frame.Borders - [bTop];
        AGridFrame.TuneWorkArea(True);
      end;
    end
    else
    begin
      plClient.AlignWithMargins := False;
      if Assigned(AGridFrame) then
      begin
        AGridFrame.PanelGrid.Frame.Visible := False;
        AGridFrame.PanelSetupTools.Frame.Color := clDefault;
        AGridFrame.PanelSetupTools.Frame.Thickness := 1;
        AGridFrame.gbSetupTools.Style.BorderStyle := ebsNone;
        AGridFrame.gbSetupTools.Style.Edges := [];
        AGridFrame.gbSetupTools.Style.TransparentBorder := True;
        AGridFrame.PanelDescription.Frame.Borders := AGridFrame.PanelDescription.Frame.Borders + [bTop];
        AGridFrame.TuneWorkArea(False);
      end;
    end;
  end;
end;

procedure TfrmMain.SwitchDemoCustomPropertiesSetup;
begin
  inherited SwitchDemoCustomPropertiesSetup;
  ActiveFrame.ShowSetup := biCustomProperties.Down;
end;

procedure TfrmMain.SwitchFullWindowMode;
begin
  inherited SwitchFullWindowMode;
  ActiveFrame.SwitchFullWindowMode(FullWindowModeOn);
end;

procedure TfrmMain.UpdateApplicationButtonVisibility;
begin
  dxRibbon1.ApplicationButton.Visible := IsApplicationButtonVisible;
end;

procedure TfrmMain.UpdateColorScheme;
begin
  inherited;
  TuneWorkAreaWithSkin;
end;

procedure TfrmMain.UpdateQATButtonsVisibility;
begin
  bsiScrollbarMode.Visible := IsScrollbarModeButtonVisible;
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

function TfrmMain.IsSupportExport: Boolean;
begin
  Result := (ActiveFrame <> nil) and ActiveFrame.IsSupportExport;
end;

procedure TfrmMain.DoExportToFile(AExportType: TSupportedExportType; ADataOnly: Boolean; const AFileName: string; AHandler: TObject);
begin
  ActiveFrame.DoExport(AExportType, AFileName, AHandler, ADataOnly);
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
  Result := GetCaptionWithoutAmpersand(Result);
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

function TfrmMain.GetSupportedDataOnlyExportTypes: TSupportedExportTypes;
begin
  Result := [exHTML..exExcel, exText];
end;

function TfrmMain.GetActiveFrame: TdxCustomDemoFrame;
begin
  Result := dxFrameManager.ActiveFrame;
end;

initialization
  dxMegaDemoProductIndex := dxGridIndex;

finalization

end.
