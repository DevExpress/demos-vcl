unit dxFlowChartBaseFormUnit;

interface

uses
  System.Classes, Vcl.Forms, Vcl.Controls, Vcl.ExtCtrls, Winapi.Messages, Winapi.Windows, cxClasses, cxGraphics, dxGDIPlusClasses, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxEdit, cxGroupBox, dxBar, dxRibbon, cxLabel, cxImage, cxContainer,
  dxGaugeControl, dxLayoutContainer, dxLayoutControl, dxLayoutLookAndFeels, dxDemoUtils, dxForms;

type
  { TdxFlowChartDemoUnitForm }

  TdxFlowChartDemoUnitFormClass = class of TdxFlowChartDemoUnitForm;
  TdxFlowChartDemoUnitForm = class(TdxForm)
    lcMainGroup_Root: TdxLayoutGroup;
    lcMain: TdxLayoutControl;
    lgMainGroup: TdxLayoutGroup;
    liDescription: TdxLayoutLabeledItem;
    dxLayoutMainLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxMainCxLookAndFeel1: TdxLayoutCxLookAndFeel;
    dxBarManager1: TdxBarManager;
    procedure FormShow(Sender: TObject);
    procedure FormHide(Sender: TObject);
  private
    procedure CustomAfterShow(var AMessage: TMessage); message UM_CUSTOMAFTERSHOW;
    function GetActualTouchMode: Boolean;
    procedure FocusFirstControl;
  protected
    function GetBarManager: TdxBarManager; virtual;
    function GetDescription: string; virtual;
    function NeedWaitForm: Boolean; virtual;
    procedure DoCheckActualTouchMode; virtual;

    procedure CheckActualTouchMode;
    procedure CheckDescription;

    property ActualTouchMode: Boolean read GetActualTouchMode;
  public
    constructor Create(AOwner: TComponent); override;

    class procedure Register;
    class function GetID: Integer; virtual;
    class function GetLoadingInfo: string; virtual;
    function GetCaption: string; virtual;
    procedure AfterShow;
    procedure LookAndFeelChanged;
    procedure SwitchFullWindowMode(AValue: Boolean);

    property BarManager: TdxBarManager read GetBarManager;
  end;

implementation

{$R *.dfm}

uses
  Main, dxSplashForms, dxThreading;

{ TdxFlowChartDemoUnitForm }

constructor TdxFlowChartDemoUnitForm.Create(AOwner: TComponent);
begin
  if NeedWaitForm then
    TdxSplashFormManager.WaitForm.Show(Application.MainForm);
  inherited Create(AOwner);
end;

procedure TdxFlowChartDemoUnitForm.FormHide(Sender: TObject);
begin
  frmMain.dxBarManager.Unmerge(BarManager);
end;

procedure TdxFlowChartDemoUnitForm.FormShow(Sender: TObject);
var
  ADemoTab: TdxRibbonTab;
begin
  if Parent <> nil then
  begin
    frmMain.dxRibbon1.BeginUpdate;
    try
      frmMain.dxBarManager.Merge(BarManager);
      ADemoTab := frmMain.dxRibbon1.Tabs.Find('Demo');
      if ADemoTab <> nil then
        ADemoTab.Index := frmMain.dxRibbon1.Tabs.Count - 1;
      ADemoTab := frmMain.dxRibbon1.Tabs.Find('Skins');
      if ADemoTab <> nil then
        ADemoTab.Index := frmMain.dxRibbon1.Tabs.Count - 1;
      frmMain.dxRibbon1.Tabs[0].Active := True;
    finally
      frmMain.dxRibbon1.EndUpdate;
    end;
    PostMessage(Handle, UM_CUSTOMAFTERSHOW, 0, 0);
  end;
end;

procedure TdxFlowChartDemoUnitForm.CheckActualTouchMode;
begin
  lcMain.BeginUpdate;
  try
    DoCheckActualTouchMode;
  finally
    lcMain.EndUpdate(False);
  end;
end;

procedure TdxFlowChartDemoUnitForm.CheckDescription;
begin
  liDescription.CaptionOptions.Text := GetDescription;
  liDescription.Visible := liDescription.Caption <> '';
end;

procedure TdxFlowChartDemoUnitForm.CustomAfterShow(var AMessage: TMessage);
begin
  CheckDescription;
  LookAndFeelChanged;
  FocusFirstControl;
end;

procedure TdxFlowChartDemoUnitForm.DoCheckActualTouchMode;
begin
  if Visible then
    ToggleBetweenCheckBoxesAndToggleSwitches(Self, ActualTouchMode);
end;

function TdxFlowChartDemoUnitForm.GetBarManager: TdxBarManager;
begin
  Result := dxBarManager1;
end;

function TdxFlowChartDemoUnitForm.GetCaption: string;
begin
  Result := Caption;
end;

function TdxFlowChartDemoUnitForm.GetActualTouchMode: Boolean;
begin
  Result := TfrmMain(Application.MainForm).dxSkinController1.TouchMode;
end;

procedure TdxFlowChartDemoUnitForm.FocusFirstControl;
var
  AControl: TWinControl;
begin
  AControl := FindNextControl(nil, True, True, False);
  if AControl <> nil then
    AControl.SetFocus;
end;

function TdxFlowChartDemoUnitForm.GetDescription: string;
begin
  Result := '';
end;

function TdxFlowChartDemoUnitForm.NeedWaitForm: Boolean;
begin
  Result := False;
end;

class function TdxFlowChartDemoUnitForm.GetID: Integer;
begin
  Result := 0;
end;

class function TdxFlowChartDemoUnitForm.GetLoadingInfo: string;
begin
  Result := '';
end;

procedure TdxFlowChartDemoUnitForm.AfterShow;
begin
  if NeedWaitForm then
    TdxUIThreadSyncService.EnqueueInvokeInUIThread(Self,
      procedure ()
      begin
        TdxSplashFormManager.WaitForm.Hide;
      end
      );
  FocusFirstControl;
end;

procedure TdxFlowChartDemoUnitForm.LookAndFeelChanged;
begin
  Color := Application.MainForm.Color;
  CheckActualTouchMode;
end;

procedure TdxFlowChartDemoUnitForm.SwitchFullWindowMode(AValue: Boolean);
begin
  liDescription.Visible := not AValue and (liDescription.Caption <> '');
end;

class procedure TdxFlowChartDemoUnitForm.Register;
begin
  dxFlowChartRegisterDemoUnit(Self);
end;

end.
