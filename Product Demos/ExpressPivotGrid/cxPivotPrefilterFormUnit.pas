unit cxPivotPrefilterFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, cxPivotSalesPersonFormUnit, cxClasses, cxGraphics, cxCustomData,
  cxStyles, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, cxCustomPivotGrid,
  cxDBPivotGrid, cxControls, cxCheckBox, cxContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, Vcl.StdCtrls, Vcl.ExtCtrls, cxLabel, cxCalendar, cxFilter,
  cxDBData, cxLookAndFeels, cxLookAndFeelPainters, dxLayoutContainer, dxLayoutcxEditAdapters, dxLayoutLookAndFeels,
  Vcl.ActnList, dxLayoutControl, System.Actions, dxBarBuiltInMenu;

type
  TDateType = (dtFirst, dtLast);
  TUserFiltering = (ufNone, ufCustom, ufSimple, ufLike, ufList, ufTwoField, ufBetween);

  TfrmPrefilter = class(TfrmSalesPerson)
    dxLayoutItem2: TdxLayoutItem;
    cbFilters: TcxComboBox;
    procedure cbFiltersPropertiesChange(Sender: TObject);
    procedure DBPivotGridFilterChanged(Sender: TObject);
  private
    FPrefilterLock: Boolean;
    FPropertiesLock: Boolean;
    function GetDate(ADateType: TDateType): TDate;
    function GetFilterIndex(const AFiltering: TUserFiltering): integer;
    function GetPrefilter: TcxDBDataFilterCriteria;
    procedure PopulateFilterList;
    procedure SetFilter(const AFiltering: TUserFiltering);
  protected
    property Prefilter: TcxDBDataFilterCriteria read GetPrefilter;
  public
    procedure ActivateDataSet; override;
    class function GetID: Integer; override;
  end;

implementation

uses cxPivotBaseFormUnit;

{$R *.dfm}

{ TfrmPrefilter }

procedure TfrmPrefilter.ActivateDataSet;
begin
  inherited;
  PopulateFilterList;
end;

class function TfrmPrefilter.GetID: Integer;
begin
  Result := 25;
end;

procedure TfrmPrefilter.cbFiltersPropertiesChange(Sender: TObject);
begin
  inherited;
  if not FPropertiesLock then
    with TcxComboBox(Sender) do
      SetFilter(TUserFiltering(Properties.Items.Objects[ItemIndex]));
end;

function TfrmPrefilter.GetDate(ADateType: TDateType): TDate;
var
  AYear: Word;
begin
  AYear := CurrentYear;
  case ADateType of
    dtFirst:
      Result := EncodeDate(AYear, 1, 1);
  else
    Result := EncodeDate(AYear, 12, 31);
  end;
end;

function TfrmPrefilter.GetFilterIndex(
  const AFiltering: TUserFiltering): integer;
var
  I: Integer;
begin
  with cbFilters.Properties do
    for I := 0 to Items.Count - 1 do
    begin
       Result := I;
       if TUserFiltering(Items.Objects[I]) = AFiltering then
         Exit;
    end;
  Result := -1;
end;

function TfrmPrefilter.GetPrefilter: TcxDBDataFilterCriteria;
begin
  Result := DBPivotGrid.DataController.Filter;
end;

procedure TfrmPrefilter.PopulateFilterList;
const
  AFilterDesc: array[TUserFiltering] of string = (
    'No prefilter',
    'Custom prefilter',
    'EXTENDEDPRICE > 5000',
    'CATEGORYNAME contains "/" symbol',
    'CATEGORYNAME is Seafood or Meat/Poultry',
    'All seafood sales by Robert King',
    'Total sales for this year'
    );
var
 AFilter: TUserFiltering;
begin
  with cbFilters do
  begin
    Clear;
    for AFilter := Low(TUserFiltering) to High(TUserFiltering) do
      Properties.Items.AddObject(AFilterDesc[AFilter], Pointer(AFilter));
    ItemIndex := GetFilterIndex(ufSimple);
    SetFilter(ufSimple);
  end;
end;

procedure TfrmPrefilter.SetFilter(const AFiltering: TUserFiltering);
var
  ADate: TDate;
begin
  if AFiltering = ufCustom then
    DBPivotGrid.ShowPrefilterDialog
  else
  begin
    Prefilter.BeginUpdate;
    FPrefilterLock := True;
    try
      with Prefilter.Root do
      begin
        Clear;
        case AFiltering of
          ufSimple:
            AddItem(pgfExtendedPrice, foGreater, 5000, '5000');
          ufList:
            begin
              BoolOperatorKind := fboOr;
              AddItem(pgfCategoryName, foEqual, 'Seafood', 'Seafood');
              AddItem( pgfCategoryName, foEqual, 'Meat/Poultry', 'Meat/Poultry');
             end;
          ufLike:
             AddItem(pgfCategoryName, foLike, '%/%', '"/"');
          ufTwoField:
             begin
               BoolOperatorKind := fboAnd;
               AddItem(pgfSalesPerson, foEqual, 'Robert King', 'Robert King');
               AddItem(pgfCategoryName, foEqual, 'Seafood', 'Seafood');
             end;
          ufBetween:
            begin
              BoolOperatorKind := fboAnd;
              ADate := GetDate(dtFirst);
              AddItem(pgfOrderDate, foGreaterEqual, ADate, DateToStr(ADate));
              ADate := GetDate(dtLast);
              AddItem(pgfOrderDate, foLessEqual, ADate, DateToStr(ADate));
            end;
        end;
      end;
      Prefilter.Active := True;
    finally
      Prefilter.EndUpdate;
      FPrefilterLock := False;
    end;
  end;
end;

procedure TfrmPrefilter.DBPivotGridFilterChanged(Sender: TObject);

  procedure SetFilterIndex(AValue: Integer);
  begin
    FPropertiesLock := True;
    cbFilters.ItemIndex := AValue;
    FPropertiesLock := False;
  end;

const
  AFilterType: array [Boolean] of TUserFiltering = (ufCustom, ufNone);

begin
  inherited;
  if not FPrefilterLock then
    SetFilterIndex(GetFilterIndex(AFilterType[Prefilter.IsEmpty or not Prefilter.Active]));
end;

initialization
  TfrmPrefilter.Register;

finalization


end.
