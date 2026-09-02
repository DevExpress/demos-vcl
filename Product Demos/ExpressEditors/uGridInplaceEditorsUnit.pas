unit uGridInplaceEditorsUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxCustomDemoFrameUnit, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, Vcl.ActnList, dxLayoutContainer,
  cxClasses, dxLayoutControl, cxEdit, cxEditRepositoryItems, cxDBExtLookupComboBox, cxExtEditRepositoryItems,
  cxDBEditRepository, cxShellEditRepositoryItems, cxGrid, cxGridTableView, cxGridDBTableView, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridCustomView,
  PropertiesPopup, cxDropDownEdit, dxDateRanges, dxScrollbarAnnotations, dxMessageDialog,
  dxUIAdorners, System.Actions;

type
  TfrmGridInplaceEditors = class(TdxCustomDemoFrame)
    EditRepository: TcxEditRepository;
    EditRepositoryBarCodeItem: TcxEditRepositoryBarCodeItem;
    EditRepositoryBlobItem: TcxEditRepositoryBlobItem;
    EditRepositoryButtonItem: TcxEditRepositoryButtonItem;
    EditRepositoryCalcItem: TcxEditRepositoryCalcItem;
    EditRepositoryCheckBoxItem: TcxEditRepositoryCheckBoxItem;
    EditRepositoryComboBoxItem: TcxEditRepositoryComboBoxItem;
    EditRepositoryCurrencyItem: TcxEditRepositoryCurrencyItem;
    EditRepositoryDateItem: TcxEditRepositoryDateItem;
    EditRepositoryExtLookupComboBoxItem: TcxEditRepositoryExtLookupComboBoxItem;
    EditRepositoryFontNameComboBoxItem: TcxEditRepositoryFontNameComboBox;
    EditRepositoryHyperLinkItem: TcxEditRepositoryHyperLinkItem;
    EditRepositoryImageItem: TcxEditRepositoryImageItem;
    EditRepositoryImageComboBoxItem: TcxEditRepositoryImageComboBoxItem;
    EditRepositoryLookupComboBoxItem: TcxEditRepositoryLookupComboBoxItem;
    EditRepositoryMaskItem: TcxEditRepositoryMaskItem;
    EditRepositoryMemoItem: TcxEditRepositoryMemoItem;
    EditRepositoryMRUItem: TcxEditRepositoryMRUItem;
    EditRepositoryPopupItem: TcxEditRepositoryPopupItem;
    EditRepositoryProgressBarItem: TcxEditRepositoryProgressBar;
    EditRepositoryRadioGroupItem: TcxEditRepositoryRadioGroupItem;
    EditRepositoryRatingControlItem: TcxEditRepositoryRatingControl;
    EditRepositoryRichItem: TcxEditRepositoryRichItem;
    EditRepositoryShellComboBoxItem: TcxEditRepositoryShellComboBoxItem;
    EditRepositorySpinItem: TcxEditRepositorySpinItem;
    EditRepositoryTextItem: TcxEditRepositoryTextItem;
    EditRepositoryTimeItem: TcxEditRepositoryTimeItem;
    EditRepositoryTrackBarItem: TcxEditRepositoryTrackBar;
    GridViewRepository: TcxGridViewRepository;
    GridViewRepositoryDBTableView: TcxGridDBTableView;
    GridDBTableViewFIRSTNAME: TcxGridDBColumn;
    GridDBTableViewLASTNAME: TcxGridDBColumn;
    GridDBTableViewPAYMENTTYPE: TcxGridDBColumn;
    dxLayoutItem1: TdxLayoutItem;
    Grid: TcxGrid;
    GridTableView: TcxGridTableView;
    clmName: TcxGridColumn;
    clmValue: TcxGridColumn;
    GridLevel: TcxGridLevel;
    GridViewRepositoryDBTableViewPURCHASEDATE: TcxGridDBColumn;
    EditRepositoryFormattedLabel: TcxEditRepositoryFormattedLabel;
    procedure clmValueGetProperties(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AProperties: TcxCustomEditProperties);
    procedure EditRepositoryButtonItemPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure EditRepositoryMRUItemPropertiesButtonClick(Sender: TObject);
    procedure EditRepositoryPopupItemPropertiesInitPopup(Sender: TObject);
    procedure GridTableViewGetCellHeight(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; ACellViewInfo: TcxGridTableDataCellViewInfo; var AHeight: Integer);
  private
    fmPopupTree: TfmPopupTree;
  protected
    function GetDescription: string; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

  TInplaceDataDataSource = class(TcxCustomDataSource)
  private
    FEditRepository: TcxEditRepository;
    FNames: Array[0..27] of string;
    FValues: Array[0..27] of Variant;
    function GetEditorName(AIndex: Integer): string;
    function GetEditorValue(AIndex: Integer): Variant;
    procedure SetEditorValue(AIndex: Integer; const AValue: Variant);
    function GetRichEditText: string;
  protected
    function GetRecordCount: Integer; override;
    function GetValue(ARecordHandle: TcxDataRecordHandle; AItemHandle: TcxDataItemHandle): Variant; override;
    procedure SetValue(ARecordHandle: TcxDataRecordHandle; AItemHandle: TcxDataItemHandle; const AValue: Variant); override;
  public
    constructor Create(const AEditRepository: TcxEditRepository);
  end;


