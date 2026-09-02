unit uGridInplaceEditors;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxGridFrame, cxStyles, cxControls, cxGrid, Vcl.StdCtrls, Vcl.ExtCtrls,
  cxCustomData, cxGraphics, cxFilter, cxData, cxEdit, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridLevel,
  cxEditRepositoryItems, cxDBEditRepository, cxDBExtLookupComboBox,
  cxDataStorage, Data.DB, cxDBData, cxGridDBTableView, PropertiesPopup,
  cxDropDownEdit, cxExtEditRepositoryItems, cxShellEditRepositoryItems, dxMessageDialog,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxLabel, cxNavigator, dxGDIPlusClasses, cxImage, cxGroupBox,
  Vcl.Menus, dxLayoutControlAdapters, dxLayoutContainer, cxButtons, dxLayoutControl, Vcl.ActnList, dxDateRanges,
  dxScrollbarAnnotations, dxLayoutLookAndFeels, System.Actions,
  dxPanel, cxGeometry, dxFramedControl;

type
  TfrmInplaceEditorsGrid = class(TdxGridFrame)
    GridLevel: TcxGridLevel;
    GridTableView: TcxGridTableView;
    clmName: TcxGridColumn;
    clmValue: TcxGridColumn;
    EditRepository: TcxEditRepository;
    EditRepositoryBlobItem: TcxEditRepositoryBlobItem;
    EditRepositoryButtonItem: TcxEditRepositoryButtonItem;
    EditRepositoryCalcItem: TcxEditRepositoryCalcItem;
    EditRepositoryCheckBoxItem: TcxEditRepositoryCheckBoxItem;
    EditRepositoryComboBoxItem: TcxEditRepositoryComboBoxItem;
    EditRepositoryCurrencyItem: TcxEditRepositoryCurrencyItem;
    EditRepositoryDateItem: TcxEditRepositoryDateItem;
    EditRepositoryExtLookupComboBoxItem: TcxEditRepositoryExtLookupComboBoxItem;
    EditRepositoryHyperLinkItem: TcxEditRepositoryHyperLinkItem;
    EditRepositoryImageItem: TcxEditRepositoryImageItem;
    EditRepositoryImageComboBoxItem: TcxEditRepositoryImageComboBoxItem;
    EditRepositoryLookupComboBoxItem: TcxEditRepositoryLookupComboBoxItem;
    EditRepositoryMaskItem: TcxEditRepositoryMaskItem;
    EditRepositoryMemoItem: TcxEditRepositoryMemoItem;
    EditRepositoryMRUItem: TcxEditRepositoryMRUItem;
    EditRepositoryPopupItem: TcxEditRepositoryPopupItem;
    EditRepositoryRadioGroupItem: TcxEditRepositoryRadioGroupItem;
    EditRepositorySpinItem: TcxEditRepositorySpinItem;
    EditRepositoryTextItem: TcxEditRepositoryTextItem;
    EditRepositoryTimeItem: TcxEditRepositoryTimeItem;
    EditRepositoryFontNameComboBoxItem: TcxEditRepositoryFontNameComboBox;
    EditRepositoryProgressBarItem: TcxEditRepositoryProgressBar;
    EditRepositoryShellComboBoxItem: TcxEditRepositoryShellComboBoxItem;
    EditRepositoryTrackBarItem: TcxEditRepositoryTrackBar;
    StyleRepository: TcxStyleRepository;
    GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet;
    GridViewRepository: TcxGridViewRepository;
    GridViewRepositoryDBTableView: TcxGridDBTableView;
    GridDBTableViewFIRSTNAME: TcxGridDBColumn;
    GridDBTableViewLASTNAME: TcxGridDBColumn;
    GridDBTableViewPAYMENTTYPE: TcxGridDBColumn;
    GridDBTableViewPRODUCTID: TcxGridDBColumn;
    EditRepositoryRichItem: TcxEditRepositoryRichItem;
    EditRepositoryBarCodeItem: TcxEditRepositoryBarCodeItem;
    EditRepositoryRatingControlItem: TcxEditRepositoryRatingControl;
    procedure clmValueGetProperties(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord;
      var AProperties: TcxCustomEditProperties);
    procedure EditRepositoryButtonItemPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure EditRepositoryMRUItemPropertiesButtonClick(Sender: TObject);
    procedure EditRepositoryPopupItemPropertiesInitPopup(Sender: TObject);
    procedure GridTableViewGetCellHeight(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      ACellViewInfo: TcxGridTableDataCellViewInfo; var AHeight: Integer);
  private
    fmPopupTree: TfmPopupTree;
  protected
    function GetDescription: string; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    //function GetPrintableComponent: TComponent; override;
  end;

  TInplaceDataDataSource = class(TcxCustomDataSource)
  private
    FEditRepository: TcxEditRepository;
    FValues: Array[0..50] of Variant;
    function GetEditorName(AIndex: Integer): string;
    function GetEditorValue(AIndex: Integer): Variant;
    procedure SetEditorValue(AIndex: Integer; const AValue: Variant);
    function GetRichEditText: string;
  protected
    function GetRecordCount: Integer; override;
    function GetValue(ARecordHandle: TcxDataRecordHandle;
      AItemHandle: TcxDataItemHandle): Variant; override;
    procedure SetValue(ARecordHandle: TcxDataRecordHandle;
        AItemHandle: TcxDataItemHandle; const AValue: Variant); override;
  public
    constructor Create(const AEditRepository: TcxEditRepository);
  end;

