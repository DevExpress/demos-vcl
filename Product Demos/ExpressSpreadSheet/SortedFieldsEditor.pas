unit SortedFieldsEditor;

{$I cxVer.inc}

interface

uses
{$IFDEF DELPHI16}
  System.UITypes,
{$ENDIF}
  System.Types, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutContainer, cxClasses, Vcl.StdCtrls, cxButtons, dxLayoutControl, dxSpreadSheetReportDesigner, Vcl.ImgList,
  cxContainer, cxEdit, cxListBox, System.Math, dxCore, cxGeometry, dxLayoutLookAndFeels, cxImageList, dxForms;

const
  WM_HIDESELECTION = WM_USER + 110;

type
  TfrmSortedFieldsEditor = class(TdxForm)
    dxLayoutControl1: TdxLayoutControl;
    btnApply: TcxButton;
    btnClear: TcxButton;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    lbSortedFields: TcxListBox;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    lbDataSetFields: TcxListBox;
    btnAddOrRemoveField: TcxButton;
    dxLayoutItem5: TdxLayoutItem;
    btnSortOrder: TcxButton;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    dxLayoutGroup1: TdxLayoutGroup;
    cxImageList1: TcxImageList;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    procedure btnAddOrRemoveFieldClick(Sender: TObject);
    procedure btnSortOrderClick(Sender: TObject);
    procedure lbDataSetFieldsEnter(Sender: TObject);
    procedure lbSortedFieldsEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lbDataSetFieldsExit(Sender: TObject);
    procedure lbSortedFieldsExit(Sender: TObject);
    procedure HideSelection(var Message: TMessage); message WM_HIDESELECTION;
    procedure lbSortedFieldsClick(Sender: TObject);
  protected
    DataSetFieldsIndex: Integer;
    FocusedList: TcxListBox;
    SortedFieldsIndex: Integer;
    SortOrders: TList;
    procedure PopulateFields(ADataController: TdxSpreadSheetReportDataController; ACollection: TdxSpreadSheetReportSortedFields);
    procedure SaveSettings(ACollection: TdxSpreadSheetReportSortedFields);
    procedure SyncButtons;
    procedure SyncSortOrderButton;
  public
    procedure DoEdit(ADataController: TdxSpreadSheetReportDataController;
      ACollection: TdxSpreadSheetReportSortedFields; const ACaption: string = '');
  end;

implementation

{$R *.dfm}

var
  SaveBounds: TRect;

{ TfrmSortedFieldsEditor }

procedure TfrmSortedFieldsEditor.btnAddOrRemoveFieldClick(Sender: TObject);

  procedure ExchangeItems(ASource, ADest: TcxListBox);
  var
    AIndex: Integer;
  begin
    AIndex := ASource.ItemIndex;
    if AIndex < 0 then
      Exit;
    ADest.AddItem(ASource.Items[ASource.ItemIndex], ASource.ItemObject);
    ASource.DeleteSelected;
    ASource.ItemIndex := Max(0, Min(AIndex, ASource.Count - 1));
    ASource.SetFocus;
  end;

begin
  if FocusedList = lbSortedFields then
    ExchangeItems(lbSortedFields, lbDataSetFields)
  else
    ExchangeItems(lbDataSetFields, lbSortedFields);
end;

procedure TfrmSortedFieldsEditor.SaveSettings(
  ACollection: TdxSpreadSheetReportSortedFields);
var
  I: Integer;
  AField: TdxSpreadSheetReportDesignerDataField;
  AItem: TdxSpreadSheetReportSortedField;
begin
  ACollection.BeginUpdate;
  try
    ACollection.Clear;
    for I := 0 to lbSortedFields.Count - 1 do
    begin
      AField := TdxSpreadSheetReportDesignerDataField(lbSortedFields.Items.Objects[I]);
      AItem := TdxSpreadSheetReportSortedField(ACollection.Add);
      AItem.FieldName := AField.FieldName;
      if SortOrders.IndexOf(AField) <> -1 then
        AItem.SortOrder := soDescending;
    end;
  finally
    ACollection.EndUpdate;
  end;
end;

procedure TfrmSortedFieldsEditor.SyncButtons;
begin
  btnAddOrRemoveField.Enabled := (lbSortedFields.Focused and (lbSortedFields.Count > 0)) or
    (lbDataSetFields.Focused and (lbDataSetFields.Count > 0));
  SyncSortOrderButton;
end;

procedure TfrmSortedFieldsEditor.SyncSortOrderButton;
begin
  btnSortOrder.Enabled := lbSortedFields.Focused and (lbSortedFields.ItemIndex >= 0) and
    (lbSortedFields.ItemIndex < lbSortedFields.Items.Count);
  if btnSortOrder.Enabled and (SortOrders.IndexOf(lbSortedFields.Items.Objects[lbSortedFields.ItemIndex]) >= 0) then
    btnSortOrder.OptionsImage.ImageIndex := 2
  else
    btnSortOrder.OptionsImage.ImageIndex := 1;
