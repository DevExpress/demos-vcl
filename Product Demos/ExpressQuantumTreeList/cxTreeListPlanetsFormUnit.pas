unit cxTreeListPlanetsFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, cxUnboundTreeListBaseFormUnit, cxGraphics, cxCustomData, cxStyles,
  cxTL, dxSkinsCore, cxControls, cxInplaceContainer,
  cxTLdxBarBuiltInMenu, cxTextEdit, cxLookAndFeelPainters, Vcl.StdCtrls, Vcl.ExtCtrls,
  cxContainer, cxEdit, cxGroupBox, cxLookAndFeels, dxLayoutContainer, cxClasses, dxLayoutControl, Vcl.ActnList,
  dxLayoutLookAndFeels, dxScrollbarAnnotations, System.Actions, cxFilter;

type
  TfrmPlanets = class(TcxUnboundTreeListDemoUnitForm)
    clName: TcxTreeListColumn;
    clOrbitNumb: TcxTreeListColumn;
    clOrbits: TcxTreeListColumn;
    clDistance: TcxTreeListColumn;
    clPeriod: TcxTreeListColumn;
    clDiscoverer: TcxTreeListColumn;
    clDate: TcxTreeListColumn;
    clRadius: TcxTreeListColumn;
    clImageIndex: TcxTreeListColumn;
  private
    procedure AddBands;
    procedure CustomizeColumns;
    function GetcxTreeList: TcxTreeList;
    procedure LoadData;
  public
    procedure ActivateDataSet; override;
    procedure FrameActivated; override;
    property TreeList: TcxTreeList read GetcxTreeList;
  end;

implementation

{$R *.dfm}

uses
  cxDataStorage, cxFormats;

const
  GeneralBandText = 'General Information';
  TechnicalBandText = 'Technical Information';
  DiscoveryBandText = 'Discovery Information';

{ TfrmPlanets }

procedure TfrmPlanets.ActivateDataSet;
begin
  CustomizeColumns;
  LoadData;
  TreeList.Root.Items[0].Expanded := True;
  TreeList.OptionsView.ColumnAutoWidth := True;
end;

procedure TfrmPlanets.FrameActivated;
begin
  inherited FrameActivated;
  TreeList.Bands[0].Expandable := tlbeExpandable;
  AddBands;
end;

procedure TfrmPlanets.AddBands;
var
  ABand: TcxTreeListBand;
begin
  with TreeList do
  begin
    Bands[0].Caption.Text := GeneralBandText;
    Columns[0].Position.BandIndex := 0;
    Columns[1].Position.BandIndex := 0;
    ABand := Bands.Add;
    ABand.Caption.Text := TechnicalBandText;
    ABand := Bands.Add;
    ABand.Caption.Text := DiscoveryBandText;
    Columns[2].Position.BandIndex := 1;
    Columns[3].Position.BandIndex := 1;
    Columns[4].Position.BandIndex := 1;
    Columns[5].Position.BandIndex := 2;
    Columns[6].Position.BandIndex := 2;
    Columns[7].Position.BandIndex := 1;
  end;
end;

procedure TfrmPlanets.CustomizeColumns;
const
  cDistance = 3;
  cPeriod = 4;
  cRadius = 7;
  cImageIndex = 8;
var
  I: Integer;
begin
  with TreeList do
    for I := 0 to ColumnCount - 1 do
      if I in [cDistance, cRadius, cImageIndex] then
        Columns[I].DataBinding.ValueTypeClass := TcxIntegerValueType
      else
        if I in [cPeriod] then
          Columns[I].DataBinding.ValueTypeClass := TcxFloatValueType
        else
          Columns[I].DataBinding.ValueTypeClass := TcxStringValueType;
end;

function TfrmPlanets.GetcxTreeList: TcxTreeList;
begin
  Result := TcxTreeList(inherited TreeList);
end;

procedure TfrmPlanets.LoadData;
const
  FileName = 'nineplanets.txt';
  AHeaderLineCount = 2;
  AParentKeyField = 2;
  AKeyField = 0;
  AImageField = 8;

var
  ARecords, AValues: TStringList;
  I: Integer;
  AFileName: string;

  function AddNode(AParentNode: TcxTreeListNode; const ARecord: string): TcxTreeListNode;
  var
    S1: string;
    J: Integer;
    V: Variant;
  begin
    Result := AParentNode.AddChild;
    AValues.CommaText := ARecord;
    for J := 0 to AValues.Count - 1 do
      if AValues.Strings[J] <> '-' then
      begin
        S1 := AValues.Strings[J];
        if Pos('.', S1) <> 0 then
          S1[Pos('.', S1)] := dxFormatSettings.DecimalSeparator;
        V := S1;
        if not VarIsNull(V) then
          Result.Values[J] := V;
      end;
    Result.ImageIndex :=  Result.Values[AImageField];
    Result.SelectedIndex := Result.Values[AImageField];
  end;

  procedure AddNodes(AParentNode: TcxTreeListNode; const AParentKeyValue: string);

     function GetFieldValue(ARecord: string; AFieldIndex: Integer): string;
     begin
       AValues.CommaText := ARecord;
       Result := AValues.Strings[AFieldIndex];
     end;

  var
    J: Integer;
    ANode: TcxTreeListNode;
  begin
    for J := 0 to ARecords.Count - 1 do
      if GetFieldValue(ARecords.Strings[J], AParentKeyField) = AParentKeyValue then
      begin
        ANode := AddNode(AParentNode, ARecords.Strings[J]);
        AddNodes(ANode, GetFieldValue(ARecords.Strings[J], AKeyField));
      end;
  end;

begin
  AFileName := ExtractFilePath(Application.ExeName) + FileName;
  if not FileExists(AFileName) then
    raise Exception.Create('Data file not found');

  ARecords := TStringList.Create;
  AValues := TStringList.Create;

  TreeList.BeginUpdate;
  with ARecords do
    try
      LoadFromFile(AFileName);
      for I := 0 to AHeaderLineCount - 1 do
        Delete(0);
      AddNodes(TreeList.Root, '-');
    finally
      TreeList.EndUpdate;
      ARecords.Free;
      AValues.Free;
    end;
end;

end.
