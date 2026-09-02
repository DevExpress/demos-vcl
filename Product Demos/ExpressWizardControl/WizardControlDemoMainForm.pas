unit WizardControlDemoMainForm;

{$I cxVer.inc}

interface

uses
{$IFDEF DELPHI16}
  System.UITypes,
{$ENDIF}
  dxSkinsForm,
  System.Types, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, cxControls, cxGraphics, cxLookAndFeelPainters, cxLookAndFeels,
  dxCustomWizardControl, dxWizardControl, dxWizardControlForm, Vcl.StdCtrls,
  cxContainer, cxEdit, cxGroupBox, cxRadioGroup, cxCheckBox, cxTextEdit, dxMessageDialog,
  cxMemo, cxLabel, Vcl.ComCtrls, Winapi.ShlObj, cxShellCommon, cxTreeView, cxShellTreeView,
  cxProgressBar, Vcl.ExtCtrls, dxImageSlider, cxGeometry, dxGDIPlusClasses, cxImage,
  cxClasses, Winapi.ShellAPI, cxCheckGroup, cxListView, cxCheckListBox,
  dxBreadcrumbEdit, dxShellBreadcrumbEdit, dxBevel, dxLayoutcxEditAdapters,
  dxLayoutContainer, dxLayoutLookAndFeels, dxLayoutControl,
  dxLayoutControlAdapters, cxCustomListBox;

