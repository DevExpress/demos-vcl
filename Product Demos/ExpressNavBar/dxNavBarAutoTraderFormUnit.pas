unit dxNavBarAutoTraderFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxNavBarControlBaseFormUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.StdCtrls, Vcl.ExtCtrls, cxGroupBox,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB,
  cxDBData, cxClasses, dxNavBarBase, dxNavBarCollns, dxNavBar, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, dxLayoutContainer, cxGridCustomLayoutView, cxGridLayoutView,
  cxGridDBLayoutView, cxGridViewLayoutContainer, cxImage, cxTextEdit,
  cxCurrencyEdit, cxCheckGroup, cxRadioGroup, cxDBCheckGroup, cxCheckBox, dxCore, cxVariants,
  cxTrackBar, cxGridWinExplorerView, cxGridDBWinExplorerView, dxRangeTrackBar, dxLayoutControl, dxLayoutLookAndFeels;

type
  TfrmAutoTrader = class(TdxNavBarControlDemoUnitForm)
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxNavBar1: TdxNavBar;
    dxNavBar1Group1: TdxNavBarGroup;
    dxNavBar1Group2: TdxNavBarGroup;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    dxNavBar1Group3: TdxNavBarGroup;
    dxNavBar1Group4: TdxNavBarGroup;
    dxNavBar1Group5: TdxNavBarGroup;
    dxNavBar1Group6: TdxNavBarGroup;
    dxNavBar1Group7: TdxNavBarGroup;
    dxNavBar1Group8: TdxNavBarGroup;
    dxNavBar1Group9: TdxNavBarGroup;
    dxNavBar1Group10: TdxNavBarGroup;
    dxNavBar1Group10Control: TdxNavBarGroupControl;
    dxNavBar1Group9Control: TdxNavBarGroupControl;
    dxNavBar1Group8Control: TdxNavBarGroupControl;
    dxNavBar1Group7Control: TdxNavBarGroupControl;
    dxNavBar1Group6Control: TdxNavBarGroupControl;
    dxNavBar1Group5Control: TdxNavBarGroupControl;
    dxNavBar1Group4Control: TdxNavBarGroupControl;
    cxCheckGroup1: TcxCheckGroup;
    cxRadioGroup1: TcxRadioGroup;
    cxCheckGroup2: TcxCheckGroup;
    cxRadioGroup2: TcxRadioGroup;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle3: TcxStyle;
    cxGrid1DBWinExplorerView1: TcxGridDBWinExplorerView;
    cxGrid1DBWinExplorerView1Name: TcxGridDBWinExplorerViewItem;
    cxGrid1DBWinExplorerView1Price: TcxGridDBWinExplorerViewItem;
    cxGrid1DBWinExplorerView1Image: TcxGridDBWinExplorerViewItem;
    cxGrid1DBWinExplorerView1Photo: TcxGridDBWinExplorerViewItem;
    rtbPrice: TdxRangeTrackBar;
    cxGrid1DBWinExplorerView1Trademark: TcxGridDBWinExplorerViewItem;
    cxGrid1DBWinExplorerView1FullName: TcxGridDBWinExplorerViewItem;
    cxGrid1DBWinExplorerView1Modification: TcxGridDBWinExplorerViewItem;
    cxGrid1DBWinExplorerView1MPGCity: TcxGridDBWinExplorerViewItem;
    cxGrid1DBWinExplorerView1MPGHighway: TcxGridDBWinExplorerViewItem;
    cxGrid1DBWinExplorerView1Doors: TcxGridDBWinExplorerViewItem;
    cxGrid1DBWinExplorerView1Cylinders: TcxGridDBWinExplorerViewItem;
    cxGrid1DBWinExplorerView1Horsepower: TcxGridDBWinExplorerViewItem;
    cxGrid1DBWinExplorerView1TransmissionSpeeds: TcxGridDBWinExplorerViewItem;
    cxGrid1DBWinExplorerView1TransmissionType: TcxGridDBWinExplorerViewItem;
    cxGrid1DBWinExplorerView1TransmissionTypeName: TcxGridDBWinExplorerViewItem;
    cxGrid1DBWinExplorerView1RecId: TcxGridDBWinExplorerViewItem;
    cxGrid1DBWinExplorerView1ID: TcxGridDBWinExplorerViewItem;
    cxGrid1DBWinExplorerView1TrademarkID: TcxGridDBWinExplorerViewItem;
    cxGrid1DBWinExplorerView1CategoryID: TcxGridDBWinExplorerViewItem;
    cxGrid1DBWinExplorerView1BodyStyleID: TcxGridDBWinExplorerViewItem;
    cxGrid1DBWinExplorerView1Torque: TcxGridDBWinExplorerViewItem;
    cxGrid1DBWinExplorerView1Description: TcxGridDBWinExplorerViewItem;
    cxGrid1DBWinExplorerView1DeliveryDate: TcxGridDBWinExplorerViewItem;
    cxGrid1DBWinExplorerView1InStock: TcxGridDBWinExplorerViewItem;
    cxGrid1DBWinExplorerView1Hyperlink: TcxGridDBWinExplorerViewItem;
    rtbMPGCity: TdxRangeTrackBar;
    rtbMPGHighway: TdxRangeTrackBar;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure cxCheckGroup1PropertiesStatesToEditValue(Sender: TObject;
      const ACheckStates: TcxCheckStates; out AValue: Variant);
    procedure cxCheckGroup2PropertiesStatesToEditValue(Sender: TObject;
      const ACheckStates: TcxCheckStates; out AValue: Variant);
    procedure cxRadioGroup1PropertiesChange(Sender: TObject);
    procedure cxRadioGroup2PropertiesChange(Sender: TObject);
    procedure dxRangeTrackBar1PropertiesGetPositionHint(Sender: TObject;
      const AMinPosition, AMaxPosition: Integer; var AHintText: string;
      var ACanShow, AIsHintMultiLine: Boolean);
    procedure rtbPricePropertiesChange(Sender: TObject);
    procedure dxRangeTrackBar1PropertiesChange(Sender: TObject);
    procedure rtbMPGHighwayPropertiesChange(Sender: TObject);
  private
    FTradeMarkFilter: TcxFilterCriteriaItemList;
    FPriceFilter: TcxFilterCriteriaItemList;
    FTransmissionTypeFilter: TcxFilterCriteriaItemList;
    FBodyStyleFilter: TcxFilterCriteriaItemList;
    FDoorFilter: TcxFilterCriteriaItemList;
    FMPGCityFilter: TcxFilterCriteriaItemList;
    FMPGHighwayFilter: TcxFilterCriteriaItemList;
  protected
    function GetDescription: string; override;
    function GetNavBarControl: TdxNavBar; override;
  public
    class function GetID: Integer; override;
    class function GetLoadingInfo: string; override;
  end;

