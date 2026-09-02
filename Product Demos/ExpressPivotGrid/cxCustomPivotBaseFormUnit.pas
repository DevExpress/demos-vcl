unit cxCustomPivotBaseFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, cxCustomPivotGrid, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxLayoutContainer,
  cxClasses, dxLayoutControl, dxLayoutLookAndFeels, Vcl.ActnList, dxForms, System.Actions;

type
  TLayoutInfo = record
    Name: string;
    Area: TcxPivotGridFieldArea;
  end;

  TcxCustomPivotGridDemoUnitForm = class(TdxForm)
    lcMain: TdxLayoutControl;
    lcMainGroup_Root: TdxLayoutGroup;
    lgMainGroup: TdxLayoutGroup;
    lgTools: TdxLayoutGroup;
    liDescription: TdxLayoutLabeledItem;
    dxLayoutSplitterItem1: TdxLayoutSplitterItem;
    alMain: TActionList;
    dxLayoutMainLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxMainCxLookAndFeel1: TdxLayoutCxLookAndFeel;
    liFeedback: TdxLayoutItem;
    lagFeedback: TdxLayoutAutoCreatedGroup;
    lgContent: TdxLayoutGroup;
  private
    FShowSetup: Boolean;
    procedure CheckActualTouchMode;
    procedure CheckDescription;
    function GetActualTouchMode: Boolean;
    procedure SetShowSetup(AValue: Boolean);
  protected
    procedure DoCheckActualTouchMode; virtual;
    function GetDescription: string; virtual;
    function GetPivotGrid: TcxCustomPivotGrid; virtual;
    procedure ChangeOptionsVisibility(AValue: Boolean); virtual;
    procedure SelectLayoutInfo(ALayout: array of TLayoutInfo);

    property ActualTouchMode: Boolean read GetActualTouchMode;
  public
    constructor Create(AOwner: TComponent); override;
    class procedure Register;
    class function GetID: Integer; virtual;
    function HasOptions: Boolean; virtual;
    procedure ActivateDataSet; virtual; abstract;
    procedure FrameActivated; virtual;
    procedure LookAndFeelChanged; virtual;
    procedure SwitchFullWindowMode(AValue: Boolean);

    property PivotGrid: TcxCustomPivotGrid read GetPivotGrid;
    property ShowSetup: Boolean read FShowSetup write SetShowSetup;
  end;

  TcxCustomPivotGridDemoUnitFormClass = class of TcxCustomPivotGridDemoUnitForm;

implementation

{$R *.dfm}

uses
  Main, dxBar, dxDemoUtils;

{ TcxCustomPivotGridDemoUnitForm }

constructor TcxCustomPivotGridDemoUnitForm.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FShowSetup := HasOptions;
end;

procedure TcxCustomPivotGridDemoUnitForm.CheckActualTouchMode;
begin
  lcMain.BeginUpdate;
  try
    DoCheckActualTouchMode;
  finally
    lcMain.EndUpdate(False);
  end;
end;

procedure TcxCustomPivotGridDemoUnitForm.CheckDescription;
begin
  liDescription.CaptionOptions.Text := GetDescription;
  liDescription.Visible := liDescription.Caption <> '';
end;

procedure TcxCustomPivotGridDemoUnitForm.DoCheckActualTouchMode;
begin
  if Visible then
    ToggleBetweenCheckBoxesAndToggleSwitches(Self, ActualTouchMode);
end;

function TcxCustomPivotGridDemoUnitForm.GetActualTouchMode: Boolean;
begin
  Result := TfrmMain(Application.MainForm).dxSkinController1.TouchMode;
end;

procedure TcxCustomPivotGridDemoUnitForm.SetShowSetup(AValue: Boolean);
begin
  if FShowSetup <> AValue then
  begin
    FShowSetup := AValue;
    ChangeOptionsVisibility(ShowSetup);
  end;
end;

function TcxCustomPivotGridDemoUnitForm.GetDescription: string;
begin
  Result := liDescription.CaptionOptions.Text;
end;

class function TcxCustomPivotGridDemoUnitForm.GetID: Integer;
begin
  Result := 0;
end;

function TcxCustomPivotGridDemoUnitForm.HasOptions: Boolean;
begin
  Result := True;
end;

procedure TcxCustomPivotGridDemoUnitForm.FrameActivated;
const
  AVisible: array[Boolean] of TdxBarItemVisible = (ivNever, ivAlways);
begin
  CheckDescription;
  LookAndFeelChanged;
  (Parent.Owner as TfrmMain).biCustomProperties.Visible := AVisible[HasOptions];
  (Parent.Owner as TfrmMain).biCustomProperties.Down := ShowSetup;
end;

class procedure TcxCustomPivotGridDemoUnitForm.Register;
begin
  cxPivotGridRegisterDemoUnit(Self);
end;

function TcxCustomPivotGridDemoUnitForm.GetPivotGrid: TcxCustomPivotGrid;
begin
  Result := nil;
end;

procedure TcxCustomPivotGridDemoUnitForm.LookAndFeelChanged;
begin
  if Application.MainForm <> nil then
  begin
    Color := Application.MainForm.Color;
    CheckActualTouchMode;
    liDescription.LookAndFeel := TfrmMain(Application.MainForm).dxLayoutSkinLookAndFeelDescription;
  end;
end;

procedure TcxCustomPivotGridDemoUnitForm.ChangeOptionsVisibility(AValue: Boolean);
begin
  lgTools.Visible := AValue;
end;

procedure TcxCustomPivotGridDemoUnitForm.SelectLayoutInfo(ALayout: array of TLayoutInfo);
var
  I: Integer;
  AField: TcxPivotGridField;
  AIndexes: array[TcxPivotGridFieldArea] of Integer;
begin
  PivotGrid.BeginUpdate;
  try
    FillChar(AIndexes, SizeOf(AIndexes), 0);
    for I := 0 to PivotGrid.FieldCount - 1 do
      PivotGrid.Fields[I].Visible := False;
    for I := 0 to High(ALayout) do
    begin
      AField := PivotGrid.GetFieldByName(ALayout[I].Name);
      AField.Area := ALayout[I].Area;
      AField.AreaIndex := AIndexes[ALayout[I].Area];
      AField.Visible := True;
      Inc(AIndexes[ALayout[I].Area]);
    end;
  finally
    PivotGrid.EndUpdate;
  end;
end;

procedure TcxCustomPivotGridDemoUnitForm.SwitchFullWindowMode(AValue: Boolean);
begin
  liDescription.Visible := not AValue and (liDescription.Caption <> '');
  lagFeedback.Visible := not AValue;
end;

end.