type
  TInstallMode = (imModify, imRepair, imRemove);

  { TfrmWizardControlDemoMain }

  TfrmWizardControlDemoMain = class(TdxWizardControlForm)
    cbAcceptEULA: TcxCheckBox;
    cbInstallForAllUsers: TcxCheckBox;
    cbInstallHelp: TcxCheckBox;
    clbPlatforms: TcxCheckListBox;
    icFeatures: TcxImageCollection;
    icFeaturesItem1: TcxImageCollectionItem;
    icFeaturesItem2: TcxImageCollectionItem;
    icFeaturesItem3: TcxImageCollectionItem;
    icStepItem: TcxImageCollectionItem;
    icWatermark: TcxImageCollection;
    icWatermarkItem: TcxImageCollectionItem;
    isFeatures: TdxImageSlider;
    LookAndFeelController: TcxLookAndFeelController;
    mmEULA: TcxMemo;
    pbInstallationProgress: TcxProgressBar;
    rbModify: TcxRadioButton;
    rbRemove: TcxRadioButton;
    rbRepair: TcxRadioButton;
    sbcPath: TdxShellBreadcrumbEdit;
    stvTree: TcxShellTreeView;
    tmFeaturesSlider: TTimer;
    tmProgress: TTimer;
    wcMain: TdxWizardControl;
    wcpActionPage: TdxWizardControlPage;
    wcpEULAPage: TdxWizardControlPage;
    wcpFinishPage: TdxWizardControlPage;
    wcpInProgressPage: TdxWizardControlPage;
    wcpPathPage: TdxWizardControlPage;
    wcpReadyToInstall: TdxWizardControlPage;
    wcpSelectionPage: TdxWizardControlPage;
    wcpWelcomePage: TdxWizardControlPage;
    lcEULAPageGroup_Root: TdxLayoutGroup;
    lcEULAPage: TdxLayoutControl;
    lcEULAPageItem1: TdxLayoutItem;
    lcEULAPageItem2: TdxLayoutItem;
    dxLayoutLookAndFeelList: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel: TdxLayoutStandardLookAndFeel;
    lcActionPageGroup_Root: TdxLayoutGroup;
    lcActionPage: TdxLayoutControl;
    lcSelectionPageGroup_Root: TdxLayoutGroup;
    lcSelectionPage: TdxLayoutControl;
    lcSelectionPageItem1: TdxLayoutItem;
    lcSelectionPageItem2: TdxLayoutItem;
    lcSelectionPageItem3: TdxLayoutItem;
    lcPathPageGroup_Root: TdxLayoutGroup;
    lcPathPage: TdxLayoutControl;
    lcPathPageItem1: TdxLayoutItem;
    lcPathPageItem2: TdxLayoutItem;
    lcInProgressPageGroup_Root: TdxLayoutGroup;
    lcInProgressPage: TdxLayoutControl;
    lcFinishPageGroup_Root: TdxLayoutGroup;
    lcFinishPage: TdxLayoutControl;
    lcActionPageItem1: TdxLayoutItem;
    lcActionPageItem2: TdxLayoutItem;
    lcActionPageItem3: TdxLayoutItem;
    lcInProgressPageItem1: TdxLayoutItem;
    lcInProgressPageItem3: TdxLayoutItem;
    lcReadyToInstallPageGroup_Root: TdxLayoutGroup;
    lcReadyToInstallPage: TdxLayoutControl;
    lbModifyDescription: TcxLabel;
    lcActionPageItem4: TdxLayoutItem;
    lbRepairDescription: TcxLabel;
    lcActionPageItem5: TdxLayoutItem;
    lcActionPageItem6: TdxLayoutItem;
    lbRemoveDescription: TcxLabel;
    lcReadyToInstallPageItem1: TdxLayoutItem;
    lbActionTitle: TcxLabel;
    lcReadyToInstallPageItem2: TdxLayoutItem;
    lbActionHint: TcxLabel;
    lcReadyToInstallPageItem3: TdxLayoutItem;
    lbActionCancel: TcxLabel;
    lcReadyToInstallPageItem4: TdxLayoutItem;
    lbActionBack: TcxLabel;
    lcInProgressPageItem2: TdxLayoutItem;
    lbInstallingItem: TcxLabel;
    lcFinishPageItem1: TdxLayoutItem;
    lbFinishText: TcxLabel;
    lcWelcomePageGroup_Root: TdxLayoutGroup;
    lcWelcomePage: TdxLayoutControl;
    lcWelcomePageItem1: TdxLayoutItem;
    lbWelcomeText: TcxLabel;
    lcWelcomePageItem2: TdxLayoutItem;
    lbDemoDescription: TcxLabel;
    lcWelcomePageItem3: TdxLayoutItem;
    lbProcessNext: TcxLabel;
    dxLayoutCxLookAndFeel: TdxLayoutCxLookAndFeel;
    lgFinishPage: TdxLayoutGroup;
    procedure cbAcceptEULAClick(Sender: TObject);
    procedure clbPlatformsClickCheck(Sender: TObject; AIndex: Integer; APrevState, ANewState: TcxCheckBoxState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure rbModifyClick(Sender: TObject);
    procedure tmFeaturesSliderTimer(Sender: TObject);
    procedure tmProgressTimer(Sender: TObject);
    procedure wcMainButtonClick(Sender: TObject; AKind: TdxWizardControlButtonKind; var AHandled: Boolean);
    procedure wcMainPageChanging(Sender: TObject; ANewPage: TdxWizardControlCustomPage; var AAllowChange: Boolean);
    procedure wcMainButtons0Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FInstallingItems: TStringList;
    FSkinController: TdxSkinController;
    FSilentClose: Boolean;
    function GetInstallMode: TInstallMode;
    function GetIsPlatformsSelected: Boolean;
    procedure PrepareEULAPage;
    procedure PrepareFinishPage;
    procedure PrepareInProgressPage;
    procedure PreparePageWatermark(ACurPage: TdxWizardControlCustomPage);
    procedure PreparePathPage;
    procedure PrepareReadyToInstallPage;
    procedure PrepareSelectionPage;
    procedure UpdateButtonsState;
  protected
    property InstallingItems: TStringList read FInstallingItems;
    property InstallMode: TInstallMode read GetInstallMode;
    property IsPlatformsSelected: Boolean read GetIsPlatformsSelected;
  end;

var
  frmWizardControlDemoMain: TfrmWizardControlDemoMain;

implementation

{$R *.dfm}
{$R WizardControlDemoMainForm.res}

uses
  WizardControlDemoSetupForm, dxAboutDemo, dxDPIAwareUtils, dxDemoUtils, dxCoreGraphics;

const
  sdxActionInstall = 'Click Install to begin the installation.';
  sdxActionRemove = 'Click Remove to remove DevExpress VCL Products from your computer.';
  sdxActionRemoveHint = 'After removal, these products will no longer be available for use.';
  sdxActionRepair = 'Click Repair to fix any installed files, shortcuts and registry entries.';
  sdxActionRepairHint = 'This option also recompiles and re-registers all the installed products in the IDE(s).';
  sdxDeletingHelp = 'Deleting help files...';
  sdxDeletingItem = 'Deleting files for %s...';
  sdxEULAPath = 'EULA.txt';
  sdxExitMessage = 'Do you want to exit WizardControl demo?';
  sdxInstallButtonCaption = '&Install';
  sdxInstallingHelp = 'Installing help files...';
  sdxInstallingItem = 'Installing files for %s...';
  sdxNextButtonCaption = '&Next';
  sdxReadyToInstall = 'Ready to Install';
  sdxReadyToRemove = 'Ready to Uninstall';
  sdxReadyToRepair = 'Ready to Repair';
  sdxRemoveButtonCaption = '&Remove';
  sdxRepairButtonCaption = '&Repair';

type
  TcxRadioButtonAccess = class(TcxRadioButton);

function GetFormIcon(AForm: TForm): TcxBitmap32;
var
{$IFNDEF DELPHI9}
  ABitmapInfo: tagBITMAP;
  AIconInfo: TIconInfo;
{$ENDIF}
  AIcon: TIcon;
  AIconSize: TSize;
begin
  AIcon := TIcon.Create;
  try
    AIcon.Handle := AForm.Perform(WM_GETICON, ICON_SMALL2, 0);
    AIconSize := cxSize(AIcon.Width, AIcon.Height);
  {$IFNDEF DELPHI9}
    if GetIconInfo(AIcon.Handle, AIconInfo) then
    try
      if GetObject(AIconInfo.hbmColor, SizeOf(ABitmapInfo), @ABitmapInfo) <> 0 then
        AIconSize := cxSize(ABitmapInfo.bmWidth, ABitmapInfo.bmHeight)
    finally
      DeleteObject(AIconInfo.hbmMask);
      DeleteObject(AIconInfo.hbmColor);
    end;
  {$ENDIF}
    Result := TcxBitmap32.CreateSize(AIconSize.cx, AIconSize.cy, True);
    Result.Canvas.Draw(0, 0, AIcon);
  finally
    AIcon.Free;
  end;
end;

{ TfrmWizardControlDemoMain }

function TfrmWizardControlDemoMain.GetInstallMode: TInstallMode;
begin
  if rbModify.Checked then
    Result := imModify
  else
    if rbRemove.Checked then
      Result := imRemove
    else
      Result := imRepair;
end;

function TfrmWizardControlDemoMain.GetIsPlatformsSelected: Boolean;
var
  I: Integer;
begin
  Result := False;
  for I := 0 to clbPlatforms.Items.Count - 1 do
    Result := Result or clbPlatforms.Items[I].Checked;
end;

procedure TfrmWizardControlDemoMain.PrepareEULAPage;
begin
  wcMain.Buttons.Back.Enabled := False;
  wcMain.Buttons.Next.Enabled := cbAcceptEULA.Checked;
end;

procedure TfrmWizardControlDemoMain.PrepareFinishPage;
begin
  wcMain.Buttons.Back.Enabled := False;
  wcMain.Buttons.Cancel.Enabled := False;
end;

procedure TfrmWizardControlDemoMain.PrepareInProgressPage;

  procedure PopulateInstallingItems;
  var
    AItem: TcxCheckListBoxItem;
    I: Integer;
  begin
    InstallingItems.Add(sdxDeletingHelp);
    for I := 0 to clbPlatforms.Items.Count - 1 do
      InstallingItems.Add(Format(sdxDeletingItem, [clbPlatforms.Items[I].Text]));

    if InstallMode <> imRemove then
    begin
      for I := 0 to clbPlatforms.Items.Count - 1 do
      begin
        AItem := clbPlatforms.Items[I];
        if AItem.Checked or (InstallMode = imRepair) then
          InstallingItems.Add(Format(sdxInstallingItem, [AItem.Text]));
      end;

      if cbInstallHelp.Checked or (InstallMode = imRepair) then
        InstallingItems.Add(sdxInstallingHelp);
    end;
  end;

begin
  PopulateInstallingItems;
  wcMain.Buttons.Back.Enabled := False;
  wcMain.Buttons.Next.Enabled := False;
  wcMain.Buttons.Cancel.Enabled := False;
  tmFeaturesSlider.Enabled := True;
  tmProgress.Enabled := True;
end;

procedure TfrmWizardControlDemoMain.PreparePageWatermark(ACurPage: TdxWizardControlCustomPage);

  procedure PopulateSteps(ASteps: TList);
  var
    I: Integer;
  begin
    for I := 0 to wcMain.PageCount - 1 do
      if wcMain.Pages[I].PageVisible then
        ASteps.Add(wcMain.Pages[I]);
  end;

  procedure DrawSteps(ASteps: TList; ACanvas: TcxCanvas; const R: TRect);
  const
    Indent = 10;
  var
    APage: TdxWizardControlPage;
    ACurStepHeight: Integer;
    ARegularStepHeight: Integer;
    ARect: TRect;
    I: Integer;
  begin
    cxResetFont(ACanvas.Font, dxDefaultScaleFactor);
    ACurStepHeight := cxRectHeight(icStepItem.ClientRect);
    ARegularStepHeight := cxTextHeight(ACanvas.Font);
    ARect := cxRectInflate(R, -Indent, -Indent * 2, 0, 0);
    for I := 0 to ASteps.Count - 1 do
    begin
      APage := TdxWizardControlPage(ASteps.Items[I]);
      if APage = ACurPage then
      begin
        ARect := cxRectSetHeight(ARect, ACurStepHeight);
        ACanvas.Font.Color := clDefault;
        ACanvas.Font.Style := [fsBold];
        ACanvas.Draw(0, ARect.Top, icStepItem.Picture.Graphic);
      end
      else
      begin
        ARect := cxRectSetHeight(ARect, ARegularStepHeight);
        ACanvas.Font.Color := clcxLightGray;
        ACanvas.Font.Style := [];
      end;
      cxDrawText(ACanvas, APage.Header.Title, ARect, cxAlignCenter);
      ARect := cxRectSetTop(ARect, ARect.Bottom + Indent);
    end;
  end;

var
  ASteps: TList;
  AWatermark: TcxBitmap;
begin
  AWatermark := TcxBitmap.CreateSize(icWatermarkItem.ClientRect);
  try
    AWatermark.cxCanvas.Draw(0, 0, icWatermarkItem.Picture.Graphic);
    ASteps := TList.Create;
    try
      PopulateSteps(ASteps);
      DrawSteps(ASteps, AWatermark.cxCanvas, AWatermark.ClientRect);
    finally
      ASteps.Free;
    end;
    ACurPage.Watermark.BackgroundImage.Image.SetBitmap(AWatermark);
    ACurPage.Watermark.BackgroundImage.Margins.Bottom := AWatermark.Height - 10;
  finally
    AWatermark.Free;
  end;
end;

procedure TfrmWizardControlDemoMain.PreparePathPage;
var
  ABuffer: array[0..MAX_PATH] of Char;
begin
  FillChar(ABuffer[0], SizeOf(Char) * Length(ABuffer), 0);
  if SHGetSpecialFolderPath(Handle, @ABuffer[0], CSIDL_COMMON_PROGRAMS, False) then
    stvTree.AbsolutePath := ABuffer;
end;

procedure TfrmWizardControlDemoMain.PrepareReadyToInstallPage;
const
  ActionHintMap: array[TInstallMode] of string =
    ('', sdxActionRepairHint, sdxActionRemoveHint);
  ActionTitleMap: array[TInstallMode] of string =
    (sdxActionInstall, sdxActionRepair, sdxActionRemove);
  NextButtonCaptionMap: array[TInstallMode] of string =
    (sdxInstallButtonCaption, sdxRepairButtonCaption, sdxRemoveButtonCaption);
begin
  wcMain.Buttons.Next.Caption := NextButtonCaptionMap[InstallMode];
  lbActionTitle.Caption := ActionTitleMap[InstallMode];
  lbActionHint.Caption := ActionHintMap[InstallMode];
  lbActionHint.Visible := lbActionHint.Caption <> '';
end;

procedure TfrmWizardControlDemoMain.PrepareSelectionPage;
var
  AIsPlatformsSelected: Boolean;
begin
  AIsPlatformsSelected := IsPlatformsSelected;
  wcMain.Buttons.Next.Enabled := AIsPlatformsSelected;
  cbInstallForAllUsers.Enabled := AIsPlatformsSelected;
  cbInstallHelp.Enabled := AIsPlatformsSelected;
end;

procedure TfrmWizardControlDemoMain.UpdateButtonsState;
begin
  wcMain.Buttons.Back.Enabled := True;
  wcMain.Buttons.Next.Enabled := True;
  wcMain.Buttons.Cancel.Enabled := True;
end;

procedure TfrmWizardControlDemoMain.cbAcceptEULAClick(Sender: TObject);
begin
  wcMain.Buttons.Next.Enabled := cbAcceptEULA.Checked;
end;

procedure TfrmWizardControlDemoMain.clbPlatformsClickCheck(
  Sender: TObject; AIndex: Integer; APrevState, ANewState: TcxCheckBoxState);
begin
  PrepareSelectionPage;
end;

procedure TfrmWizardControlDemoMain.tmFeaturesSliderTimer(Sender: TObject);
begin
  if isFeatures.CanGoToNextImage then
    isFeatures.GoToNextImage
  else
    isFeatures.GoToImage(0);
end;
 
procedure TfrmWizardControlDemoMain.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
var
  AResult: Integer;
begin
  if FSilentClose then
    Exit;
  if wcMain.ActivePage <> wcpFinishPage then
  begin
    AResult := dxMessageDlg(sdxExitMessage, mtConfirmation, mbYesNo);
    if (AResult = mrNo) or (AResult = mrCancel) then
      CanClose := False;
  end;
end;

procedure TfrmWizardControlDemoMain.FormCreate(Sender: TObject);

  procedure SetupAeroStyleFormIcon;
  var
    ABitmap: TcxBitmap32;
  begin
    ABitmap := GetFormIcon(Self);
    try
      wcMain.OptionsViewStyleAero.Title.Glyph.Assign(ABitmap);
      Icon.Handle := LoadIcon(HInstance, 'TRANSPARENTICON');
    finally
      ABitmap.Free;
    end;
  end;

  procedure SetupAeroStyle;
  begin
    wcMain.OptionsViewStyleAero.Title.Text := Caption;
    Caption := '';
    SetupAeroStyleFormIcon;
  end;

  procedure SetupLayoutLookAndFeel(ALayoutLookAndFeel: TdxCustomLayoutLookAndFeel);
  begin
    lcWelcomePageGroup_Root.LayoutLookAndFeel := ALayoutLookAndFeel;
    lcEULAPageGroup_Root.LayoutLookAndFeel := ALayoutLookAndFeel;
    lcActionPageGroup_Root.LayoutLookAndFeel := ALayoutLookAndFeel;
    lcSelectionPageGroup_Root.LayoutLookAndFeel := ALayoutLookAndFeel;
    lcPathPageGroup_Root.LayoutLookAndFeel := ALayoutLookAndFeel;
    lcReadyToInstallPageGroup_Root.LayoutLookAndFeel := ALayoutLookAndFeel;
    lcInProgressPageGroup_Root.LayoutLookAndFeel := ALayoutLookAndFeel;
    lcFinishPageGroup_Root.LayoutLookAndFeel := ALayoutLookAndFeel;
  end;

var
  ASetupSettngsForm: TdxWizardControlDemoSetupForm;
begin
  FInstallingItems := TStringList.Create;
  mmEULA.Lines.LoadFromFile(Application.GetNamePath + sdxEULAPath);

  ASetupSettngsForm := TdxWizardControlDemoSetupForm.Create(nil);
  try
    if ASetupSettngsForm.ShowModal = mrOk then
    begin
      wcMain.OptionsAnimate.TransitionEffect := ASetupSettngsForm.TransitionEffect;
      wcMain.ViewStyle := ASetupSettngsForm.ViewStyle;
      wcMain.OptionsViewStyleAero.EnableTitleAero := not ASetupSettngsForm.SkinForm;
      if wcMain.ViewStyle = wcvsAero then
        SetupAeroStyle;
      if ASetupSettngsForm.dxSetupFormLayoutControlGroup_Root.LayoutLookAndFeel is TdxLayoutCxLookAndFeel then
        SetupLayoutLookAndFeel(dxLayoutCxLookAndFeel)
      else
        SetupLayoutLookAndFeel(dxLayoutStandardLookAndFeel);
      if ASetupSettngsForm.SkinForm then
        FSkinController := TdxSkinController.Create(Self);
    end
    else
      FSilentClose := True;
  finally
    ASetupSettngsForm.Free;
  end;
end;

procedure TfrmWizardControlDemoMain.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FInstallingItems);
end;

