unit dxFlowChartProductFlowDiagram;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxFlowChartBaseFormUnit, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxLayoutContainer, dxBar,
  cxClasses, dxLayoutLookAndFeels, dxLayoutControl, dxflchrt,
  dxFlowChartDataModule, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxImage, cxTextEdit, cxCurrencyEdit, cxProgressBar, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
  cxGrid, System.Generics.Defaults, System.Generics.Collections, dxGDIPlusClasses, dxmdaset, dxCoreClasses, System.ImageList,
  Vcl.ImgList, cxImageList;

type
  TProductFlowObjectType = (otCustomer, otCategory);

  IProductFlowObject = interface
  ['{82681106-F978-4630-8FDF-5025989EED70}']
    function FilterValue: string;
    function ObjectType: TProductFlowObjectType;
  end;

  TCustomer = class(TEmployee, IProductFlowObject)
  strict private
    function FilterValue: string;
    function ObjectType: TProductFlowObjectType;
  end;

  TCategory = class(TBaseObject, IProductFlowObject)
  strict private
    FPicture: TdxSmartImage;
    function FilterValue: string;
    function ObjectType: TProductFlowObjectType;
  public
    Name: string;
    Description: string;

    constructor Create;
    destructor Destroy; override;

    property Picture: TdxSmartImage read FPicture;
  end;

  TProductFlowInfo = class(TBaseObject)
  public
    Category: TCategory;
    Customer: TCustomer;
    Weight: Single;
  end;

  { TfrmFlowChartProductFlowDiagram }

  TfrmFlowChartProductFlowDiagram = class(TdxFlowChartDemoUnitForm)
    dxFlowChart1: TdxFlowChart;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    Grid: TcxGrid;
    tvCategories: TcxGridDBTableView;
    tvCategoriesCategoryID: TcxGridDBColumn;
    tvCategoriesCategoryName: TcxGridDBColumn;
    tvCategoriesDescription: TcxGridDBColumn;
    tvProductFlow: TcxGridDBTableView;
    GridLevel1: TcxGridLevel;
    dxLayoutSplitterItem1: TdxLayoutSplitterItem;
    mdProductFlow: TdxMemData;
    mdProductFlowCategory: TStringField;
    mdProductFlowCustomer: TStringField;
    mdProductFlowProduct: TStringField;
    mdProductFlowQuantity: TIntegerField;
    dsProductFlow: TDataSource;
    tvProductFlowCategory: TcxGridDBColumn;
    tvProductFlowCustomer: TcxGridDBColumn;
    tvProductFlowProduct: TcxGridDBColumn;
    tvProductFlowQuantity: TcxGridDBColumn;
    dxLayoutGroup1: TdxLayoutGroup;
    cxImageList1: TcxImageList;
    procedure FormShow(Sender: TObject);
    procedure dxFlowChart1Click(Sender: TObject);
    procedure dxFlowChart1Selected(Sender: TdxCustomFlowChart; Item: TdxFcItem);
  strict private type

    TOrder = record
    public
      Customer: TCustomer;
      Category: TCategory;
      ProductName: string;
      Quantity: Integer;
    end;

    TOrderList = class(TList<TOrder>)
    public
      constructor Create;
    end;

    TProduct = record
    public
      Name: string;
      Category: TCategory;
      Price: Single;
    end;

    TProductList = class(TList<TProduct>)
    public
      constructor Create;
    end;

  strict private
    FCategoryList: TObjectDictionary<TCategory, TProductList>;
    FCustomerList: TObjectList<TCustomer>;
    FFlowObjects: TDictionary<TdxFcItem, TBaseObject>;
    FProductFlowInfos: TObjectList<TProductFlowInfo>;

    function GenerateOrders(ACustomerCount, ACategoryCount: Integer): TOrderList;
    function TryGetItem(AObject: TBaseObject; out AItem: TdxFcItem): Boolean;
    function TryGetShape(AObject: TBaseObject; out AShape: TdxFcObject): Boolean;
    procedure AddCategoriesToChart(const ATopLeft: TPoint);
    procedure AddCustomersToChart(const ATopLeft: TPoint);
    procedure AddConnectorsToChart;
    procedure CalculateProductFlowInfos(AOrderList: TOrderList);
    procedure CreateConnector(AProductFlow: TProductFlowInfo);
    procedure GenerateProductFlowData;
    procedure FlowChartSelectionChangedHandler;
    procedure InitializeFlowChart;
    procedure PopulateCategoryList(ACount: Integer);
    procedure PopulateChart;
    procedure PopulateCustomerList(ACount: Integer);
    procedure PopulateProductList;
    procedure PopulateProductFlow;
  protected
    function NeedWaitForm: Boolean; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;

    class function GetID: Integer; override;
    function GetCaption: string; override;
    function GetDescription: string; override;
  end;

