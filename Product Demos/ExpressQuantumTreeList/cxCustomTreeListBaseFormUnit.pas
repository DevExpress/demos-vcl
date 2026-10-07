unit cxCustomTreeListBaseFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, cxTL, Vcl.StdCtrls, Vcl.ExtCtrls, cxLookAndFeelPainters, dxSkinsCore,
  cxControls, cxContainer, cxEdit, cxGroupBox, cxLabel,
  cxTreeListFeaturesDemoStrConsts, cxGraphics, cxLookAndFeels, dxLayoutContainer, cxClasses, dxLayoutControl,
  dxLayoutLookAndFeels, Vcl.ActnList, dxForms, System.Actions;

type
  TcxCustomTreeListDemoUnitForm = class(TdxForm)
    lcMain: TdxLayoutControl;
    lcMainGroup_Root: TdxLayoutGroup;
    lgMainGroup: TdxLayoutGroup;
    liDescription: TdxLayoutLabeledItem;
    lgTools: TdxLayoutGroup;
    dxLayoutSplitterItem1: TdxLayoutSplitterItem;
    dxLayoutMainLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxMainCxLookAndFeel1: TdxLayoutCxLookAndFeel;
    alMain: TActionList;
    dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList;
    dxLayoutBoldItemCaption: TdxLayoutCxLookAndFeel;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
  private
    FShowSetup: Boolean;
    procedure CheckActualTouchMode;
    procedure CheckDescription;
    function GetActualTouchMode: Boolean;
    procedure SetShowSetup(AValue: Boolean);
  protected
    procedure ChangeOptionsVisibility(AValue: Boolean); virtual;
    procedure DoCheckActualTouchMode; virtual;
    function GetDescription: string;
    function GetTreeList: TcxCustomTreeList; virtual;

    property ActualTouchMode: Boolean read GetActualTouchMode;
  public
    constructor Create(AOwner: TComponent); override;
    class procedure Register;
    class function GetID: Integer; virtual;
    function HasOptions: Boolean; virtual;
    procedure ActivateDataSet; virtual; abstract;
    procedure DoInspectedObjectChanged; virtual;
    procedure FrameActivated; virtual;
    procedure LookAndFeelChanged; virtual;
    procedure SwitchFullWindowMode(AValue: Boolean);

    property TreeList: TcxCustomTreeList read GetTreeList;
    property ShowSetup: Boolean read FShowSetup write SetShowSetup;
  end;

  TcxCustomTreeListDemoUnitFormClass = class of TcxCustomTreeListDemoUnitForm;

implementation

{$R *.dfm}

uses
  Main, dxBar, dxDemoUtils;

{ TcxCustomTreeListDemoUnitForm }

constructor TcxCustomTreeListDemoUnitForm.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FShowSetup := HasOptions;
end;

class procedure TcxCustomTreeListDemoUnitForm.Register;
begin
  cxTreeListRegisterDemoUnit(Self);
end;

function TcxCustomTreeListDemoUnitForm.GetActualTouchMode: Boolean;
begin
  Result := TfrmMain(Application.MainForm).dxSkinController1.TouchMode;
end;

procedure TcxCustomTreeListDemoUnitForm.SetShowSetup(AValue: Boolean);
begin
  if FShowSetup <> AValue then
  begin
    FShowSetup := AValue;
    ChangeOptionsVisibility(ShowSetup);
  end;
end;

procedure TcxCustomTreeListDemoUnitForm.ChangeOptionsVisibility(AValue: Boolean);
begin
  lgTools.Visible := AValue;
end;

function TcxCustomTreeListDemoUnitForm.GetDescription: string;
var
  I: Integer;
begin
  Result := '';
  for I := 0 to High(DescriptionsInfo) do
    if DescriptionsInfo[I].ID = GetID then
    begin
      Result := DescriptionsInfo[I].Description;
      Break;
    end;
end;

class function TcxCustomTreeListDemoUnitForm.GetID: Integer;
begin
  Result := 0;
end;

function TcxCustomTreeListDemoUnitForm.HasOptions: Boolean;
begin
  Result := True;
end;

procedure TcxCustomTreeListDemoUnitForm.CheckActualTouchMode;
begin
  lcMain.BeginUpdate;
  try
    DoCheckActualTouchMode;
  finally
    lcMain.EndUpdate(False);
  end;
end;

procedure TcxCustomTreeListDemoUnitForm.CheckDescription;
begin
  liDescription.CaptionOptions.Text := GetDescription;
  liDescription.Visible := liDescription.Caption <> '';
end;

procedure TcxCustomTreeListDemoUnitForm.DoCheckActualTouchMode;
begin
  if Visible then
    ToggleBetweenCheckBoxesAndToggleSwitches(Self, ActualTouchMode);
end;

procedure TcxCustomTreeListDemoUnitForm.DoInspectedObjectChanged;
begin
end;

procedure TcxCustomTreeListDemoUnitForm.FrameActivated;
const
  AVisible: array[Boolean] of TdxBarItemVisible = (ivNever, ivAlways);
begin
  CheckDescription;
  LookAndFeelChanged;
  (Parent.Owner as TfrmMain).biCustomProperties.Visible := AVisible[HasOptions];
  (Parent.Owner as TfrmMain).biCustomProperties.Down := ShowSetup;
end;

function TcxCustomTreeListDemoUnitForm.GetTreeList: TcxCustomTreeList;
begin
  Result := nil;
end;

procedure TcxCustomTreeListDemoUnitForm.LookAndFeelChanged;
begin
  if Application.MainForm <> nil then
  begin
    Color := Application.MainForm.Color;
    CheckActualTouchMode;
    liDescription.LookAndFeel := TfrmMain(Application.MainForm).dxLayoutSkinLookAndFeelDescription;
  end;
end;

procedure TcxCustomTreeListDemoUnitForm.SwitchFullWindowMode(AValue: Boolean);
begin
  liDescription.Visible := not AValue and (liDescription.Caption <> '');
end;

end.