implementation

uses
  dxFrames, FrameIDs, maindata, uStrsConst, cxGeometry;

{$R *.dfm}

{ TfrmGridInplaceEditors }

constructor TfrmGridInplaceEditors.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  dmMain.OpenInplaceGridEditorsDemoData;
  GridTableView.DataController.CustomDataSource := TInplaceDataDataSource.Create(EditRepository);
  GridTableView.DataController.CustomDataSource.DataChanged;
  clmName.DataBinding.ValueTypeClass := TcxStringValueType;
  clmValue.DataBinding.ValueTypeClass := TcxVariantValueType;
  fmPopupTree := TfmPopupTree.Create(nil);
  EditRepositoryPopupItem.Properties.PopupControl := fmPopupTree.pnPopupControl;
end;

destructor TfrmGridInplaceEditors.Destroy;
begin
  fmPopupTree.Free;
  GridTableView.DataController.CustomDataSource.Free;
  inherited Destroy;
end;

procedure TfrmGridInplaceEditors.clmValueGetProperties(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; var AProperties: TcxCustomEditProperties);
begin
  AProperties := EditRepository.Items[ARecord.RecordIndex].Properties;
end;

procedure TfrmGridInplaceEditors.EditRepositoryButtonItemPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  dxMessageDlg('Hi!', TMsgDlgType.mtInformation, [mbOK]);
end;

procedure TfrmGridInplaceEditors.EditRepositoryMRUItemPropertiesButtonClick(Sender: TObject);
begin
  dxMessageDlg(sdxInplaceFrame_MRUItemClick, TMsgDlgType.mtInformation, [mbOK]);
end;

procedure TfrmGridInplaceEditors.EditRepositoryPopupItemPropertiesInitPopup(Sender: TObject);
begin
  fmPopupTree.PopupEdit := TcxPopupEdit(Sender);
end;

function TfrmGridInplaceEditors.GetDescription: string;
begin
  Result := sdxFrameGridInplaceEditorsDescription;
end;

procedure TfrmGridInplaceEditors.GridTableViewGetCellHeight(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; ACellViewInfo: TcxGridTableDataCellViewInfo; var AHeight: Integer);
begin
  if ARecord.RecordIndex = 21 then
    AHeight := ScaleFactor.Apply(300);
end;

{ TInplaceDataDataSource }

constructor TInplaceDataDataSource.Create(const AEditRepository: TcxEditRepository);
begin
  FEditRepository := AEditRepository;

//  EditRepositoryBarCode: TcxEditRepositoryBarCode;
  FNames[0] := 'Barcode Editor';
  FValues[0] := 'http://www.devexpress.com';
//EditRepositoryBlobItem: TcxEditRepositoryBlobItem;
  FNames[1] := 'BLOB Editor';
  FValues[1] := sdxInplaceFrame_BlobItem;
//EditRepositoryButtonItem: TcxEditRepositoryButtonItem;
  FNames[2] := 'Button Editor';
  FValues[2] := sdxInplaceFrame_ButtonItem;
//EditRepositoryCalcItem: TcxEditRepositoryCalcItem;
  FNames[3] := 'Calculator Editor';
  FValues[3] := 12340;
//EditRepositoryCheckBoxItem: TcxEditRepositoryCheckBoxItem;
  FNames[4] := 'Check Box Editor';
  FValues[4] := True;
//EditRepositoryComboBoxItem: TcxEditRepositoryComboBoxItem;
  FNames[5] := 'Combo Box Editor';
  FValues[5] := 'Green';
//EditRepositoryCurrencyItem: TcxEditRepositoryCurrencyItem;
  FNames[6] := 'Currency Editor';
  FValues[6] := 12345.34;
//EditRepositoryDateItem: TcxEditRepositoryDateItem;
  FNames[7] := 'Date Editor';
  FValues[7] := Date;
//EditRepositoryExtLookupComboBoxItem: TcxEditRepositoryExtLookupComboBoxItem;
  FNames[8] := 'Extended Lookup Editor';
  FValues[8] := dmmain.cdsDXCustomers.FindField('ID').AsInteger;
//  EditRepositoryFontNameComboBox: TcxEditRepositoryFontNameComboBox;
  FNames[9] := 'Font Editor';
  FValues[9] := 'Arial';
//EditRepositoryHyperLinkItem: TcxEditRepositoryHyperLinkItem;
  FNames[10] := 'Hyperlink Editor';
  FValues[10] := 'http://www.devexpress.com';
//EditRepositoryImageItem: TcxEditRepositoryImageItem;
  FNames[11] := 'Image Editor';
  FValues[11] := dmmain.cdsFoodsCategories.FindField('Picture').Value;