implementation

uses maindata;

{$R *.dfm}

{ TfrmAutoTrader }

procedure TfrmAutoTrader.cxCheckGroup1PropertiesStatesToEditValue(
  Sender: TObject; const ACheckStates: TcxCheckStates; out AValue: Variant);
var
  I: Integer;
begin
  AValue := CalculateCheckStatesValue(ACheckStates, cxCheckGroup1.Properties.Items, cvfIndices);
  if FTradeMarkFilter = nil then
    Exit;
  FTradeMarkFilter.Clear;
  for I := 0 to High(ACheckStates) do
  begin
    if ACheckStates[I] = cbsChecked then
      FTradeMarkFilter.AddItem(cxGrid1DBWinExplorerView1TrademarkID, foEqual, cxCheckGroup1.Properties.Items[I].Tag,
        cxCheckGroup1.Properties.Items[I].Caption);
  end;
end;

procedure TfrmAutoTrader.cxCheckGroup2PropertiesStatesToEditValue(
  Sender: TObject; const ACheckStates: TcxCheckStates; out AValue: Variant);
var
  I: Integer;
begin
  AValue := CalculateCheckStatesValue(ACheckStates, cxCheckGroup2.Properties.Items, cvfIndices);
  if FBodyStyleFilter = nil then
    Exit;
  FBodyStyleFilter.Clear;
  for I := 0 to High(ACheckStates) do
  begin
    if ACheckStates[I] = cbsChecked then
      FBodyStyleFilter.AddItem(cxGrid1DBWinExplorerView1BodyStyleID, foEqual, cxCheckGroup2.Properties.Items[I].Tag,
        cxCheckGroup2.Properties.Items[I].Caption);
  end;