end;

procedure TfrmSortedFieldsEditor.PopulateFields(ADataController: TdxSpreadSheetReportDataController;
  ACollection: TdxSpreadSheetReportSortedFields);
var
  ASortedIndex, AFieldIndex, I: Integer;

  procedure SetFocusedIndex(AListBox: TcxListBox; AIndex: Integer);
  begin
    AIndex := Max(0, AIndex);
    AIndex := Min(AIndex, AListBox.Items.Count - 1);
    if AIndex > 0 then
      AListBox.ItemIndex := AIndex;
  end;

var
  AField: TObject;
begin
  AFieldIndex := lbDataSetFields.ItemIndex;
  ASortedIndex := lbSortedFields.ItemIndex;
  lbDataSetFields.Items.BeginUpdate;
  lbSortedFields.Items.BeginUpdate;
  try
    for I := 0 to ACollection.Count - 1 do
    begin
      AField := ADataController.GetItemByFieldName(ACollection.Items[I].FieldName);
      if AField <> nil then
        lbSortedFields.AddItem(ACollection.Items[I].FieldName, AField);
        if ACollection.Items[I].SortOrder = soDescending then
          SortOrders.Add(AField);
    end;
    for I := 0 to ADataController.FieldCount - 1 do
      if ADataController.Fields[I].Visible and (lbSortedFields.Items.IndexOfObject(ADataController.Fields[I]) = -1) then
        lbDataSetFields.AddItem(ADataController.Fields[I].FieldName, ADataController.Fields[I]);
  finally
    lbSortedFields.Items.EndUpdate;
    lbDataSetFields.Items.EndUpdate;
  end;
  SetFocusedIndex(lbDataSetFields, AFieldIndex);;
  SetFocusedIndex(lbSortedFields, ASortedIndex);;
end;

procedure TfrmSortedFieldsEditor.btnSortOrderClick(Sender: TObject);
var
  AField: TObject;
begin
  lbSortedFields.SetFocus;
  AField := lbSortedFields.Items.Objects[lbSortedFields.ItemIndex];
  if SortOrders.IndexOf(AField) < 0 then
    SortOrders.Add(AField)
  else
    SortOrders.Remove(AField);
  SyncSortOrderButton;
end;

procedure TfrmSortedFieldsEditor.DoEdit(
  ADataController: TdxSpreadSheetReportDataController;
  ACollection: TdxSpreadSheetReportSortedFields;
  const ACaption: string = '');
begin
  if not cxRectIsEmpty(SaveBounds) then
    BoundsRect := SaveBounds;
  SortOrders := TList.Create;
  try
    PopulateFields(ADataController, ACollection);
    if ACaption <> ''  then
      dxLayoutItem3.CaptionOptions.Text := ACaption;
    if ShowModal = mrOK then
      SaveSettings(ACollection);
  finally
    SortOrders.Free;
    SaveBounds := BoundsRect;
  end;
end;

procedure TfrmSortedFieldsEditor.FormShow(Sender: TObject);
begin
  lbDataSetFields.SetFocus;
  lbDataSetFields.ItemIndex := Max(0, lbDataSetFields.ItemIndex);
end;

procedure TfrmSortedFieldsEditor.HideSelection(var Message: TMessage);
begin
  TcxListBox(Message.WParam).ItemIndex := -1;
end;

procedure TfrmSortedFieldsEditor.lbDataSetFieldsEnter(Sender: TObject);
begin
  if lbDataSetFields.ItemIndex = -1 then
    lbDataSetFields.ItemIndex := Min(DataSetFieldsIndex, lbDataSetFields.Count - 1);
  FocusedList := lbDataSetFields;
  PostMessage(Handle, WM_HIDESELECTION, TdxNativeUInt(lbSortedFields), 0);
  SyncButtons;
end;

procedure TfrmSortedFieldsEditor.lbDataSetFieldsExit(Sender: TObject);
begin
  DataSetFieldsIndex := lbDataSetFields.ItemIndex;
end;

procedure TfrmSortedFieldsEditor.lbSortedFieldsClick(Sender: TObject);
begin
  SyncButtons;
end;

procedure TfrmSortedFieldsEditor.lbSortedFieldsEnter(Sender: TObject);
begin
  if lbSortedFields.ItemIndex = -1 then
    lbSortedFields.ItemIndex := Min(SortedFieldsIndex, lbSortedFields.Count - 1);
  FocusedList := lbSortedFields;
  PostMessage(Handle, WM_HIDESELECTION, TdxNativeUInt(lbDataSetFields), 0);
  SyncButtons;
end;

procedure TfrmSortedFieldsEditor.lbSortedFieldsExit(Sender: TObject);
begin
  SortedFieldsIndex := lbSortedFields.ItemIndex;
end;

end.