implementation

{$R *.dfm}

uses
  System.Types, System.Math, System.DateUtils, dxCore, dxTypeHelpers, cxGeometry, dxCoreGraphics;

const
  CategoryCount = 5;
  CategoryShapeStartPoint: TPoint = (X: 800; Y: 50);
  CustomerCount = 4;
  CustomerShapeStartPoint: TPoint = (X: 100; Y: 175);
  FontSize = 12;
  ShapeOffset = 20;

  CategoryShapeSize: TPoint = (X: 225; Y: 175);
  ShapeSize: TPoint = (X: 200; Y: 150);

function GetCustomerShapeColor(AIndex: Integer): TColor;
const
  ColorCount = 4;
  Colors: array[0..ColorCount - 1] of TColor =
    ($A9AB00, $339933, $7300D8, $0996F0);
begin
  Result := Colors[AIndex mod ColorCount];
end;

{ TfrmFlowChartProductFlowDiagram }

constructor TfrmFlowChartProductFlowDiagram.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FFlowObjects := TDictionary<TdxFcItem, TBaseObject>.Create;
  FCategoryList := TObjectDictionary<TCategory, TProductList>.Create([doOwnsKeys, doOwnsValues]);
  FCustomerList := TObjectList<TCustomer>.Create;
  FProductFlowInfos := TObjectList<TProductFlowInfo>.Create;
  InitializeFlowChart;
end;

destructor TfrmFlowChartProductFlowDiagram.Destroy;
begin
  FreeAndNil(FProductFlowInfos);
  FreeAndNil(FCustomerList);
  FreeAndNil(FCategoryList);
  FreeAndNil(FFlowObjects);
  inherited;
end;

function TfrmFlowChartProductFlowDiagram.NeedWaitForm: Boolean;
begin
  Result := True;
end;

procedure TfrmFlowChartProductFlowDiagram.dxFlowChart1Click(Sender: TObject);
begin
  FlowChartSelectionChangedHandler;
end;

procedure TfrmFlowChartProductFlowDiagram.dxFlowChart1Selected(Sender: TdxCustomFlowChart; Item: TdxFcItem);
begin
  FlowChartSelectionChangedHandler;
end;

function TfrmFlowChartProductFlowDiagram.TryGetItem(AObject: TBaseObject; out AItem: TdxFcItem): Boolean;
var
  APair: TPair<TdxFcItem, TBaseObject>;
begin
  Result := False;
  for APair in FFlowObjects do
  begin
    Result := APair.Value = AObject;
    if Result then
    begin
      AItem := APair.Key;
      Break;
    end;
  end;
end;

function TfrmFlowChartProductFlowDiagram.TryGetShape(AObject: TBaseObject; out AShape: TdxFcObject): Boolean;
var
  AItem: TdxFcItem;
begin
  Result := TryGetItem(AObject, AItem) and (AItem is TdxFcObject);
  if Result then
    AShape := TdxFcObject(AItem)
  else
    AShape := nil;
end;

