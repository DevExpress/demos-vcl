unit WebsiteStatisticsDataGenerator;

{$I cxVer.inc}

interface

uses
  System.SysUtils, System.Classes, System.Generics.Collections, System.DateUtils, System.Math;

type
  TWebsiteStatisticsItem = record
  public
    Count: Integer;
    Date: TDateTime;
    TrafficSource: string;
    TrafficSourceDetails: string;
    Browser: string;
    BrowserDetails: string;
  end;

  TChanceItem = class
  public
    Chance: Double;
  end;

  TDataPairElement = class(TChanceItem)
  public
    Data: string;
    DataDetails: string;
  end;

  TUserDataElement = class(TChanceItem)
  public
    UserId: string;
  end;

  TWebsiteStatisticsDataGenerator = class
  private
    FJSONString: string;
    FItems: TList<TWebsiteStatisticsItem>;
    procedure InitializeData;
    function GetTrafficSourceData: TObjectList<TDataPairElement>;
    function GetBrowserData: TObjectList<TDataPairElement>;
    function GetUsersData(Count: Integer): TObjectList<TUserDataElement>;
    procedure InitChance(DataList: TObjectList<TChanceItem>);
    function GetJSONString: string;
  public
    constructor Create;
    destructor Destroy; override;
    property JSONString: string read GetJSONString;
    property WebsiteStatistics: TList<TWebsiteStatisticsItem> read FItems;
  end;

implementation

{ TWebsiteStatisticsDataGenerator }

uses
  System.JSON;

constructor TWebsiteStatisticsDataGenerator.Create;
begin
  inherited Create;
  Randomize;
  FItems := TList<TWebsiteStatisticsItem>.Create;
  FJSONString := '';
  InitializeData;
end;

destructor TWebsiteStatisticsDataGenerator.Destroy;
begin
  FItems.Free;
  inherited Destroy;
end;

procedure TWebsiteStatisticsDataGenerator.InitializeData;
var
  ATrafficList, ABrowserList: TObjectList<TDataPairElement>;
  AUsersList: TObjectList<TUserDataElement>;
  ACurrentDate, AEndDate: TDateTime;
  AMonthModifier: Double;
  ABaseCount: Integer;
  ATraffic: TDataPairElement;
  ABrowser: TDataPairElement;
  AItem: TWebsiteStatisticsItem;
begin
  ATrafficList := GetTrafficSourceData;
  ABrowserList := GetBrowserData;
  AUsersList := GetUsersData(10000);
  try
    ACurrentDate := IncYear(Date, -1);
    AEndDate := IncDay(Date, -1);

    while ACurrentDate < AEndDate do
    begin
      AMonthModifier := 1 + 0.03 * Abs(MonthOf(ACurrentDate) - 6);
      ABaseCount := RandomRange(100000, 150000);

      for ABrowser in ABrowserList do
        for ATraffic in ATrafficList do
        begin
          AItem.Count := Trunc(ABaseCount * (ABrowser.Chance / 100) * (ATraffic.Chance / 100) * AMonthModifier);
          AItem.Date := ACurrentDate;
          AItem.TrafficSource := ATraffic.Data;
          AItem.TrafficSourceDetails := ATraffic.DataDetails;
          AItem.Browser := ABrowser.Data;
          AItem.BrowserDetails := ABrowser.DataDetails;
          FItems.Add(AItem);
        end;

      ACurrentDate := IncMonth(ACurrentDate);
    end;
  finally
    ATrafficList.Free;
    ABrowserList.Free;
    AUsersList.Free;
  end;
end;

procedure TWebsiteStatisticsDataGenerator.InitChance(DataList: TObjectList<TChanceItem>);
var
  ASum: Double;
  AElem: TChanceItem;
begin
  ASum := 0;
  for AElem in DataList do
    ASum := ASum + AElem.Chance;

  if ASum > 0 then
    for AElem in DataList do
      AElem.Chance := 100 * AElem.Chance / ASum;
end;

function TWebsiteStatisticsDataGenerator.GetUsersData(Count: Integer): TObjectList<TUserDataElement>;
var
  I: Integer;