end;


procedure TfrmAutoTrader.cxRadioGroup1PropertiesChange(Sender: TObject);
begin
  if FTransmissionTypeFilter = nil then
    Exit;
  FTransmissionTypeFilter.Clear;
  if cxRadioGroup1.ItemIndex < cxRadioGroup1.Properties.Items.Count - 1 then
    FTransmissionTypeFilter.AddItem(cxGrid1DBWinExplorerView1TransmissionType, foEqual,
      cxRadioGroup1.Properties.Items[cxRadioGroup1.ItemIndex].Tag, cxRadioGroup1.Properties.Items[cxRadioGroup1.ItemIndex].Caption);
end;

procedure TfrmAutoTrader.cxRadioGroup2PropertiesChange(Sender: TObject);
begin
  if FDoorFilter = nil then
    Exit;
  FDoorFilter.Clear;
  if cxRadioGroup2.ItemIndex < cxRadioGroup2.Properties.Items.Count - 1 then
    FDoorFilter.AddItem(cxGrid1DBWinExplorerView1Doors, foEqual,
      cxRadioGroup2.Properties.Items[cxRadioGroup2.ItemIndex].Value, cxRadioGroup2.Properties.Items[cxRadioGroup2.ItemIndex].Caption);
end;

procedure TfrmAutoTrader.dxRangeTrackBar1PropertiesChange(Sender: TObject);
begin
  if FMPGCityFilter = nil then
    Exit;
  FMPGCityFilter.Clear;
  FMPGCityFilter.AddItem(cxGrid1DBWinExplorerView1MPGCity, foGreaterEqual,
    rtbMPGCity.Range.Min, IntToStr(rtbMPGCity.Range.Min));
  FMPGCityFilter.AddItem(cxGrid1DBWinExplorerView1MPGCity, foLessEqual,
    rtbMPGCity.Range.Max, IntToStr(rtbMPGCity.Range.Max));
  Update;
end;

procedure TfrmAutoTrader.dxRangeTrackBar1PropertiesGetPositionHint(
  Sender: TObject; const AMinPosition, AMaxPosition: Integer;
  var AHintText: string; var ACanShow, AIsHintMultiLine: Boolean);
begin
  AHintText := FormatFloat('$,0.00;($,0.00)', AMinPosition);
  AHintText := AHintText + '-' +
    FormatFloat('$,0.00;($,0.00)', AMaxPosition);
end;

procedure TfrmAutoTrader.FormCreate(Sender: TObject);
var
  AField1, AField2: TField;
