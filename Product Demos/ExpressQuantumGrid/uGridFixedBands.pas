unit uGridFixedBands;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxGridFrame, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxControls, cxGridCustomView, cxGridLevel, cxGrid,
  Vcl.StdCtrls, Vcl.ExtCtrls, cxSpinEdit, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxEdit, cxClasses, cxLookAndFeels,
  cxLookAndFeelPainters, cxDataStorage, cxTextEdit, cxContainer, cxLabel,
  cxNavigator, Vcl.Menus, dxLayoutControlAdapters, dxLayoutContainer, cxButtons, dxLayoutControl, Vcl.ActnList, dxDateRanges,
  dxScrollbarAnnotations, dxLayoutLookAndFeels, System.Actions,
  cxGroupBox, dxPanel, cxGeometry, dxFramedControl;

type
  TfrmGridFixedBands = class(TdxGridFrame)
    GridLevel: TcxGridLevel;
    BandedTableView: TcxGridBandedTableView;
    clCarModel: TcxGridBandedColumn;
    clTotals: TcxGridBandedColumn;
  private
    procedure SetupGrid;
    procedure CreateColumns;
    procedure DoGridPopupMenu(ASenderMenu: TComponent;
        AHitTest: TcxCustomGridHitTest; X,Y: Integer; var AllowPopup: Boolean);

  protected
    function GetDescription: string; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;


implementation

{$R *.dfm}
uses
  dxFrames, FrameIDs, cxGridPopUpMenuConsts, cxGridMenuOperations, dxCore, System.DateUtils, uStrsConst;

const
  YearsCount = 9;
  ModelCount = 20;
  ModelNames : Array[0..ModelCount - 1] of string =
   ('Chrysler', 'Dodge', 'Plymouth', 'Ford', 'Mercury',
    'Buick', 'Cadillac', 'Chevrolet', 'Oldsmobile', 'Pontiac',
    'Saturn', 'Toyota Cavalier', 'EV1', 'Mazda', 'BMW',
    'Honda', 'Mitsubishi', 'Nissan', 'Subaru','Toyota');

var
  StartYear: Integer;

  CarsProductionData: Array[0..ModelCount - 1, 0..YearsCount - 1] of Integer = (
  (132155, 84189,   75104,   120864,  55852,  41814,  45800,  49532,  86432),
  (285186, 258680,  330007,  313281,  303831, 236880, 239497, 279121, 321319),
  (145254, 169717,  172509,  119659,  190607, 164260, 136874, 124977, 52748),
  (996614, 1118788, 1329567, 1106175, 939905, 996300, 960420, 943098, 964880),
  (432321, 470985,  464539,  351663,  371702, 400808, 351482, 318321, 288466),
  (401788, 433977,  526446,  388949,  325411, 288322, 223764, 229007, 195857),
  (208798, 207337,  220692,  177937,  163872, 174709, 167530, 142838, 173306),
  (664253, 721183,  657402,  605347,  529933, 709334, 517030, 668193, 541080),
  (377049, 405496,  487333,  417432,  292801, 296579, 263887, 282608, 246217),
  (615182, 502841,  653874,  622519,  579364, 657030, 519354, 597615, 611748),
  (193656, 280406,  277192,  324835,  312461, 253285, 263933, 267002, 286984),
  (0,      0,       0,       1949,    10964,  11499,  4645,   9837,   1144),
  (0,      0,       0,       0,       0,      0,      0,      329,    0),
  (183648, 201746,  265527,  162281,  124196, 105580, 155515, 177330, 116151),
  (0,      0,       0,       12166,   53120,  63668,  54115,  48150,  40420),
  (496834, 393621,  473790,  552359,  695859, 664968, 707314, 709096, 712122),
  (148733, 129336,  186472,  237403,  195842, 170293, 170100, 154661, 210053),
  (170758, 283968,  317610,  321226,  282898, 302273, 236775, 182360, 163058),
  (53838,  48036,   48949,   87610,   88903,  107018, 104630, 93458,  114998),
  (370956, 343831,  433744,  566859,  595104, 599394, 562283, 548336, 582986));

type
  TCarProductionDataSource = class(TcxCustomDataSource)
  private
    function GetCarCount(AYearIndex, AModelIndex: Integer): Integer;
    function GetCarCountByModel(AModelIndex: Integer): Integer;
    procedure SetCarCount(AYearIndex, AModelIndex, AValue: Integer);
  protected
    function GetRecordCount: Integer; override;
    function GetDisplayText(ARecordHandle: TcxDataRecordHandle;
      AItemHandle: TcxDataItemHandle): string; override;
    function GetValue(ARecordHandle: TcxDataRecordHandle;
      AItemHandle: TcxDataItemHandle): Variant; override;
    procedure SetValue(ARecordHandle: TcxDataRecordHandle; AItemHandle: TcxDataItemHandle;
        const AValue: Variant); override;
  public
  end;

