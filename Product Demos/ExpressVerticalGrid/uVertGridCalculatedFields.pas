unit uVertGridCalculatedFields;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Menus, Vcl.StdCtrls,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxVertGridFrame, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxLayoutContainer, cxClasses,
  dxLayoutControl, cxStyles, cxEdit, cxInplaceContainer,
  cxVGrid, cxDBVGrid, cxCurrencyEdit, cxSpinEdit,
  cxDataControllerConditionalFormattingRulesManagerDialog,
  dxLayoutcxEditAdapters, cxContainer, cxCheckBox, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, dxLayoutLookAndFeels, cxCalendar, dxLayoutControlAdapters,
  cxButtons, dxGallery, dxGalleryControl, dxScrollbarAnnotations, cxFilter;

type
  TfrmCalculatedFields = class(TVerticalGridFrame)
    VerticalGrid: TcxDBVerticalGrid;
    dxLayoutItem1: TdxLayoutItem;
    vgrCategoryRow1: TcxCategoryRow;
    vgrOrderID: TcxDBEditorRow;
    vgrUnitPrice: TcxDBEditorRow;
    vgrQuantity: TcxDBEditorRow;
    vgrDiscount: TcxDBEditorRow;
    vgrOrderDate: TcxDBEditorRow;
    vgrProductName: TcxDBEditorRow;
    vgrCategoryRow2: TcxCategoryRow;
    vgrCategoryRow3: TcxCategoryRow;
    vgrDiscountAmount: TcxDBEditorRow;
    vgrTotal: TcxDBEditorRow;
    dxLayoutItem2: TdxLayoutItem;
    galColumns: TdxGalleryControl;
    dxGalleryControl1Group1: TdxGalleryControlGroup;
    dxGalleryControl1Group1Item1: TdxGalleryControlItem;
    dxGalleryControl1Group1Item2: TdxGalleryControlItem;
    dxLayoutItem3: TdxLayoutItem;
    btnShowExpressionEditor: TcxButton;
    procedure btnShowExpressionEditorClick(Sender: TObject);
    procedure ValidateExpressionCell(Sender: TcxCustomEditorRowProperties;
      ARecordIndex: Integer; const AValue: Variant; AData: TcxEditValidateInfo);
  protected
    function GetDescription: string; override;
  public
    constructor Create(AOwner: TComponent); override;
  end;

var
  frmCalculatedFields: TfrmCalculatedFields;

implementation

{$R *.dfm}

uses
  maindata, dxFrames, FrameIDs, uStrsConst, dxSpreadSheetTypes, dxSpreadSheetUtils;

type
  TdxGalleryControlOptionsBehaviorAccess = class(TdxGalleryControlOptionsBehavior);


{ TfrmCalculatedFields }

function TfrmCalculatedFields.GetDescription: string;
begin
  Result := sdxFrameVerticalGridCalculatedFieldsDescription;
end;

procedure TfrmCalculatedFields.ValidateExpressionCell(
  Sender: TcxCustomEditorRowProperties; ARecordIndex: Integer;
  const AValue: Variant; AData: TcxEditValidateInfo);
var
  AErrorCode: Integer;
begin
  AErrorCode := VerticalGrid.DataController.ErrorCodes[ARecordIndex, Sender.ItemIndex];
  if AErrorCode > 0 then
  begin
    AData.ErrorType := eetError;
    AData.ErrorText := dxSpreadSheetErrorCodeToString(TdxSpreadSheetFormulaErrorCode(AErrorCode));
  end;
end;

procedure TfrmCalculatedFields.btnShowExpressionEditorClick(Sender: TObject);
begin
  if galColumns.Gallery.Groups[0].Items[0].Checked then
    vgrTotal.Properties.ShowExpressionEditor
  else
    vgrDiscountAmount.Properties.ShowExpressionEditor;
end;

constructor TfrmCalculatedFields.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  TdxGalleryControlOptionsBehaviorAccess(galColumns.OptionsBehavior).ItemHotTrack := False;
end;

initialization
  dxFrameManager.RegisterFrame(VerticalGridCalculatedFieldsFrameID, TfrmCalculatedFields,
    VerticalGridCalculatedFieldsName, -1, NewAndHighlightedGroupIndex, VerticalGridSideBarGroupIndex);

end.