procedure TfrmFlowChartProductFlowDiagram.AddCategoriesToChart(const ATopLeft: TPoint);

  procedure AddCategoryShape(ACategory: TCategory; const AShapeSize, APosition: TPoint; AIndex: Integer);
  var
    AObject: TdxFcObject;
  begin
    AObject := dxFlowChart1.CreateObject(APosition.X, APosition.Y, AShapeSize.X, AShapeSize.Y, fcsRoundRect);
    AObject.BkColor := dxAlphaColorToColor(DiagramShapeColor);
    AObject.ShapeColor := AObject.BkColor;
    AObject.VertTextPos := fcvpUp;
    AObject.HorzTextPos := fchpCenter;
    AObject.Font.Color := clWhite;
    AObject.Font.Name := DiagramFontName;
    AObject.Font.Size := FontSize;
    AObject.Text := Delimiter + Delimiter + ACategory.Name + Delimiter + Delimiter + ACategory.Description;
    AObject.HorzImagePos := fchpCenter;
    AObject.VertImagePos := fcvpUp;
    AObject.ImageIndex := AIndex;
    AObject.BringToFront;

    FFlowObjects.Add(AObject, ACategory);
  end;

var
  ACategory: TCategory;
  APosition: TPoint;
  AIndex: Integer;
begin
  APosition := ATopLeft;
  for AIndex := 0 to FCategoryList.Keys.Count - 1 do
  begin
    ACategory := FCategoryList.Keys.ToArray[AIndex];
    AddCategoryShape(ACategory, CategoryShapeSize,  APosition, AIndex);
    APosition.Offset(0, CategoryShapeSize.Y + ShapeOffset);
  end;
end;

procedure TfrmFlowChartProductFlowDiagram.AddCustomersToChart(const ATopLeft: TPoint);

  procedure AddCustomerShape(AIndex: Integer; ACustomer: TCustomer; const AShapeSize, APosition: TPoint);
  var
    AObject: TdxFcObject;
  begin
    AObject := dxFlowChart1.CreateObject(APosition.X, APosition.Y, AShapeSize.X, AShapeSize.Y, fcsRectangle);
    AObject.BkColor := GetCustomerShapeColor(AIndex);
    AObject.ShapeColor := AObject.BkColor;
    AObject.VertTextPos := fcvpCenter;
    AObject.HorzTextPos := fchpCenter;
    AObject.Font.Color := clWhite;
    AObject.Font.Name := DiagramFontName;
    AObject.Font.Size := FontSize;
    AObject.Text := ACustomer.FullName + Delimiter + Delimiter + ACustomer.Address + Delimiter + ACustomer.MobilePhone;
    AObject.BringToFront;

    FFlowObjects.Add(AObject, ACustomer);
  end;

var
  ACustomer: TCustomer;
  AIndex: Integer;
  APosition: TPoint;
begin
  APosition := ATopLeft;
  AIndex := 0;
  for ACustomer in FCustomerList do
  begin
    AddCustomerShape(AIndex, ACustomer, ShapeSize, APosition);
    APosition.Offset(0, ShapeSize.Y + ShapeOffset);
    Inc(AIndex);
  end;
end;

procedure TfrmFlowChartProductFlowDiagram.CalculateProductFlowInfos(AOrderList: TOrderList);
var
  ACustomer: TCustomer;
  ACategory: TCategory;
  AInfo: TProductFlowInfo;
  AOrder: TOrder;
  ASumByCategory, ASumByCustomer: Integer;
  ASumByCategories: TDictionary<TCategory, Integer>;
  APair: TPair<TCategory, Integer>;
