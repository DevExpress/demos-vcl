unit uMaskEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxFrameCustomControl, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxTextEdit, cxMaskEdit, cxClasses, dxLayoutControl, cxDropDownEdit, Data.DB,
  dxmdaset, cxDBEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid,
  dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons, Main, MainData, cxMemo, Vcl.ActnList;

type
  TfrmMaskEdit = class(TfrmCustomControl)
    MaskEdit: TcxMaskEdit;
    dxLayoutItem1: TdxLayoutItem;
    cmbMaskKind: TcxComboBox;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    lgStandart: TdxLayoutGroup;
    lgRegularExpr: TdxLayoutGroup;
    dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem;
    edMask: TcxTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    mdStandart: TdxMemData;
    mdStandartMask: TStringField;
    mdStandartDescription: TStringField;
    mdStandartSourceText: TStringField;
    dsStandart: TDataSource;
    grStandartDBTableView1: TcxGridDBTableView;
    grStandartLevel1: TcxGridLevel;
    grStandart: TcxGrid;
    dxLayoutItem4: TdxLayoutItem;
    grStandartDBTableView1Description: TcxGridDBColumn;
    grStandartDBTableView1SourceText: TcxGridDBColumn;
    mdStandartExpectedMaskedText: TStringField;
    grStandartDBTableView1ExpectedMaskedText: TcxGridDBColumn;
    btnSetStandartSample: TcxButton;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutLabeledItem1: TdxLayoutLabeledItem;
    mdRegularExpr: TdxMemData;
    mdRegularExprMask: TStringField;
    mdRegularExprDescription: TStringField;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutLabeledItem2: TdxLayoutLabeledItem;
    dxLayoutItem6: TdxLayoutItem;
    grRegularExpr: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxDBMemo1: TcxDBMemo;
    dxLayoutItem7: TdxLayoutItem;
    dsRegularExpr: TDataSource;
    cxGridDBTableView1Description: TcxGridDBColumn;
    mdRegularExprSamples: TMemoField;
    lsiSpaceRegular: TdxLayoutEmptySpaceItem;
    procedure cmbMaskKindPropertiesChange(Sender: TObject);
    procedure mdStandartAfterScroll(DataSet: TDataSet);
    procedure btnSetStandartSampleClick(Sender: TObject);
    procedure grStandartDBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure edMaskPropertiesChange(Sender: TObject);
  private
    function GetActualDataSource: TDataSource;
  protected
    procedure CheckControlStartProperties; override;
    function GetDescription: string; override;
    function GetInspectedObject: TPersistent; override;

    property ActualDataSource: TDataSource read GetActualDataSource;
  public
    { Public declarations }
  end;

implementation

uses
  uStrsConst, dxFrames, FrameIDs;

{$R *.dfm}

procedure TfrmMaskEdit.CheckControlStartProperties;
begin
  mdStandart.LoadFromBinaryFile(dmMain.DataPath + 'MaskEditStandart.dat');
  mdRegularExpr.LoadFromBinaryFile(dmMain.DataPath + 'MaskEditRegularExpr.dat');
  cmbMaskKindPropertiesChange(cmbMaskKind);
end;

function TfrmMaskEdit.GetActualDataSource: TDataSource;
begin
  if cmbMaskKind.ItemIndex = 0 then
    Result := dsStandart
  else
    Result := dsRegularExpr;
end;

function TfrmMaskEdit.GetDescription: string;
begin
  Result := sdxFrameMaskEditDescription;
end;

function TfrmMaskEdit.GetInspectedObject: TPersistent;
begin
  Result := MaskEdit;
end;

procedure TfrmMaskEdit.cmbMaskKindPropertiesChange(Sender: TObject);
begin
  MaskEdit.Properties.MaskKind := TcxEditMaskKind(cmbMaskKind.ItemIndex);
  lgStandart.Visible := MaskEdit.Properties.MaskKind = emkStandard;
  lgRegularExpr.Visible := not lgStandart.Visible;
  edMask.Text := ActualDataSource.DataSet.FieldByName('Mask').AsString;
  MaskEdit.Text := '';
end;

procedure TfrmMaskEdit.edMaskPropertiesChange(Sender: TObject);
begin
  MaskEdit.Properties.EditMask := edMask.Text;
end;

procedure TfrmMaskEdit.mdStandartAfterScroll(DataSet: TDataSet);
begin
  edMask.Text := ActualDataSource.DataSet.FieldByName('Mask').AsString;
  MaskEdit.Text := '';
end;

procedure TfrmMaskEdit.btnSetStandartSampleClick(Sender: TObject);
begin
  MaskEdit.Text := mdStandart.FieldByName('SourceText').AsString;
end;

procedure TfrmMaskEdit.grStandartDBTableView1CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  btnSetStandartSample.Click;
end;

initialization
  dxFrameManager.RegisterFrame(MaskEditFrameID, TfrmMaskEdit, MaskEditFrameName, -1,
    EditorsWithTextBoxesGroupIndex, -1, -1);

end.