procedure TfrmWizardControlDemoMain.FormShow(Sender: TObject);
begin
  if FSilentClose then
    Close;
end;

procedure TfrmWizardControlDemoMain.tmProgressTimer(Sender: TObject);
begin
  if InstallingItems.Count > 0 then
  begin
    lbInstallingItem.Caption := InstallingItems.Strings[
      Trunc(InstallingItems.Count * (pbInstallationProgress.Position / 100))];
    pbInstallationProgress.Position := pbInstallationProgress.Position + 1;
    if pbInstallationProgress.Position = 100 then
    begin
      tmFeaturesSlider.Enabled := False;
      tmProgress.Enabled := False;
      wcMain.GoToNextPage;
    end;
  end;
end;

procedure TfrmWizardControlDemoMain.rbModifyClick(Sender: TObject);
const
  ReadyToPageNameMap: array[TInstallMode] of string =
    (sdxReadyToInstall, sdxReadyToRepair, sdxReadyToRemove);
begin
  wcpSelectionPage.PageVisible := (Sender as TcxRadioButton).Tag = 0;
  wcpPathPage.PageVisible := (Sender as TcxRadioButton).Tag = 0;
  wcpReadyToInstall.Header.Title := ReadyToPageNameMap[InstallMode];
  PreparePageWatermark(wcMain.ActivePage);