//EditRepositoryImageComboBoxItem: TcxEditRepositoryImageComboBoxItem;
  FNames[12] := 'Image Combo Box Editor';
  FValues[12] := 2;
//EditRepositoryLookupComboBoxItem: TcxEditRepositoryLookupComboBoxItem;
  FNames[13] := 'Lookup Editor';
  FValues[13] := dmmain.cdsDXProducts.FindField('ID').AsInteger;
//EditRepositoryMaskItem: TcxEditRepositoryMaskItem;
  FNames[14] := 'Mask Editor';
  FValues[14] := '(234)897-235';
//EditRepositoryMemoItem: TcxEditRepositoryMemoItem;
  FNames[15] := 'Memo Editor';
  FValues[15] := sdxInplaceFrame_MemoItem;
//EditRepositoryMRUItem: TcxEditRepositoryMRUItem;
  FNames[16] := 'MRU Editor';
  FValues[16] := sdxInplaceFrame_MRUItem;
//EditRepositoryPopupItem: TcxEditRepositoryPopupItem;
  FNames[17] := 'Popup Editor';
  FValues[17] := sdxInplaceFrame_PopupItem;
//  EditRepositoryProgressBar: TcxEditRepositoryProgressBar;
  FNames[18] := 'Progress Bar Editor';
  FValues[18] := 60;
//EditRepositoryRadioGroupItem: TcxEditRepositoryRadioGroupItem;
  FNames[19] := 'Radio Group Editor';
  FValues[19] := 0;
//  EditRepositoryRatingControlItem: TcxEditRepositoryRatingControl;
  FNames[20] := 'Rating Editor';
  FValues[20] := 5.5;
// EditRepositoryRich: TcxEditRepositoryRich
  FNames[21] := 'Rich Editor';
  FValues[21] := GetRichEditText;
//  EditRepositoryShellComboBoxItem: TcxEditRepositoryShellComboBoxItem;
  FNames[22] := 'Shell Breadcrumb Editor';
  FValues[22] := 'Desktop';
//EditRepositorySpinItem: TcxEditRepositorySpinItem;
  FNames[23] := 'Spin Editor';
  FValues[23] := 10;
//EditRepositoryTextItem: TcxEditRepositoryTextItem;
  FNames[24] := 'Text Editor';
  FValues[24] := sdxInplaceFrame_TextItem;
//EditRepositoryTimeItem: TcxEditRepositoryTimeItem;
  FNames[25] := 'Time Editor';
  FValues[25] := Now;
//  EditRepositoryTrackBar: TcxEditRepositoryTrackBar;
  FNames[26] := 'Track Bar Editor';
  FValues[26] := 4;
//  EditRepositoryFormattedLabel: TcxEditRepositoryFormattedLabel;
  FNames[27] := 'Formatted Label';
  FValues[27] := '[B]Questions?[/B]'#13#10'Visit our [URL=https://www.devexpress.com/support/]Support Center[/URL]';
end;

function TInplaceDataDataSource.GetRichEditText: string;
var
  AStrings: TStringList;
begin
  AStrings := TStringList.Create;
  try
    AStrings.LoadFromFile(ExtractFilePath(Application.ExeName) + 'lipsum.rtf');
    Result := AStrings.Text;
  finally
    AStrings.Free;
  end;
end;

function TInplaceDataDataSource.GetRecordCount: Integer;
begin
  Result := FEditRepository.Count;
end;

function TInplaceDataDataSource.GetValue(ARecordHandle: TcxDataRecordHandle;
  AItemHandle: TcxDataItemHandle): Variant;
var
  AColumnId: Integer;
begin
  AColumnId := GetDefaultItemID(Integer(AItemHandle));
  case AColumnId of
    0: Result := GetEditorName(Integer(ARecordHandle));
    1: Result := GetEditorValue(Integer(ARecordHandle));
  else
    Result := Null;
  end;
end;

procedure TInplaceDataDataSource.SetValue(ARecordHandle: TcxDataRecordHandle;
  AItemHandle: TcxDataItemHandle; const AValue: Variant);
var
  AColumnId: Integer;
begin
  AColumnId := GetDefaultItemID(Integer(AItemHandle));
  if AColumnId = 1 then
    SetEditorValue(Integer(ARecordHandle), AValue);
end;

function TInplaceDataDataSource.GetEditorName(AIndex: Integer): string;
begin
  Result := FNames[AIndex];
end;

function TInplaceDataDataSource.GetEditorValue(AIndex: Integer): Variant;
begin
  Result := FValues[AIndex];
end;

procedure TInplaceDataDataSource.SetEditorValue(AIndex: Integer; const AValue: Variant);
begin
  FValues[AIndex] := AValue;
end;

initialization
  dxFrameManager.RegisterFrame(GridInplaceEditorsFrameID, TfrmGridInplaceEditors, GridInplaceEditorsFrameName, -1,
    InplaceEditingGroupIndex, -1, -1);

end.
