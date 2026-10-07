unit dxGaugeControlBaseFormUnit;

interface

uses
  System.Classes, Vcl.Forms, Vcl.Controls, Vcl.ExtCtrls, Winapi.Messages, Winapi.Windows, cxClasses, cxGraphics, dxGDIPlusClasses, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxEdit, cxGroupBox, dxBar, dxRibbon, cxLabel, cxImage, cxContainer,
  dxGaugeControl, dxLayoutContainer, dxLayoutControl, dxLayoutLookAndFeels, dxDemoUtils, dxForms;

type
  TdxGaugeControlDemoUnitForm = class(TdxForm)
    dxBarManager1: TdxBarManager;
    lcMainGroup_Root: TdxLayoutGroup;
    lcMain: TdxLayoutControl;
    lgMainGroup: TdxLayoutGroup;
    liDescription: TdxLayoutLabeledItem;
    dxLayoutMainLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxMainCxLookAndFeel1: TdxLayoutCxLookAndFeel;
    procedure FormShow(Sender: TObject);
    procedure FormHide(Sender: TObject);
  private
    procedure CustomAfterShow(var AMessage: TMessage); message UM_CUSTOMAFTERSHOW;
    function GetActualTouchMode: Boolean;
    function GetBarManager: TdxBarManager;
  protected
    procedure CheckActualTouchMode;
    procedure CheckDescription;
    procedure DoCheckActualTouchMode; virtual;
    function GetDescription: string; virtual;

    property ActualTouchMode: Boolean read GetActualTouchMode;
  public
    class procedure Register;
    class function GetID: Integer; virtual;
    class function GetLoadingInfo: string; virtual;
    procedure LookAndFeelChanged; virtual;
    procedure SwitchFullWindowMode(AValue: Boolean);

    property BarManager: TdxBarManager read GetBarManager;
  end;

  TdxGaugeControlDemoUnitFormClass = class of TdxGaugeControlDemoUnitForm;

implementation

{$R *.dfm}

uses
  Main;

{ TdxGaugeControlDemoUnitForm }

procedure TdxGaugeControlDemoUnitForm.FormHide(Sender: TObject);
begin
  frmMain.dxBarManager.Unmerge(dxBarManager1);
end;

procedure TdxGaugeControlDemoUnitForm.FormShow(Sender: TObject);
var
  AGroup: TdxRibbonTabGroup;
begin
  if Parent <> nil then
  begin
    frmMain.dxBarManager.Merge(dxBarManager1);
    frmMain.dxRibbon1Tab1.Groups.Find('DevExpress', AGroup);
    AGroup.Index := frmMain.dxRibbon1Tab1.Groups.Count - 1;
    PostMessage(Handle, UM_CUSTOMAFTERSHOW, 0, 0);
  end;
end;

procedure TdxGaugeControlDemoUnitForm.CheckActualTouchMode;
begin
  lcMain.BeginUpdate;
  try
    DoCheckActualTouchMode;
  finally
    lcMain.EndUpdate(False);
  end;
end;

procedure TdxGaugeControlDemoUnitForm.CheckDescription;
begin
  liDescription.CaptionOptions.Text := GetDescription;
  liDescription.Visible := liDescription.Caption <> '';
end;

procedure TdxGaugeControlDemoUnitForm.CustomAfterShow(var AMessage: TMessage);
begin
  CheckDescription;
  LookAndFeelChanged;
end;

procedure TdxGaugeControlDemoUnitForm.DoCheckActualTouchMode;
begin
  if Visible then
    ToggleBetweenCheckBoxesAndToggleSwitches(Self, ActualTouchMode);
end;

function TdxGaugeControlDemoUnitForm.GetActualTouchMode: Boolean;
begin
  Result := TfrmMain(Application.MainForm).dxSkinController1.TouchMode;
end;

function TdxGaugeControlDemoUnitForm.GetDescription: string;
begin
  Result := '';
end;

function TdxGaugeControlDemoUnitForm.GetBarManager: TdxBarManager;
begin
  Result := dxBarManager1;
end;

class function TdxGaugeControlDemoUnitForm.GetID: Integer;
begin
  Result := 0;
end;

class function TdxGaugeControlDemoUnitForm.GetLoadingInfo: string;
begin
  Result := '';
end;

procedure TdxGaugeControlDemoUnitForm.LookAndFeelChanged;
begin
  Color := Application.MainForm.Color;
  CheckActualTouchMode;
end;

procedure TdxGaugeControlDemoUnitForm.SwitchFullWindowMode(AValue: Boolean);
begin
  liDescription.Visible := not AValue and (liDescription.Caption <> '');
end;

class procedure TdxGaugeControlDemoUnitForm.Register;
begin
  dxGaugeControlRegisterDemoUnit(Self);
end;

end.
