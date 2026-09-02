unit uGridSparkLines;

interface

uses
  Vcl.Forms, Winapi.Windows, Winapi.Messages, System.SysUtils, dxGridFrame, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxContainer, cxEdit, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses, cxGridLevel, cxLabel, cxGrid, System.Classes,
  Vcl.Controls, Vcl.ExtCtrls, dxSparkline, cxCheckBox, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxHyperLinkEdit, cxImage,
  dxDBSparkline, Vcl.ImgList, dxmdaset, cxGroupBox, dxGDIPlusClasses, Vcl.Menus, dxLayoutControlAdapters, dxLayoutContainer,
  Vcl.StdCtrls, cxButtons, dxLayoutControl, dxCustomDemoFrameUnit, dxLayoutcxEditAdapters, dxToggleSwitch, Vcl.ActnList, maindata,
  dxDateRanges, dxScrollbarAnnotations, System.Actions, dxLayoutLookAndFeels,
  dxPanel, cxGeometry, dxFramedControl;

type
  TfrmGridSparklines = class(TdxGridFrame)
    GridLevel1: TcxGridLevel;
    DBTableView: TcxGridDBTableView;
    DBTableViewRecId: TcxGridDBColumn;
    DBTableViewTrademark: TcxGridDBColumn;
    DBTableViewProductName: TcxGridDBColumn;
    DBTableViewTrademarkSite: TcxGridDBColumn;
    DBTableViewPhoto: TcxGridDBColumn;
    DBTableViewPrice: TcxGridDBColumn;
    DBTableViewPayments: TcxGridDBColumn;
    mdsOrderDetails: TdxMemData;
    mdsOrderDetailsProductID: TIntegerField;
    mdsOrderDetailsTrademarkID: TIntegerField;
    mdsOrderDetailsPurchaseData: TDateTimeField;
    mdsOrderDetailsCount: TIntegerField;
    mdsOrderDetailsPrice: TCurrencyField;
    mdsOrderDetailsSales: TCurrencyField;
    mdsOrderDetailsSalesByTrademark: TCurrencyField;
    mdsCarOrders: TdxMemData;
    mdsCarOrdersID: TIntegerField;
    mdsCarOrdersTrademark: TStringField;
    mdsCarOrdersModel: TStringField;
    mdsCarOrdersTrademark_Site: TStringField;
    mdsCarOrdersPhoto: TBlobField;
    mdsCarOrdersPrice: TCurrencyField;
    dsCarOrders: TDataSource;
    dsOrderDetails: TDataSource;
    dxLayoutItem1: TdxLayoutItem;
    cxComboBox1: TcxComboBox;
    acTotalSalesByTradeMark: TAction;
    cbTotalSalesByTradeMark: TdxLayoutCheckBoxItem;
    procedure cxComboBox1PropertiesChange(Sender: TObject);
    procedure acTotalSalesByTradeMarkExecute(Sender: TObject);
  protected
    function GetDescription: string; override;
    function NeedSetup: Boolean; override;
  public
    constructor Create(AOwner: TComponent); override;
  end;

var
  frmGridSparklines: TfrmGridSparklines;

implementation

uses
  dxCore, dxFrames, FrameIDs, uStrsConst;

{$R *.dfm}

constructor TfrmGridSparklines.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  cxComboBox1.Properties.DropDownListStyle := lsFixedList;
  DBTableView.BeginUpdate;
  try
    mdsCarOrders.LoadFromBinaryFile(ExtractFileDir(Application.ExeName) + '\Data\CarOrders.mds');
    mdsOrderDetails.LoadFromBinaryFile(ExtractFileDir(Application.ExeName) + '\Data\OrderDetails.mds');
  finally
    DBTableView.EndUpdate;
  end;
  DBTableView.ViewData.Expand(True);
  DBTableView.Controller.TopRowIndex := 0;
  DBTableView.ViewData.Rows[0].Focused := True;
end;

function TfrmGridSparklines.GetDescription: string;
begin
  Result := sdxFrameSparklinesDescription;
end;

function TfrmGridSparklines.NeedSetup: Boolean;
begin
  Result := True;
end;

procedure TfrmGridSparklines.acTotalSalesByTradeMarkExecute(Sender: TObject);
begin
  TdxSparklineProperties(DBTableViewPayments.Properties).Series[0].Visible := acTotalSalesByTradeMark.Checked;
end;

procedure TfrmGridSparklines.cxComboBox1PropertiesChange(Sender: TObject);
begin
  TdxSparklineProperties(DBTableViewPayments.Properties).Series[0].SeriesType :=
    TdxSparklineSeriesType(cxComboBox1.ItemIndex);
  TdxSparklineProperties(DBTableViewPayments.Properties).Series[1].SeriesType :=
    TdxSparklineSeriesType(cxComboBox1.ItemIndex);
end;

initialization
  dxFrameManager.RegisterFrame(GridSparklinesFrameID, TfrmGridSparklines,
    GridSparklinesFrameName, GridSparklinesImageIndex, -1, EditingGroupIndex, -1);

end.