begin
  for ACustomer in FCustomerList do
  begin
    ASumByCustomer := 0;
    ASumByCategories := TDictionary<TCategory, Integer>.Create;
    try
      for ACategory in FCategoryList.Keys do
      begin
        ASumByCategory := 0;
        for AOrder in AOrderList do
          if (AOrder.Customer = ACustomer) and (AOrder.Category = ACategory) then
            Inc(ASumByCategory, AOrder.Quantity);
        ASumByCategories.Add(ACategory, ASumByCategory);
        Inc(ASumByCustomer, ASumByCategory);
      end;

      for APair in ASumByCategories do
      begin
        AInfo := TProductFlowInfo.Create;
        AInfo.Category := APair.Key;
        AInfo.Customer := ACustomer;
        if ASumByCustomer > 0 then
          AInfo.Weight := APair.Value / ASumByCustomer * 8
        else
          AInfo.Weight := 1;
        FProductFlowInfos.Add(AInfo);
      end;
    finally
      ASumByCategories.Free;
    end;
  end;
end;

procedure TfrmFlowChartProductFlowDiagram.CreateConnector(AProductFlow: TProductFlowInfo);
var
  AConnection: TdxFcConnection;
  ASourceShape, ATargetShape: TdxFcObject;
begin
  if TryGetShape(AProductFlow.Customer, ASourceShape) and TryGetShape(AProductFlow.Category, ATargetShape) then
  begin
    AConnection := dxFlowChart1.CreateConnection(ASourceShape, ATargetShape, 6, 14);
    AConnection.Color := ASourceShape.BkColor;
    AConnection.PenWidth := Round(2 * AProductFlow.Weight) + 1;
    AConnection.Style := fclCurved;
    AConnection.AddPoint(cxPoint(ATargetShape.Bounds.Left - 20, ASourceShape.Bounds.CenterPoint.Y));
    FFlowObjects.Add(AConnection, AProductFlow);
  end;
end;

procedure TfrmFlowChartProductFlowDiagram.AddConnectorsToChart;
var
  AInfo: TProductFlowInfo;
begin
  for AInfo in FProductFlowInfos do
    CreateConnector(AInfo);
end;

function TfrmFlowChartProductFlowDiagram.GenerateOrders(ACustomerCount, ACategoryCount: Integer): TOrderList;
var
  I, J, AOrderCount: Integer;
  AOrder: TOrder;
  APair: TPair<TCategory, TProductList>;
begin
  Result := TOrderList.Create;
  for I := 0 to FCustomerList.Count - 1 do
    for APair in FCategoryList do
    begin
      AOrderCount := RandomRange(1, 10);
      for J := 0 to AOrderCount - 1 do
      begin
        AOrder.Customer := FCustomerList[I];
        AOrder.Quantity := RandomRange(1, 200);
        AOrder.Category := APair.Key;
        AOrder.ProductName := APair.Value[RandomRange(0, APair.Value.Count - 1)].Name;
        Result.Add(AOrder);
      end;
    end;
end;

procedure TfrmFlowChartProductFlowDiagram.GenerateProductFlowData;
begin
  PopulateCategoryList(CategoryCount);
  PopulateCustomerList(CustomerCount);
  PopulateProductList;
  PopulateProductFlow;
  PopulateChart;
end;

procedure TfrmFlowChartProductFlowDiagram.FlowChartSelectionChangedHandler;
  function TryGetInterface(AObject: TdxFcObject; out AIntf: IProductFlowObject): Boolean;
  var
    ABaseObject: TBaseObject;
  begin
    Result := FFlowObjects.TryGetValue(AObject, ABaseObject) and Supports(ABaseObject, IProductFlowObject, AIntf);
  end;

  function GetColumn(AType: TProductFlowObjectType): TObject;
  begin
    if AType = otCustomer  then
      Result := tvProductFlowCustomer
    else
      Result := tvProductFlowCategory;
  end;

  procedure GroupByCategory;
  begin
    tvProductFlowCategory.GroupIndex := 0;
    tvProductFlowCategory.Visible := False;
    tvProductFlow.DataController.Filter.Active := True;
  end;

  procedure AddCriteriaItem(AList: TcxFilterCriteriaItemList; AObject: TdxFcObject);
  var
    AIntf: IProductFlowObject;
  begin
    if TryGetInterface(AObject, AIntf) then
       AList.AddItem(GetColumn(AIntf.ObjectType), foEqual, AIntf.FilterValue, AIntf.FilterValue);
  end;

