unit Sales;

interface

uses Xml.xmldom, Xml.XMLDoc, Xml.XMLIntf;

type

{ Forward Decls }

  IXMLSalesType = interface;
  IXMLShopType = interface;
  IXMLShopStatisticsType = interface;
  IXMLStatisticType = interface;

{ IXMLSalesType }

  IXMLSalesType = interface(IXMLNodeCollection)
    ['{CF0EDB6D-6CF0-454E-9B60-6D35B4392C10}']
    { Property Accessors }
    function Get_Shop(Index: Integer): IXMLShopType;
    { Methods & Properties }
    function Add: IXMLShopType;
    function Insert(const Index: Integer): IXMLShopType;
    property Shop[Index: Integer]: IXMLShopType read Get_Shop; default;
  end;

{ IXMLShopType }

  IXMLShopType = interface(IXMLNode)
    ['{F7D86BB8-5CC3-4AFC-AAC0-74B1D5FC3C03}']
    { Property Accessors }
    function Get_ShopName: string;
    function Get_ShopAddr: string;
    function Get_ShopPhone: string;
    function Get_ShopFax: string;
    function Get_Latitude: UnicodeString;
    function Get_Longitude: UnicodeString;
    function Get_ShopStatistics: IXMLShopStatisticsType;
    procedure Set_ShopName(Value: string);
    procedure Set_ShopAddr(Value: string);
    procedure Set_ShopPhone(Value: string);
    procedure Set_ShopFax(Value: string);
    procedure Set_Latitude(Value: UnicodeString);
    procedure Set_Longitude(Value: UnicodeString);
    { Methods & Properties }
    property ShopName: string read Get_ShopName write Set_ShopName;
    property ShopAddr: string read Get_ShopAddr write Set_ShopAddr;
    property ShopPhone: string read Get_ShopPhone write Set_ShopPhone;
    property ShopFax: string read Get_ShopFax write Set_ShopFax;
    property Latitude: UnicodeString read Get_Latitude write Set_Latitude;
    property Longitude: UnicodeString read Get_Longitude write Set_Longitude;
    property ShopStatistics: IXMLShopStatisticsType read Get_ShopStatistics;
  end;

{ IXMLShopStatisticsType }

  IXMLShopStatisticsType = interface(IXMLNodeCollection)
    ['{17DB8D3D-5F9F-4D40-BE66-EC1C80B2BD7F}']
    { Property Accessors }
    function Get_Statistic(Index: Integer): IXMLStatisticType;
    { Methods & Properties }
    function Add: IXMLStatisticType;
    function Insert(const Index: Integer): IXMLStatisticType;
    property Statistic[Index: Integer]: IXMLStatisticType read Get_Statistic; default;
  end;

{ IXMLStatisticType }

  IXMLStatisticType = interface(IXMLNode)
    ['{E0632F88-896E-4513-AE07-1D4676896A59}']
    { Property Accessors }
    function Get_ProductsGroupName: string;
    function Get_ProductGroupSales: string;
    procedure Set_ProductsGroupName(Value: string);
    procedure Set_ProductGroupSales(Value: string);
    { Methods & Properties }
    property ProductsGroupName: string read Get_ProductsGroupName write Set_ProductsGroupName;
    property ProductGroupSales: string read Get_ProductGroupSales write Set_ProductGroupSales;
  end;

{ Forward Decls }

  TXMLSalesType = class;
  TXMLShopType = class;
  TXMLShopStatisticsType = class;
  TXMLStatisticType = class;

{ TXMLSalesType }

  TXMLSalesType = class(TXMLNodeCollection, IXMLSalesType)
  protected
    { IXMLSalesType }
    function Get_Shop(Index: Integer): IXMLShopType;
    function Add: IXMLShopType;
    function Insert(const Index: Integer): IXMLShopType;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLShopType }

  TXMLShopType = class(TXMLNode, IXMLShopType)
  protected
    { IXMLShopType }
    function Get_ShopName: string;
    function Get_ShopAddr: string;
    function Get_ShopPhone: string;
    function Get_ShopFax: string;
    function Get_Latitude: UnicodeString;
    function Get_Longitude: UnicodeString;
    function Get_ShopStatistics: IXMLShopStatisticsType;
    procedure Set_ShopName(Value: string);
    procedure Set_ShopAddr(Value: string);
    procedure Set_ShopPhone(Value: string);
    procedure Set_ShopFax(Value: string);
    procedure Set_Latitude(Value: UnicodeString);
    procedure Set_Longitude(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLShopStatisticsType }

  TXMLShopStatisticsType = class(TXMLNodeCollection, IXMLShopStatisticsType)
  protected
    { IXMLShopStatisticsType }
    function Get_Statistic(Index: Integer): IXMLStatisticType;
    function Add: IXMLStatisticType;
    function Insert(const Index: Integer): IXMLStatisticType;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLStatisticType }

  TXMLStatisticType = class(TXMLNode, IXMLStatisticType)
  protected
    { IXMLStatisticType }
    function Get_ProductsGroupName: string;
    function Get_ProductGroupSales: string;
    procedure Set_ProductsGroupName(Value: string);
    procedure Set_ProductGroupSales(Value: string);
  end;