implementation

uses
  dxFrames, FrameIDs, maindata, uStrsConst;

{$R *.dfm}

{ TfrmInplaceEditorsGrid }

constructor TfrmInplaceEditorsGrid.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  GridTableView.DataController.CustomDataSource := TInplaceDataDataSource.Create(EditRepository);
  GridTableView.DataController.CustomDataSource.DataChanged;
  clmName.DataBinding.ValueTypeClass := TcxStringValueType;
  clmValue.DataBinding.ValueTypeClass := TcxVariantValueType;
  fmPopupTree := TfmPopupTree.Create(nil);
  EditRepositoryPopupItem.Properties.PopupControl := fmPopupTree.pnPopupControl;  
end;

destructor TfrmInplaceEditorsGrid.Destroy;
begin
  fmPopupTree.Free;
  GridTableView.DataController.CustomDataSource.Free;
  inherited Destroy;
end;

{function TfrmInplaceEditorsGrid.GetPrintableComponent: TComponent;
begin
  Result := nil;
end;}


function TfrmInplaceEditorsGrid.GetDescription: string;
begin
  Result := sdxFrameInplaceEditors;
end;


{ TInplaceDataDataSource }

constructor TInplaceDataDataSource.Create(const AEditRepository: TcxEditRepository);
begin
  FEditRepository := AEditRepository;

//  EditRepositoryBarCode: TcxEditRepositoryBarCode;
  FValues[0] := 'http://www.devexpress.com';
//EditRepositoryBlobItem: TcxEditRepositoryBlobItem;
  FValues[1] := sdxInplaceFrame_BlobItem;
//EditRepositoryButtonItem: TcxEditRepositoryButtonItem;
  FValues[2] := sdxInplaceFrame_ButtonItem;
//EditRepositoryCalcItem: TcxEditRepositoryCalcItem;
  FValues[3] := 12340;
//EditRepositoryCheckBoxItem: TcxEditRepositoryCheckBoxItem;
  FValues[4] := True;
//EditRepositoryComboBoxItem: TcxEditRepositoryComboBoxItem;
  FValues[5] := 'Green';
//EditRepositoryCurrencyItem: TcxEditRepositoryCurrencyItem;
  FValues[6] := 12345.34;
//EditRepositoryDateItem: TcxEditRepositoryDateItem;
  FValues[7] := Date;
//EditRepositoryExtLookupComboBoxItem: TcxEditRepositoryExtLookupComboBoxItem;
  FValues[8] := dmmain.cdsDXCustomers.FindField('ID').AsInteger;
//  EditRepositoryFontNameComboBox: TcxEditRepositoryFontNameComboBox;
  FValues[9] := 'Arial';
//EditRepositoryHyperLinkItem: TcxEditRepositoryHyperLinkItem;
  FValues[10] := 'http://www.devexpress.com';
//EditRepositoryImageItem: TcxEditRepositoryImageItem;
  FValues[11] := dmmain.cdsFoodsCategories.FindField('Picture').Value;
//EditRepositoryImageComboBoxItem: TcxEditRepositoryImageComboBoxItem;
  FValues[12] := 2;