end;

procedure TfrmWizardControlDemoMain.wcMainButtonClick(Sender: TObject;
  AKind: TdxWizardControlButtonKind; var AHandled: Boolean);
begin
  case AKind of
    wcbkHelp:
      dxShowAboutForm;
    wcbkFinish, wcbkCancel:
      Close;
  end;
end;

procedure TfrmWizardControlDemoMain.wcMainPageChanging(
  Sender: TObject; ANewPage: TdxWizardControlCustomPage; var AAllowChange: Boolean);
begin
  UpdateButtonsState;
  PreparePageWatermark(ANewPage);
  wcMain.Buttons.CustomButtons.Buttons[0].Visible := ANewPage = wcpEULAPage;
  if ANewPage = wcpEULAPage then
    PrepareEULAPage;
  if ANewPage = wcpSelectionPage then
    PrepareSelectionPage;
  if ANewPage = wcpReadyToInstall then
    PrepareReadyToInstallPage;
  if ANewPage = wcpInProgressPage then
    PrepareInProgressPage;
  if ANewPage = wcpFinishPage then
    PrepareFinishPage;
  if ANewPage = wcpPathPage then
    PreparePathPage;
  if wcMain.ActivePage = wcpReadyToInstall then
    wcMain.Buttons.Next.Caption := sdxNextButtonCaption;
end;

procedure TfrmWizardControlDemoMain.wcMainButtons0Click(Sender: TObject);
begin
  dxMessageDlg('Clicked!', TMsgDlgType.mtInformation, [mbOK]);
end;

initialization
  dxMegaDemoProductIndex := dxWizardControlIndex;
  TdxVisualRefinements.LightBorders := True;
end.