var
  I: Integer;
  ACriteriaItemList: TcxFilterCriteriaItemList;
begin
  Grid.BeginUpdate;
  try
    tvProductFlow.DataController.Groups.ClearGrouping;
    tvProductFlow.DataController.Filter.Active := False;
    tvProductFlow.DataController.Filter.Clear;
    tvProductFlowCategory.Visible := True;
    if dxFlowChart1.SelectedConnectionCount > 0 then
    begin
      tvProductFlow.DataController.Filter.Root.BoolOperatorKind := fboOr;
      for I := 0 to dxFlowChart1.SelectedConnectionCount - 1 do
      begin
        ACriteriaItemList := tvProductFlow.DataController.Filter.Root.AddItemList(fboAnd);
        AddCriteriaItem(ACriteriaItemList, dxFlowChart1.SelectedConnections[I].ObjectSource);
        AddCriteriaItem(ACriteriaItemList, dxFlowChart1.SelectedConnections[I].ObjectDest);
      end;
      GroupByCategory;
    end
    else
      if dxFlowChart1.SelectedObjectCount > 0 then
      begin
        tvProductFlow.DataController.Filter.Root.BoolOperatorKind := fboOr;
        for I := 0 to dxFlowChart1.SelectedObjectCount - 1 do
          AddCriteriaItem(tvProductFlow.DataController.Filter.Root, dxFlowChart1.SelectedObjects[I]);
        GroupByCategory;
      end;
    tvProductFlow.DataController.Groups.FullExpand;
  finally
    Grid.EndUpdate;
  end;
end;

procedure TfrmFlowChartProductFlowDiagram.InitializeFlowChart;
begin
  dxFlowChart1.BeginUpdate;
  try
    dxFlowChart1.Antialiasing := True;
    dxFlowChart1.GridLineOptions.ShowLines := True;
  finally
    dxFlowChart1.EndUpdate;
  end;
end;

procedure TfrmFlowChartProductFlowDiagram.PopulateCategoryList(ACount: Integer);
var
  I: Integer;
  ACategory: TCategory;
  AImage: TdxSmartImage;
begin
  FCategoryList.Clear;
  DM.mdFoodCategories.Open;
  DM.mdFoodCategories.First;
  for I := 0 to Min(DM.mdFoodCategories.RecordCount, ACount) - 1 do
  begin
    ACategory := TCategory.Create;
    ACategory.Name := DM.mdFoodCategoriesCategoryName.Value;
    ACategory.Description := DM.mdFoodCategoriesDescription.AsString;
    AImage := DM.CreateImageFromField(DM.mdFoodCategoriesIcon_25);
    try
      ACategory.Picture.Assign(AImage);
    finally
      AImage.Free;
    end;
    FCategoryList.Add(ACategory, nil);
    DM.mdFoodCategories.Next;
  end;
end;

procedure TfrmFlowChartProductFlowDiagram.PopulateChart;
begin
  AddCustomersToChart(CustomerShapeStartPoint);
  AddCategoriesToChart(CategoryShapeStartPoint);
  AddConnectorsToChart;
end;

procedure TfrmFlowChartProductFlowDiagram.PopulateCustomerList(ACount: Integer);
var
  I: Integer;
  ACustomer: TCustomer;
begin
  FCustomerList.Clear;
  DM.mdEmployees.Open;
  DM.mdEmployees.First;
  for I := 0 to ACount - 1 do
  begin
    ACustomer := TCustomer.Create;
    ACustomer.Load(DM.mdEmployees);
    FCustomerList.Add(ACustomer);
    DM.mdEmployees.Next;
  end;
end;