begin
  inherited;
  cxGrid1DBWinExplorerView1.DataController.Filter.Root.BoolOperatorKind := fboAnd;
  FTradeMarkFilter := cxGrid1DBWinExplorerView1.DataController.Filter.Root.AddItemList(fboOr);
  FTransmissionTypeFilter := cxGrid1DBWinExplorerView1.DataController.Filter.Root.AddItemList(fboOr);
  FBodyStyleFilter := cxGrid1DBWinExplorerView1.DataController.Filter.Root.AddItemList(fboOr);
  FPriceFilter := cxGrid1DBWinExplorerView1.DataController.Filter.Root.AddItemList(fboAnd);
  FDoorFilter := cxGrid1DBWinExplorerView1.DataController.Filter.Root.AddItemList(fboOr);
  FMPGCityFilter := cxGrid1DBWinExplorerView1.DataController.Filter.Root.AddItemList(fboAnd);
  FMPGHighwayFilter := cxGrid1DBWinExplorerView1.DataController.Filter.Root.AddItemList(fboAnd);

  AField1 := DataModule2.mdTrademarkName;
  AField2 := DataModule2.mdTrademarkID;
  DataModule2.mdTrademark.First;
  while not DataModule2.mdTrademark.Eof do
  begin
    with cxCheckGroup1.Properties.Items.Add do
    begin
      Caption := AField1.AsString;
      Tag := AField2.AsInteger;
    end;
    DataModule2.mdTrademark.Next;
  end;

  AField1 := DataModule2.mdTransmissionTypeName;
  AField2 := DataModule2.mdTransmissionTypeID;
  DataModule2.mdTransmissionType.First;
  while not DataModule2.mdTransmissionType.Eof do
  begin
    with cxRadioGroup1.Properties.Items.Add do
    begin
      Caption := AField1.AsString;
      Tag := AField2.AsInteger;
    end;
    DataModule2.mdTransmissionType.Next;
  end;
  cxRadioGroup1.Properties.Items.Add.Caption := 'All';
  cxRadioGroup1.ItemIndex := cxRadioGroup1.Properties.Items.Count - 1;

  AField1 := DataModule2.mdBodyStyleName;
  AField2 := DataModule2.mdBodyStyleID;
  DataModule2.mdBodyStyle.First;
  while not DataModule2.mdBodyStyle.Eof do
  begin
    with cxCheckGroup2.Properties.Items.Add do
    begin
      Caption := AField1.AsString;
      Tag := AField2.AsInteger;
    end;
    DataModule2.mdBodyStyle.Next;
  end;
  cxGrid1DBWinExplorerView1.DataController.Filter.Active := True;
end;

class function TfrmAutoTrader.GetID: Integer;
begin
  Result := 3;
end;

class function TfrmAutoTrader.GetLoadingInfo: string;
begin
  Result := 'Auto Trader Demo';
end;

function TfrmAutoTrader.GetDescription: string;
begin
  Result := 'This example demonstrates the NavBar Control''s filtering capabilities. ' +
    'Custom controls embedded in NavBar Control''s items allow you to filter search results.';
end;

function TfrmAutoTrader.GetNavBarControl: TdxNavBar;
begin
  Result := dxNavBar1;
end;

procedure TfrmAutoTrader.rtbMPGHighwayPropertiesChange(Sender: TObject);
begin
  if FMPGHighwayFilter = nil then
    Exit;
  FMPGHighwayFilter.Clear;
  FMPGHighwayFilter.AddItem(cxGrid1DBWinExplorerView1MPGHighway, foGreaterEqual,
    rtbMPGHighway.Range.Min, IntToStr(rtbMPGHighway.Range.Min));
  FMPGHighwayFilter.AddItem(cxGrid1DBWinExplorerView1MPGHighway, foLessEqual,
    rtbMPGHighway.Range.Max, IntToStr(rtbMPGHighway.Range.Max));
  Update;
end;

procedure TfrmAutoTrader.rtbPricePropertiesChange(Sender: TObject);
begin
  if FPriceFilter = nil then
    Exit;
  FPriceFilter.Clear;
  FPriceFilter.AddItem(cxGrid1DBWinExplorerView1Price, foGreaterEqual,
    rtbPrice.Range.Min, IntToStr(rtbPrice.Range.Min));
  FPriceFilter.AddItem(cxGrid1DBWinExplorerView1Price, foLessEqual,
    rtbPrice.Range.Max, IntToStr(rtbPrice.Range.Max));
  Update;
end;

initialization
  TfrmAutoTrader.Register;

end.