begin
  Result := TObjectList<TUserDataElement>.Create(True);
  for I := 0 to Count - 1 do
  begin
    var U := TUserDataElement.Create;
    U.UserId := TGUID.NewGuid.ToString;
    U.Chance := RandomRange(1, 3);
    Result.Add(U);
  end;
  InitChance(TObjectList<TChanceItem>(Result));
end;

function TWebsiteStatisticsDataGenerator.GetBrowserData: TObjectList<TDataPairElement>;

  function Add(Chance: Double; const Data, Details: string): TDataPairElement;
  begin
    Result := TDataPairElement.Create;
    Result.Chance := Chance;
    Result.Data := Data;
    Result.DataDetails := Details;
  end;

begin
  Result := TObjectList<TDataPairElement>.Create(True);
  Result.Add(Add(2.37, 'IE', '11'));
  Result.Add(Add(0.23, 'IE', 'Others'));
  Result.Add(Add(3.5, 'Edge', 'Latest'));
  Result.Add(Add(4.41, 'Chrome', 'Latest'));
  Result.Add(Add(59.19, 'Chrome', 'Others'));
  Result.Add(Add(6.41, 'Firefox', 'Latest'));
  Result.Add(Add(14.2, 'Safari', 'Latest'));
  Result.Add(Add(3.23, 'UC', 'Latest'));
  Result.Add(Add(3.65, 'Opera', 'Latest'));
  Result.Add(Add(2.81, 'Unknown', 'Unknown'));
  InitChance(TObjectList<TChanceItem>(Result));
end;

function TWebsiteStatisticsDataGenerator.GetJSONString: string;
var
  AItem: TWebsiteStatisticsItem;
  AJSONArray: TJSONArray;
  AJSONObject, ARoot: TJSONObject;
begin
  if FJSONString <> '' then
    Exit(FJSONString);

  ARoot := TJSONObject.Create;
  try
    AJSONArray := TJSONArray.Create;
    try
      for AItem in Self.WebsiteStatistics do
      begin
        AJSONObject := TJSONObject.Create;
        AJSONObject.AddPair('Date', DateToISO8601(AItem.Date));
        AJSONObject.AddPair('Count', TJSONNumber.Create(AItem.Count));
        AJSONObject.AddPair('TrafficSource', AItem.TrafficSource);
        AJSONObject.AddPair('TrafficSourceDetails', AItem.TrafficSourceDetails);
        AJSONObject.AddPair('Browser', AItem.Browser);
        AJSONObject.AddPair('BrowserDetails', AItem.BrowserDetails);
        AJSONArray.AddElement(AJSONObject);
      end;
    except
      AJSONArray.Free;
      raise;
    end;
    ARoot.AddPair('Employees', AJSONArray);
    FJSONString := ARoot.Format(2);
  finally
    ARoot.Free;
  end;

  Result := FJSONString;
end;

function TWebsiteStatisticsDataGenerator.GetTrafficSourceData: TObjectList<TDataPairElement>;

  function Add(Chance: Double; const Data, Details: string): TDataPairElement;
  begin
    Result := TDataPairElement.Create;
    Result.Chance := Chance;
    Result.Data := Data;
    Result.DataDetails := Details;
  end;

begin
  Result := TObjectList<TDataPairElement>.Create(True);
  Result.Add(Add(51.0, 'Direct', 'Direct'));
  Result.Add(Add(24.0, 'Referring Site', 'Facebook'));
  Result.Add(Add(2.0, 'Referring Site', 'Google Ads'));
  Result.Add(Add(5.0, 'Referring Site', 'Reddit'));
  Result.Add(Add(13.3, 'Referring Site', 'Twitter'));
  Result.Add(Add(2.3, 'Referring Site', 'LinkedIn'));
  Result.Add(Add(3.3, 'Search Engine', 'Bing'));
  Result.Add(Add(10.3, 'Search Engine', 'Google'));
  Result.Add(Add(2.3, 'Search Engine', 'Yahoo'));
  InitChance(TObjectList<TChanceItem>(Result));
end;

end.

