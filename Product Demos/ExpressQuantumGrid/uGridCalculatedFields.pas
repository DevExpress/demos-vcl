unit uGridCalculatedFields;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, dxGridFrame, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxLayoutContainer,
  System.Actions, Vcl.ActnList, cxClasses, cxGrid,
  dxLayoutControl, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, dxDateRanges, Data.DB, cxDBData, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridLevel, maindata, cxCurrencyEdit, cxSpinEdit,
  cxDataControllerConditionalFormattingRulesManagerDialog,
  dxLayoutControlAdapters, Vcl.StdCtrls, cxRadioGroup, dxLayoutcxEditAdapters,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCheckBox,
  dxLayoutLookAndFeels, cxGridDBTableView, cxButtons, dxGallery,
  dxGalleryControl, dxScrollbarAnnotations, cxGroupBox, dxPanel, cxGeometry,
  dxFramedControl;

type
  { TfrmGridCalculatedFields }

  TfrmGridCalculatedFields = class(TdxGridFrame)
    GridLevel1: TcxGridLevel;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    acFilteredItemsList: TAction;
    tvOrders: TcxGridDBTableView;
    tvOrdersOrderID: TcxGridDBColumn;
    tvOrdersUnitPrice: TcxGridDBColumn;
    tvOrdersQuantity: TcxGridDBColumn;
    tvOrdersDiscount: TcxGridDBColumn;
    tvOrdersProductName: TcxGridDBColumn;
    tvOrdersDiscountAmount: TcxGridDBColumn;
    tvOrdersTotal: TcxGridDBColumn;
    btnShowExpressionEditor: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    galColumns: TdxGalleryControl;
    dxLayoutItem3: TdxLayoutItem;
    dxGalleryControl1Group1: TdxGalleryControlGroup;
    dxGalleryControl1Group1Item1: TdxGalleryControlItem;
    dxGalleryControl1Group1Item2: TdxGalleryControlItem;
    procedure btnShowExpressionEditorClick(Sender: TObject);
    procedure ValidateExpressionColumn(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; const AValue: Variant;
      AData: TcxEditValidateInfo);
  protected
    function GetDescription: string; override;
    function NeedSetup: Boolean; override;
  public
    constructor Create(AOwner: TComponent); override;
  end;

var
  frmGridCalculatedFields: TfrmGridCalculatedFields;

implementation

{$R *.dfm}

uses
  dxFrames, FrameIDs, uStrsConst, dxSpreadSheetTypes, dxSpreadSheetUtils, dxFilterValueContainer;

{ TfrmGridCalculatedFields }

constructor TfrmGridCalculatedFields.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  DoFullExpand;
end;

function TfrmGridCalculatedFields.GetDescription: string;
begin
  Result := sdxFrameCalculatedFieldsDescription;
end;

function TfrmGridCalculatedFields.NeedSetup: Boolean;
begin
  Result := True;
end;

procedure TfrmGridCalculatedFields.ValidateExpressionColumn(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  const AValue: Variant; AData: TcxEditValidateInfo);
var
  AErrorCode: Integer;
begin
  if ARecord.IsData then
  begin
    AErrorCode := Sender.GridView.DataController.ErrorCodes[ARecord.RecordIndex, Sender.Index];
    if AErrorCode > 0 then
    begin
      AData.ErrorType := eetError;
      AData.ErrorText := dxSpreadSheetErrorCodeToString(TdxSpreadSheetFormulaErrorCode(AErrorCode));
    end;
  end;
end;

procedure TfrmGridCalculatedFields.btnShowExpressionEditorClick(Sender: TObject);
begin
  if galColumns.Gallery.Groups[0].Items[0].Checked then
    tvOrdersTotal.ShowExpressionEditor
  else
    tvOrdersDiscountAmount.ShowExpressionEditor;
end;

initialization
  dxFrameManager.RegisterFrame(GridCalculatedFieldsFrameID, TfrmGridCalculatedFields,
    GridCalculatedFieldsFrameName, -1, NewUpdatedGroupIndex, DataBindingGroupIndex, -1);

end.