procedure TfrmFlowChartProductFlowDiagram.PopulateProductList;

  function FindCategory(const AName: string): TCategory;
  var
    ACategory: TCategory;
  begin
    Result := nil;
    for ACategory in FCategoryList.Keys do
      if ACategory.Name = AName then
      begin
        Result := ACategory;
        Break;
      end;
  end;

var
  I: Integer;
  ACategory: TCategory;
  AProduct: TProduct;
  AProductList: TProductList;
begin
  DM.mdFoods.Open;
  DM.mdFoods.First;
  for I := 0 to DM.mdFoods.RecordCount - 1 do
  begin
    ACategory := FindCategory(DM.mdFoodsCategoryName.AsString);
    if ACategory <> nil then
    begin
      AProduct.Name := DM.mdFoodsProductName.Value;
      AProduct.Category := ACategory;
      AProductList := FCategoryList[ACategory];
      if AProductList = nil then
      begin
        AProductList := TProductList.Create;
        FCategoryList.AddOrSetValue(ACategory, AProductList);
      end;
      AProductList.Add(AProduct);
    end;
    DM.mdFoods.Next;
  end;
end;

procedure TfrmFlowChartProductFlowDiagram.PopulateProductFlow;
var
  AOrder: TOrder;
  AOrderList: TOrderList;
begin
  AOrderList := GenerateOrders(CustomerCount, CategoryCount);
  try
    CalculateProductFlowInfos(AOrderList);
    mdProductFlow.Open;
    for AOrder in AOrderList do
    begin
      mdProductFlow.Insert;
      mdProductFlowCategory.AsString := AOrder.Category.Name;
      mdProductFlowCustomer.AsString := AOrder.Customer.FullName;
      mdProductFlowProduct.AsString := AOrder.ProductName;
      mdProductFlowQuantity.Value := AOrder.Quantity;
      mdProductFlow.Post;
    end;
  finally
    AOrderList.Free;
  end;
end;

procedure TfrmFlowChartProductFlowDiagram.FormShow(Sender: TObject);
begin
  inherited;
  GenerateProductFlowData;
end;

function TfrmFlowChartProductFlowDiagram.GetCaption: string;
begin
  Result := 'Product Flow Diagram';
end;

function TfrmFlowChartProductFlowDiagram.GetDescription: string;
begin
  Result := 'This example demonstrates a diagram that shows the correlation between' +
    'customers and product categories. You can click diagram shapes and connectors' +
    'to filter content.';
end;

class function TfrmFlowChartProductFlowDiagram.GetID: Integer;
begin
  Result := 5;
end;

{ TCategory }

constructor TCategory.Create;
begin
  inherited Create;
  FPicture := TdxSmartImage.Create;
end;

destructor TCategory.Destroy;
begin
  FreeAndNil(FPicture);
  inherited Destroy;
end;

function TCategory.FilterValue: string;
begin
  Result := Name;
end;

function TCategory.ObjectType: TProductFlowObjectType;
begin
  Result := otCategory;
end;

{ TCustomer }

function TCustomer.FilterValue: string;
begin
  Result := FullName;
end;

function TCustomer.ObjectType: TProductFlowObjectType;
begin
  Result := otCustomer;
end;

{ TfrmFlowChartProductFlowDiagram.TOrderList }

constructor TfrmFlowChartProductFlowDiagram.TOrderList.Create;
begin
  inherited Create{$IFDEF DELPHI12}(IComparer<TOrder>(TdxComparer<TOrder>.Default)){$ENDIF};
end;

{ TfrmFlowChartProductFlowDiagram.TProductList }

constructor TfrmFlowChartProductFlowDiagram.TProductList.Create;
begin
  inherited Create{$IFDEF DELPHI12}(IComparer<TProduct>(TdxComparer<TProduct>.Default)){$ENDIF};
end;

initialization
  TfrmFlowChartProductFlowDiagram.Register;

end.