{ Global Functions }

function GetSales(Doc: IXMLDocument): IXMLSalesType;
function LoadSales(const FileName: string): IXMLSalesType;
function NewSales: IXMLSalesType;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetSales(Doc: IXMLDocument): IXMLSalesType;
begin
  Result := Doc.GetDocBinding('Sales', TXMLSalesType, TargetNamespace) as IXMLSalesType;
end;

function LoadSales(const FileName: string): IXMLSalesType;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('Sales', TXMLSalesType, TargetNamespace) as IXMLSalesType;
end;

function NewSales: IXMLSalesType;
begin
  Result := NewXMLDocument.GetDocBinding('Sales', TXMLSalesType, TargetNamespace) as IXMLSalesType;
end;

{ TXMLSalesType }

procedure TXMLSalesType.AfterConstruction;
begin
  RegisterChildNode('Shop', TXMLShopType);
  ItemTag := 'Shop';
  ItemInterface := IXMLShopType;
  inherited;
end;

function TXMLSalesType.Get_Shop(Index: Integer): IXMLShopType;
begin
  Result := List[Index] as IXMLShopType;
end;

function TXMLSalesType.Add: IXMLShopType;
begin
  Result := AddItem(-1) as IXMLShopType;
end;

function TXMLSalesType.Insert(const Index: Integer): IXMLShopType;
begin
  Result := AddItem(Index) as IXMLShopType;
end;

{ TXMLShopType }

procedure TXMLShopType.AfterConstruction;
begin
  RegisterChildNode('ShopStatistics', TXMLShopStatisticsType);
  inherited;
end;

function TXMLShopType.Get_ShopName: string;
begin
  Result := ChildNodes['ShopName'].Text;
end;

procedure TXMLShopType.Set_ShopName(Value: string);
begin
  ChildNodes['ShopName'].NodeValue := Value;
end;

function TXMLShopType.Get_ShopAddr: string;
begin
  Result := ChildNodes['ShopAddr'].Text;
end;

procedure TXMLShopType.Set_ShopAddr(Value: string);
begin
  ChildNodes['ShopAddr'].NodeValue := Value;
end;

function TXMLShopType.Get_ShopPhone: string;
begin
  Result := ChildNodes['ShopPhone'].Text;
end;

procedure TXMLShopType.Set_ShopPhone(Value: string);
begin
  ChildNodes['ShopPhone'].NodeValue := Value;
end;

function TXMLShopType.Get_ShopFax: string;
begin
  Result := ChildNodes['ShopFax'].Text;
end;

procedure TXMLShopType.Set_ShopFax(Value: string);
begin
  ChildNodes['ShopFax'].NodeValue := Value;
end;

function TXMLShopType.Get_Latitude: UnicodeString;
begin
  Result := ChildNodes['Latitude'].Text;
end;

procedure TXMLShopType.Set_Latitude(Value: UnicodeString);
begin
  ChildNodes['Latitude'].NodeValue := Value;
end;

function TXMLShopType.Get_Longitude: UnicodeString;
begin
  Result := ChildNodes['Longitude'].Text;
end;

procedure TXMLShopType.Set_Longitude(Value: UnicodeString);
begin
  ChildNodes['Longitude'].NodeValue := Value;
end;

function TXMLShopType.Get_ShopStatistics: IXMLShopStatisticsType;
begin
  Result := ChildNodes['ShopStatistics'] as IXMLShopStatisticsType;
end;

{ TXMLShopStatisticsType }

procedure TXMLShopStatisticsType.AfterConstruction;
begin
  RegisterChildNode('Statistic', TXMLStatisticType);
  ItemTag := 'Statistic';
  ItemInterface := IXMLStatisticType;
  inherited;
end;

function TXMLShopStatisticsType.Get_Statistic(Index: Integer): IXMLStatisticType;
begin
  Result := List[Index] as IXMLStatisticType;
end;

function TXMLShopStatisticsType.Add: IXMLStatisticType;
begin
  Result := AddItem(-1) as IXMLStatisticType;
end;

function TXMLShopStatisticsType.Insert(const Index: Integer): IXMLStatisticType;
begin
  Result := AddItem(Index) as IXMLStatisticType;
end;

{ TXMLStatisticType }

function TXMLStatisticType.Get_ProductsGroupName: string;
begin
  Result := ChildNodes['ProductsGroupName'].Text;
end;

procedure TXMLStatisticType.Set_ProductsGroupName(Value: string);
begin
  ChildNodes['ProductsGroupName'].NodeValue := Value;
end;

function TXMLStatisticType.Get_ProductGroupSales: string;
begin
  Result := ChildNodes['ProductGroupSales'].Text;
end;

procedure TXMLStatisticType.Set_ProductGroupSales(Value: string);
begin
  ChildNodes['ProductGroupSales'].NodeValue := Value;
end;

end.
