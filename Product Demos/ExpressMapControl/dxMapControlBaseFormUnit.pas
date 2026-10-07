unit dxMapControlBaseFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Vcl.StdCtrls, Vcl.ExtCtrls, cxGroupBox, dxMapControlTypes,
  dxMapControl, cxClasses, dxBar, dxRibbon, dxBarBuiltInMenu, dxMapControlViewInfo, dxLayoutContainer, dxLayoutControl,
  dxLayoutLookAndFeels, dxDemoUtils, dxLayoutControlAdapters, dxForms, System.Net.URLClient;

type
  TdxMapControlDemoUnitForm = class(TdxForm)
    dxBarManager1: TdxBarManager;
    lcMain: TdxLayoutControl;
    lcMainGroup_Root: TdxLayoutGroup;
    lgContent: TdxLayoutGroup;
    lsSetupSplitter: TdxLayoutSplitterItem;
    lgSetupTools: TdxLayoutGroup;
    liDescription: TdxLayoutLabeledItem;
    pnlMap: TPanel;
    dxLayoutItem1: TdxLayoutItem;
    dxMapControl1: TdxMapControl;
    dxLayoutMainLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxMainCxLookAndFeel1: TdxLayoutCxLookAndFeel;
    dxBigCaptionCxLookAndFeel1: TdxLayoutCxLookAndFeel;
    dxMediumCaptionCxLookAndFeel: TdxLayoutCxLookAndFeel;
    procedure FormShow(Sender: TObject);
    procedure FormHide(Sender: TObject);
  private
    procedure CustomAfterShow(var AMessage: TMessage); message UM_CUSTOMAFTERSHOW;
    function GetMapControl: TdxMapControl;
    function GetBarManager: TdxBarManager;
  protected
    function GetDescription: string; virtual;
    procedure CheckDescription;
  public
    class procedure Register;
    class function GetID: Integer; virtual;
    class function GetLoadingInfo: string; virtual;
    property BarManager: TdxBarManager read GetBarManager;
    property MapControl: TdxMapControl read GetMapControl;
  end;

  TdxMapControlDemoUnitFormClass = class of TdxMapControlDemoUnitForm;

function DXAzureKey: string;

implementation

uses
  Main, dxCore;

{$R *.dfm}
{$R BasicDemoMain.res}

function DXAzureKey: string;
begin
  Result := dxGetSystemResourceString(HInstance, 102);
end;

{ TdxMapControlDemoUnitForm }

procedure TdxMapControlDemoUnitForm.FormHide(Sender: TObject);
begin
  frmMain.dxBarManager.Unmerge(dxBarManager1);
end;

procedure TdxMapControlDemoUnitForm.FormShow(Sender: TObject);

  procedure SetAsLastTab(const ATabCaption: string);
  var
    ADemoTab: TdxRibbonTab;
  begin
    ADemoTab := frmMain.dxRibbon1.Tabs.Find(ATabCaption);
    if ADemoTab <> nil then
      ADemoTab.Index := frmMain.dxRibbon1.Tabs.Count - 1;
  end;

var
  AGroup: TdxRibbonTabGroup;
  ADemoTab: TdxRibbonTab;
begin
  if Parent <> nil then
  begin
    frmMain.dxBarManager.Merge(dxBarManager1);
    frmMain.dxRibbon1Tab1.Groups.Find('DevExpress', AGroup);
    AGroup.Index := frmMain.dxRibbon1Tab1.Groups.Count - 1;
    SetAsLastTab('Demo');
    SetAsLastTab('Skins');
    ADemoTab := frmMain.dxRibbon1.Tabs.Find('Options');
    if ADemoTab <> nil then
      ADemoTab.Active := True;
    PostMessage(Handle, UM_CUSTOMAFTERSHOW, 0, 0);
  end;
end;

procedure TdxMapControlDemoUnitForm.CustomAfterShow(var AMessage: TMessage);
begin
  CheckDescription;
end;

procedure TdxMapControlDemoUnitForm.CheckDescription;
begin
  liDescription.CaptionOptions.Text := GetDescription;
  liDescription.Visible := liDescription.Caption <> '';
end;

function TdxMapControlDemoUnitForm.GetBarManager: TdxBarManager;
begin
  Result := dxBarManager1;
end;

function TdxMapControlDemoUnitForm.GetDescription: string;
begin
  Result := '';
end;

class function TdxMapControlDemoUnitForm.GetID: Integer;
begin
  Result := 0;
end;

class function TdxMapControlDemoUnitForm.GetLoadingInfo: string;
begin
  Result := '';
end;

function TdxMapControlDemoUnitForm.GetMapControl: TdxMapControl;
begin
  Result := dxMapControl1;
end;

class procedure TdxMapControlDemoUnitForm.Register;
begin
  dxMapControlRegisterDemoUnit(Self);
end;

end.
