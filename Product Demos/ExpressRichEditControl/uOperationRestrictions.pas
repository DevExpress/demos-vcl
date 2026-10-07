unit uOperationRestrictions;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxRichEditFrame, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxCore, dxCoreClasses,
  dxGDIPlusAPI, dxGDIPlusClasses, dxRichEdit.Types, dxRichEdit.Options,
  dxRichEdit.Control, dxHttpIndyRequest, dxBarBuiltInMenu,
  dxRichEdit.Platform.Win.Control, cxLabel, Vcl.ExtCtrls, cxCheckBox, cxGroupBox,
  cxTextEdit, cxMaskEdit, cxSpinEdit, cxFontNameComboBox, cxDropDownEdit,
  dxRichEdit.Actions, dxActions, Vcl.ActnList, dxBarExtItems, dxRibbonGallery,
  dxBar, cxBarEditItem, cxClasses, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPSRichEditControlLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxPSCore, dxSkinsdxBarPainter, dxRichEdit.Utils.Types, dxRichEdit.NativeApi,
  dxRichEdit.Control.SpellChecker, dxRichEdit.Dialogs.EventArgs,
  dxLayoutLookAndFeels, dxRichEdit.Control.Core, dxLayoutContainer,
  dxLayoutControl, dxLayoutcxEditAdapters;