function TCarProductionDataSource.GetRecordCount: Integer;
begin
  Result := ModelCount;
end;

function TCarProductionDataSource.GetDisplayText(ARecordHandle: TcxDataRecordHandle;
  AItemHandle: TcxDataItemHandle): string;
begin
  if Integer(AItemHandle) = 0 then
    Result := GetValue(ARecordHandle, AItemHandle)
  else Result := FormatFloat('###,###,###,###',  GetValue(ARecordHandle, AItemHandle));
end;

function TCarProductionDataSource.GetValue(ARecordHandle: TcxDataRecordHandle;
      AItemHandle: TcxDataItemHandle): Variant;
begin
  if Integer(AItemHandle) = 0 then
    Result := ModelNames[Integer(ARecordHandle)]
  else
    if Integer(AItemHandle) = 1 then
      Result := GetCarCountByModel(Integer(ARecordHandle))
    else Result := GetCarCount(Integer(AItemHandle) - 2, Integer(ARecordHandle));
end;

procedure TCarProductionDataSource.SetValue(ARecordHandle: TcxDataRecordHandle; AItemHandle: TcxDataItemHandle;
        const AValue: Variant);
begin
  if Integer(AItemHandle) > 1 then
    SetCarCount(Integer(AItemHandle) - 2, Integer(ARecordHandle), AValue);
end;

function TCarProductionDataSource.GetCarCount(AYearIndex, AModelIndex: Integer): Integer;
begin
  Result := CarsProductionData[AModelIndex, AYearIndex];
end;

function TCarProductionDataSource.GetCarCountByModel(AModelIndex: Integer): Integer;
var
  I: Integer;
begin
  Result := 0;
  for I := 0 to YearsCount - 1 do
    Inc(Result, GetCarCount(I, AModelIndex));
end;

procedure TCarProductionDataSource.SetCarCount(AYearIndex, AModelIndex, AValue: Integer);
begin
  CarsProductionData[AModelIndex, AYearIndex] := AValue;
end;

constructor TfrmGridFixedBands.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  StartYear := YearOf(Now) - YearsCount;
  SetupGrid;
  GridPopupMenu.OnPopup := DoGridPopupMenu;
end;

destructor TfrmGridFixedBands.Destroy;
begin
  BandedTableView.DataController.CustomDataSource.Free;
  BandedTableView.DataController.CustomDataSource := nil;
  inherited Destroy;
end;

procedure TfrmGridFixedBands.SetupGrid;
begin
  CreateColumns;
  BandedTableView.DataController.CustomDataSource := TCarProductionDataSource.Create;
end;

procedure TfrmGridFixedBands.CreateColumns;
var
  I: Integer;
  AColumn: TcxGridBandedColumn;
  ASummaryItem: TcxDataSummaryItem;
begin
  for I := YearsCount - 1 downto 0 do
  begin
    AColumn := BandedTableView.CreateColumn;
    AColumn.Position.BandIndex := 1;
    AColumn.Name := 'cl' + IntToStr(StartYear + I);
    AColumn.Caption := IntToStr(StartYear + I);
    AColumn.DataBinding.ValueTypeClass := TcxIntegerValueType;
    AColumn.Options.Filtering := False;
    BandedTableView.DataController.ChangeTextStored(AColumn.Index, True);
    AColumn.HeaderAlignmentHorz := taCenter;
    AColumn.PropertiesClass := TcxSpinEditProperties;
    TcxSpinEditProperties(AColumn.Properties).Alignment.Horz := taRightJustify;
    TcxSpinEditProperties(AColumn.Properties).ValueType := vtInt;
    TcxSpinEditProperties(AColumn.Properties).MaxValue := 100000000;
    AColumn.Width := 120;
    AColumn.FooterAlignmentHorz := taRightJustify;
    ASummaryItem := BandedTableView.DataController.Summary.FooterSummaryItems.Add;
    ASummaryItem.ItemLink := AColumn;
    ASummaryItem.Kind := skSum;
    ASummaryItem.Format := '###,###,###,###';
  end;
end;

function TfrmGridFixedBands.GetDescription: string;
begin
  Result := sdxFrameFixedBandsDescription;
end;

procedure TfrmGridFixedBands.DoGridPopupMenu(ASenderMenu: TComponent;
        AHitTest: TcxCustomGridHitTest; X,Y: Integer; var AllowPopup: Boolean);
var
  AMenuItem: TMenuItem;
begin
  AMenuItem := TPopupMenu(ASenderMenu).Items.Find(cxGetResourceString(@cxSGridFieldChooser));
  if AMenuItem <> nil then
  begin
    AMenuItem.Visible := False;
  end;
end;


initialization
  dxFrameManager.RegisterFrame(GridFixedBandsFrameID, TfrmGridFixedBands,
    GridFixedBandsFrameName, GridFixedBandsImageIndex, -1, TableBandedTableGroupIndex, -1);

end.
