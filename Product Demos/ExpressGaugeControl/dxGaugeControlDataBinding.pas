unit dxGaugeControlDataBinding;

interface

uses
  System.Classes, Vcl.Forms, Vcl.Controls, Vcl.ExtCtrls, Data.DB, Data.Win.ADODB,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxClasses, cxDataStorage, cxNavigator,
  cxEdit, cxStyles, cxFilter, cxData, cxDBData, cxGridLevel, cxContainer, dxBar, dxGDIPlusClasses,
  cxImage, cxLabel, dxLayoutContainer, dxLayoutLookAndFeels, dxLayoutControl, cxSplitter,
  cxCustomData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid,
  dxGaugeCustomScale, dxGaugeControl, dxGaugeDigitalScale, dxGaugeQuantitativeScale, dxGaugeCircularScale,
  dxGaugeDBScale, dxGaugeControlBaseFormUnit;

type
  TfrmGaugeControlDataBinding = class(TdxGaugeControlDemoUnitForm)
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    ADOTable1: TADOTable;
    cxGrid1DBTableView1ProductName: TcxGridDBColumn;
    cxGrid1DBTableView1UnitPrice: TcxGridDBColumn;
    cxGrid1DBTableView1UnitsInStock: TcxGridDBColumn;
    cxGrid1DBTableView1UnitsOnOrder: TcxGridDBColumn;
    dxGaugeControl1: TdxGaugeControl;
    dxGaugeControl1DBDigitalScale1: TdxGaugeDBDigitalScale;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1SplitterItem1: TdxLayoutSplitterItem;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1SplitterItem2: TdxLayoutSplitterItem;
    dxGaugeControl4: TdxGaugeControl;
    dxGaugeControl1ContainerScale1: TdxGaugeContainerScale;
    dxGaugeControl1CircularHalfScale1: TdxGaugeDBCircularHalfScale;
    dxGaugeControl1CircularHalfScale1Caption1: TdxGaugeQuantitativeScaleCaption;
    dxGaugeControl1CircularHalfScale1Caption2: TdxGaugeQuantitativeScaleCaption;
    dxGaugeControl1CircularHalfScale1Range1: TdxGaugeCircularScaleRange;
    dxGaugeControl1CircularHalfScale1Range2: TdxGaugeCircularScaleRange;
    dxGaugeControl1CircularHalfScale1Range3: TdxGaugeCircularScaleRange;
    dxGaugeControl1CircularHalfScale2: TdxGaugeDBCircularHalfScale;
    dxGaugeControl1CircularHalfScale2Caption1: TdxGaugeQuantitativeScaleCaption;
    dxGaugeControl1CircularHalfScale2Caption2: TdxGaugeQuantitativeScaleCaption;
    dxGaugeControl1CircularHalfScale2Range1: TdxGaugeCircularScaleRange;
    dxGaugeControl1CircularHalfScale2Range2: TdxGaugeCircularScaleRange;
    dxGaugeControl1CircularHalfScale2Range3: TdxGaugeCircularScaleRange;
    dxLayoutControl1Item5: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure dxGaugeControl1CircularHalfScale1Animate(Sender: TObject);
    procedure dxGaugeControl1CircularHalfScale2Animate(Sender: TObject);
  protected
    function GetDescription: string; override;
  public
    class function GetID: Integer; override;
  end;

implementation

uses
  System.SysUtils;

{$R *.dfm}

procedure TfrmGaugeControlDataBinding.dxGaugeControl1CircularHalfScale1Animate(Sender: TObject);
begin
  dxGaugeControl1CircularHalfScale1Caption2.Text := FormatFloat('0.00', dxGaugeControl1CircularHalfScale1.Value);
end;

procedure TfrmGaugeControlDataBinding.dxGaugeControl1CircularHalfScale2Animate(Sender: TObject);
begin
  dxGaugeControl1CircularHalfScale2Caption2.Text := FormatFloat('0.00', dxGaugeControl1CircularHalfScale2.Value);
end;

procedure TfrmGaugeControlDataBinding.FormCreate(Sender: TObject);
begin
  inherited;
  ADOConnection1.Connected := True;
  ADOTable1.Active := True;
end;

function TfrmGaugeControlDataBinding.GetDescription: string;
begin
  Result := 'This demo illustrates data-bound gauges. Scroll through the grid or modify ' +
    'the "Product Name" and "Units in Stock" cell values to see how the gauge values change. Resize the ' +
    'application''s window or drag the splitters between the gauges and grid to scale them.';
end;

class function TfrmGaugeControlDataBinding.GetID: Integer;
begin
  Result := 7;
end;

initialization
  TfrmGaugeControlDataBinding.Register;

end.