type
  TfrmRichEditOperationRestrictions = class(TfrmRichEditFrame)
    BarManager: TdxBarManager;
    barPrint: TdxBar;
    bmbHomeClipboard: TdxBar;
    bmbFileCommon: TdxBar;
    bmbViewZoom: TdxBar;
    biPrintPreview: TdxBarButton;
    biPrint: TdxBarButton;
    biPageSetup: TdxBarButton;
    bbNew: TdxBarButton;
    bbOpen: TdxBarButton;
    bbSave: TdxBarButton;
    bbPaste: TdxBarButton;
    bbCut: TdxBarButton;
    bbCopy: TdxBarButton;
    bbSaveAs: TdxBarButton;
    bbZoomOut: TdxBarButton;
    bbZoomIn: TdxBarButton;
    biHintContainer: TdxBarControlContainerItem;
    ActionList: TActionList;
    actPrint: TAction;
    actPrintPreview: TAction;
    actPageSetup: TAction;
    acCut: TdxRichEditControlCutSelection;
    acCopy: TdxRichEditControlCopySelection;
    acPaste: TdxRichEditControlPasteSelection;
    acNewDocument: TdxRichEditControlNewDocument;
    acOpenDocument: TdxRichEditControlLoadDocument;
    acSave: TdxRichEditControlSaveDocument;
    acSaveAs: TdxRichEditControlSaveDocumentAs;
    acZoomIn: TdxRichEditControlZoomIn;
    acZoomOut: TdxRichEditControlZoomOut;
    Printer: TdxComponentPrinter;
    PSEngine: TdxPSEngineController;
    RichEditLink: TdxRichEditControlReportLink;
    seMinZoomFactor: TcxSpinEdit;
    seMaxZoomFactor: TcxSpinEdit;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    lgClipboard: TdxLayoutGroup;
    lgCommon: TdxLayoutGroup;
    lgZoom: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    cbCut: TdxLayoutCheckBoxItem;
    cbCopy: TdxLayoutCheckBoxItem;
    cbPaste: TdxLayoutCheckBoxItem;
    cbDrag: TdxLayoutCheckBoxItem;
    cbDrop: TdxLayoutCheckBoxItem;
    cbSave: TdxLayoutCheckBoxItem;
    cbSaveAs: TdxLayoutCheckBoxItem;
    cbPrinting: TdxLayoutCheckBoxItem;
    cbCreateNew: TdxLayoutCheckBoxItem;
    cbOpen: TdxLayoutCheckBoxItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    cbZoom: TdxLayoutCheckBoxItem;
    lbMinZoomFactor: TdxLayoutItem;
    lbMaxZoomFactor: TdxLayoutItem;
    cbReadOnly: TdxLayoutCheckBoxItem;
    cbShowPopupMenu: TdxLayoutCheckBoxItem;
    cbHideDisabledBarItems: TdxLayoutCheckBoxItem;
    dxLayoutGroup1: TdxLayoutGroup;
    procedure seMinZoomFactorPropertiesEditValueChanged(Sender: TObject);
    procedure seMaxZoomFactorPropertiesEditValueChanged(Sender: TObject);
    procedure OptionsChanged(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actPrintPreviewExecute(Sender: TObject);
    procedure actPageSetupExecute(Sender: TObject);
    procedure ReadOnlyChanged(Sender: TObject);
    procedure ShowPopupMenuChanged(Sender: TObject);
  private
    function GetOptionValue(AValue: Boolean): TdxDocumentCapability;
    procedure UpdateCopy;
    procedure UpdateCreateNew;
    procedure UpdateCut;
    procedure UpdateDrag;
    procedure UpdateDrop;
    procedure UpdateOpen;
    procedure UpdateOptions;
    procedure UpdatePaste;
    procedure UpdatePrinting;
    procedure UpdateSave;
    procedure UpdateSaveAs;
    procedure UpdateZoom;
  protected
    function GetDescription: string; override;
    function GetStartDocumentName: string; override;
  end;

var
  frmRichEditOperationRestrictions: TfrmRichEditOperationRestrictions;

implementation

{$R *.dfm}

uses
  dxFrames, FrameIDs, uStrsConst,
  dxRichEdit.Options.Core;

{ TfrmRichEditOperationRestrictions }

function TfrmRichEditOperationRestrictions.GetStartDocumentName: string;
begin
  Result := sdxOperationRestrictionsStartDocumentName;
end;

procedure TfrmRichEditOperationRestrictions.seMaxZoomFactorPropertiesEditValueChanged(
  Sender: TObject);
begin
  if seMaxZoomFactor.Value < seMinZoomFactor.Value then
    seMaxZoomFactor.Value := seMinZoomFactor.Value;
  RichEditControl.Options.Behavior.MaxZoomFactor := seMaxZoomFactor.Value;
end;

procedure TfrmRichEditOperationRestrictions.seMinZoomFactorPropertiesEditValueChanged(
  Sender: TObject);
begin
  if seMinZoomFactor.Value > seMaxZoomFactor.Value then
    seMinZoomFactor.Value := seMaxZoomFactor.Value;
  RichEditControl.Options.Behavior.MinZoomFactor := seMinZoomFactor.Value;
end;

procedure TfrmRichEditOperationRestrictions.ShowPopupMenuChanged(
  Sender: TObject);
begin
  RichEditControl.Options.Behavior.ShowPopupMenu := GetOptionValue(cbShowPopupMenu.Checked);
end;

procedure TfrmRichEditOperationRestrictions.OptionsChanged(Sender: TObject);
begin
  UpdateOptions;
end;

procedure TfrmRichEditOperationRestrictions.actPageSetupExecute(
  Sender: TObject);
begin
  RichEditLink.PageSetup;
end;

procedure TfrmRichEditOperationRestrictions.actPrintExecute(Sender: TObject);
begin
  RichEditLink.Print(True, nil);
end;

procedure TfrmRichEditOperationRestrictions.actPrintPreviewExecute(
  Sender: TObject);
begin
  RichEditLink.Preview;
end;

procedure TfrmRichEditOperationRestrictions.ReadOnlyChanged(
  Sender: TObject);
begin
  RichEditControl.ReadOnly := cbReadOnly.Checked;
end;

function TfrmRichEditOperationRestrictions.GetDescription: string;
begin
  Result := sdxFrameOperationRestrictions;
end;

function TfrmRichEditOperationRestrictions.GetOptionValue(AValue: Boolean): TdxDocumentCapability;
begin
  if AValue then
    Result := TdxDocumentCapability.Default
  else
    if cbHideDisabledBarItems.Checked then
      Result := TdxDocumentCapability.Hidden
    else
      Result := TdxDocumentCapability.Disabled;
end;

procedure TfrmRichEditOperationRestrictions.UpdateCopy;
begin
  RichEditControl.Options.Behavior.Copy := GetOptionValue(cbCopy.Checked);
end;

procedure TfrmRichEditOperationRestrictions.UpdateCreateNew;
begin
  RichEditControl.Options.Behavior.CreateNew := GetOptionValue(cbCreateNew.Checked);
end;

procedure TfrmRichEditOperationRestrictions.UpdateCut;
begin
  RichEditControl.Options.Behavior.Cut := GetOptionValue(cbCut.Checked);
end;

procedure TfrmRichEditOperationRestrictions.UpdateDrag;
begin
  RichEditControl.Options.Behavior.Drag := GetOptionValue(cbDrag.Checked);
end;

procedure TfrmRichEditOperationRestrictions.UpdateDrop;
begin
  RichEditControl.Options.Behavior.Drop := GetOptionValue(cbDrop.Checked);
end;

procedure TfrmRichEditOperationRestrictions.UpdateOpen;
begin
  RichEditControl.Options.Behavior.Open := GetOptionValue(cbOpen.Checked);
end;

procedure TfrmRichEditOperationRestrictions.UpdateOptions;
begin
  UpdateCut;
  UpdateCopy;
  UpdatePaste;
  UpdateDrag;
  UpdateDrop;
  UpdateSave;
  UpdateSaveAs;
  UpdatePrinting;
  UpdateCreateNew;
  UpdateOpen;
  UpdateZoom;
end;

procedure TfrmRichEditOperationRestrictions.UpdatePaste;
begin
  RichEditControl.Options.Behavior.Paste := GetOptionValue(cbPaste.Checked);
end;

procedure TfrmRichEditOperationRestrictions.UpdatePrinting;
begin
  RichEditControl.Options.Behavior.Printing := GetOptionValue(cbPrinting.Checked);
  actPrint.Enabled := cbPrinting.Checked;
  actPrint.Visible := cbPrinting.Checked or not cbHideDisabledBarItems.Checked;
  actPrintPreview.Enabled := actPrint.Enabled;
  actPrintPreview.Visible := actPrint.Visible;
  actPageSetup.Enabled := actPrint.Enabled;
  actPageSetup.Visible := actPrint.Visible;
end;

procedure TfrmRichEditOperationRestrictions.UpdateSave;
begin
  RichEditControl.Options.Behavior.Save := GetOptionValue(cbSave.Checked);
end;

procedure TfrmRichEditOperationRestrictions.UpdateSaveAs;
begin
  RichEditControl.Options.Behavior.SaveAs := GetOptionValue(cbSaveAs.Checked);
end;

procedure TfrmRichEditOperationRestrictions.UpdateZoom;
begin
  RichEditControl.Options.Behavior.Zooming := GetOptionValue(cbZoom.Checked);
  seMinZoomFactor.Enabled := cbZoom.Checked;
  seMaxZoomFactor.Enabled := cbZoom.Checked;
  lbMinZoomFactor.Enabled := cbZoom.Checked;
  lbMaxZoomFactor.Enabled := cbZoom.Checked;
end;

initialization
  dxFrameManager.RegisterFrame(RichEditOperationRestrictionsID, TfrmRichEditOperationRestrictions,
    RichEditOperationRestrictionsFrameName,  RestrictionsGroupIndex, -1, -1);

finalization

end.