//EditRepositoryLookupComboBoxItem: TcxEditRepositoryLookupComboBoxItem;
  FValues[13] := dmmain.cdsDXProducts.FindField('ID').AsInteger;
//EditRepositoryMaskItem: TcxEditRepositoryMaskItem;
  FValues[14] := '(234)897-235';
//EditRepositoryMemoItem: TcxEditRepositoryMemoItem;
  FValues[15] := sdxInplaceFrame_MemoItem;
//EditRepositoryMRUItem: TcxEditRepositoryMRUItem;
  FValues[16] := sdxInplaceFrame_MRUItem;
//EditRepositoryPopupItem: TcxEditRepositoryPopupItem;
  FValues[17] := sdxInplaceFrame_PopupItem;
//  EditRepositoryProgressBar: TcxEditRepositoryProgressBar;
  FValues[18] := 60;
//EditRepositoryRadioGroupItem: TcxEditRepositoryRadioGroupItem;
  FValues[19] := 0;
//  EditRepositoryRatingControlItem: TcxEditRepositoryRatingControl;
  FValues[20] := 5.5;
// EditRepositoryRich: TcxEditRepositoryRich
  FValues[21] := GetRichEditText;
//  EditRepositoryShellComboBoxItem: TcxEditRepositoryShellComboBoxItem;
  FValues[22] := 'Desktop';
//EditRepositorySpinItem: TcxEditRepositorySpinItem;
  FValues[23] := 10;
//EditRepositoryTextItem: TcxEditRepositoryTextItem;
  FValues[24] := sdxInplaceFrame_TextItem;
//EditRepositoryTimeItem: TcxEditRepositoryTimeItem;
  FValues[25] := Now;
//  EditRepositoryTrackBar: TcxEditRepositoryTrackBar;
  FValues[26] := 4;
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
    else Result := Null;
  end;
end;

procedure TInplaceDataDataSource.SetValue(
  ARecordHandle: TcxDataRecordHandle; AItemHandle: TcxDataItemHandle;
  const AValue: Variant);
var
  AColumnId: Integer;
begin
  AColumnId := GetDefaultItemID(Integer(AItemHandle));
  if AColumnId = 1 then
    SetEditorValue(Integer(ARecordHandle), AValue);
end;

function TInplaceDataDataSource.GetEditorName(AIndex: Integer): string;
begin
  Result := FEditRepository.Items[AIndex].Name;
  Result := Copy(Result, Length(FEditRepository.Name) + 1, Length(Result));
  Result := Copy(Result, 1, Pos('Item', Result) - 1) + ' Editor';
end;

function TInplaceDataDataSource.GetEditorValue(AIndex: Integer): Variant;
begin
  Result := FValues[AIndex];
end;

procedure TInplaceDataDataSource.SetEditorValue(AIndex: Integer; const AValue: Variant);
begin
  FValues[AIndex] := AValue;
end;

procedure TfrmInplaceEditorsGrid.clmValueGetProperties(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
begin
  AProperties := EditRepository.Items[ARecord.RecordIndex].Properties;
end;

procedure TfrmInplaceEditorsGrid.EditRepositoryButtonItemPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  dxMessageDlg('Hi!', TMsgDlgType.mtInformation, [mbOK]);
end;

procedure TfrmInplaceEditorsGrid.EditRepositoryMRUItemPropertiesButtonClick(
  Sender: TObject);
begin
  dxMessageDlg(sdxInplaceFrame_MRUItemClick, TMsgDlgType.mtInformation, [mbOK]);
end;

procedure TfrmInplaceEditorsGrid.EditRepositoryPopupItemPropertiesInitPopup(
  Sender: TObject);
begin
  fmPopupTree.PopupEdit := TcxPopupEdit(Sender);
end;

procedure TfrmInplaceEditorsGrid.GridTableViewGetCellHeight(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem;
  ACellViewInfo: TcxGridTableDataCellViewInfo; var AHeight: Integer);
begin
  if(ARecord.RecordIndex = 21) then
    AHeight := 240;
end;

initialization
  dxFrameManager.RegisterFrame(GridInplaceEditorsFrameID, TfrmInplaceEditorsGrid,
    GridInplaceEditorsFrameName, GridInplaceEditorsImageIndex, EditingGroupIndex, -1, -1);

end.
