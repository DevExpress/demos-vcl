unit cxTreeListCalculatedFields;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Data.DB, cxDBTreeListBaseFormUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxCustomData, cxStyles, cxTL, cxTLdxBarBuiltInMenu,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxLayoutContainer,
  Vcl.ActnList, cxClasses, dxLayoutLookAndFeels, cxInplaceContainer, cxTLData,
  cxDBTL, dxLayoutControl, cxMaskEdit, cxCalendar,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxButtons,
  cxCheckBox, cxImageComboBox, cxSpinEdit, cxTextEdit, cxDropDownEdit, cxDBLookupComboBox, Vcl.Grids, Vcl.DBGrids,
  dxLayoutControlAdapters, dxmdaset, cxCurrencyEdit, dxGallery, dxGalleryControl, cxTreeListDataModule,
  dxScrollbarAnnotations, System.Actions, cxFilter;

type
  TfrmCalculatedFields = class(TcxDBTreeListDemoUnitForm)
    tlcProductName: TcxDBTreeListColumn;
    tlcUnitPrice: TcxDBTreeListColumn;
    tlcQuantity: TcxDBTreeListColumn;
    tlcDiscount: TcxDBTreeListColumn;
    tlcAmountDiscount: TcxDBTreeListColumn;
    tlcTotal: TcxDBTreeListColumn;
    tlcParentOrderID: TcxDBTreeListColumn;
    tlcOrderID: TcxDBTreeListColumn;
    dxLayoutItem2: TdxLayoutItem;
    galColumns: TdxGalleryControl;
    dxGalleryControl1Group1: TdxGalleryControlGroup;
    dxGalleryControl1Group1Item1: TdxGalleryControlItem;
    dxGalleryControl1Group1Item2: TdxGalleryControlItem;
    dxLayoutItem3: TdxLayoutItem;
    btnShowExpressionEditor: TcxButton;
    cxStyleRepository1: TcxStyleRepository;
    stGroup: TcxStyle;
    procedure btnShowExpressionEditorClick(Sender: TObject);
    procedure tlDBStylesGetContentStyle(Sender: TcxCustomTreeList; AColumn: TcxTreeListColumn; ANode: TcxTreeListNode;
      var AStyle: TcxStyle);
    procedure tlDBEditing(Sender: TcxCustomTreeList; AColumn: TcxTreeListColumn; var Allow: Boolean);
    procedure ValidateCalculatedColumn(Sender: TcxTreeListColumn;
      ANode: TcxTreeListNode; const AValue: Variant;
      AData: TcxEditValidateInfo);
    procedure tlDBSummary(ASender: TcxCustomTreeList;
      const Arguments: TcxTreeListSummaryEventArguments;
      var OutArguments: TcxTreeListSummaryEventOutArguments);
  public
    procedure FrameActivated; override;
    class function GetID: Integer; override;
  end;

implementation

{$R *.dfm}

uses
  dxSpreadSheetTypes, dxSpreadSheetUtils;

type
  TdxGalleryControlOptionsBehaviorAccess = class(TdxGalleryControlOptionsBehavior);

{ TfrmCalculatedFields }

procedure TfrmCalculatedFields.FrameActivated;
begin
  inherited FrameActivated;
  TdxGalleryControlOptionsBehaviorAccess(galColumns.OptionsBehavior).ItemHotTrack := False;
  TreeList.FullExpand;
end;

class function TfrmCalculatedFields.GetID: Integer;
begin
  Result := 60;
end;

procedure TfrmCalculatedFields.tlDBEditing(Sender: TcxCustomTreeList; AColumn: TcxTreeListColumn; var Allow: Boolean);
begin
  Allow := Allow and not tlDB.FocusedNode.IsGroupNode;
end;

procedure TfrmCalculatedFields.tlDBStylesGetContentStyle(Sender: TcxCustomTreeList; AColumn: TcxTreeListColumn;
  ANode: TcxTreeListNode; var AStyle: TcxStyle);
begin
  if ANode.IsGroupNode then
    AStyle := stGroup
end;

procedure TfrmCalculatedFields.tlDBSummary(ASender: TcxCustomTreeList;
  const Arguments: TcxTreeListSummaryEventArguments;
  var OutArguments: TcxTreeListSummaryEventOutArguments);
begin
  if Arguments.Node.IsGroupNode then
    OutArguments.Done := True;
end;

procedure TfrmCalculatedFields.ValidateCalculatedColumn(
  Sender: TcxTreeListColumn; ANode: TcxTreeListNode; const AValue: Variant;
  AData: TcxEditValidateInfo);
var
  AErrorCode: Integer;
begin
  AErrorCode := ANode.ErrorCodes[Sender.ItemIndex];
  if AErrorCode > 0 then
  begin
    AData.ErrorType := eetError;
    AData.ErrorText := dxSpreadSheetErrorCodeToString(TdxSpreadSheetFormulaErrorCode(AErrorCode));
  end;
end;

procedure TfrmCalculatedFields.btnShowExpressionEditorClick(Sender: TObject);
begin
  if galColumns.Gallery.Groups[0].Items[0].Checked then
    tlcTotal.ShowExpressionEditor
  else
    tlcAmountDiscount.ShowExpressionEditor;
end;

initialization
  TfrmCalculatedFields.Register;

end.
