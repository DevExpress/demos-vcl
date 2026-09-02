unit dxNavBarControlBaseFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Vcl.StdCtrls, Vcl.ExtCtrls, cxClasses, dxBar, cxGroupBox, dxNavBar, dxRibbon, dxLayoutContainer,
  dxLayoutControl, dxLayoutLookAndFeels, dxDemoUtils, dxForms;

type
  TdxNavBarControlDemoUnitForm = class(TdxForm)
    lcMain: TdxLayoutControl;
    lcMainGroup_Root: TdxLayoutGroup;
    lgMainGroup: TdxLayoutGroup;
    lgTools: TdxLayoutGroup;
    liDescription: TdxLayoutLabeledItem;
    dxLayoutSplitterItem1: TdxLayoutSplitterItem;
    dxLayoutMainLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxMainCxLookAndFeel1: TdxLayoutCxLookAndFeel;
    BaseAutoCreatedGroup: TdxLayoutAutoCreatedGroup;
    procedure FormShow(Sender: TObject);
    procedure FormHide(Sender: TObject);
  private
    FShowSetup: Boolean;
    procedure SetShowSetup(AValue: Boolean);
  protected
    procedure ChangeOptionsVisibility(AValue: Boolean);
    procedure CheckDescription;
    procedure CustomAfterShow(var AMessage: TMessage); message UM_CUSTOMAFTERSHOW;
    function GetDescription: string; virtual;
    function GetNavBarControl: TdxNavBar; virtual;
    function GetBarManager: TdxBarManager; virtual;
  public
    constructor Create(AOwner: TComponent); override;
    class procedure Register;
    class function GetID: Integer; virtual;
    class function GetLoadingInfo: string; virtual;
    function HasOptions: Boolean; virtual;
    property BarManager: TdxBarManager read GetBarManager;
    property NavBarControl: TdxNavBar read GetNavBarControl;
    property ShowSetup: Boolean read FShowSetup write SetShowSetup;
  end;

  TdxNavBarControlDemoUnitFormClass = class of TdxNavBarControlDemoUnitForm;

implementation

{$R *.dfm}

uses
  Main;

{ TdxNavBarControlDemoUnitForm }

constructor TdxNavBarControlDemoUnitForm.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FShowSetup := HasOptions;
end;

procedure TdxNavBarControlDemoUnitForm.FormHide(Sender: TObject);
begin
  if BarManager <> nil then
    frmMain.dxBarManager.Unmerge(BarManager);
end;

procedure TdxNavBarControlDemoUnitForm.FormShow(Sender: TObject);

  procedure SetAsLastTab(const ATabCaption: string);
  var
    ADemoTab: TdxRibbonTab;
  begin
    ADemoTab := frmMain.dxRibbon1.Tabs.Find(ATabCaption);
    if ADemoTab <> nil then
      ADemoTab.Index := frmMain.dxRibbon1.Tabs.Count - 1;
  end;

const
  AVisible: array[Boolean] of TdxBarItemVisible = (ivNever, ivAlways);
var
  AGroup: TdxRibbonTabGroup;
  ADemoTab: TdxRibbonTab;
begin
  if Parent <> nil then
  begin
    if BarManager <> nil then
      frmMain.dxBarManager.Merge(BarManager);
    frmMain.dxRibbon1Tab1.Groups.Find('DevExpress', AGroup);
    SetAsLastTab('Demo');
    SetAsLastTab('Skins');
    ADemoTab := frmMain.dxRibbon1.Tabs.Find('Options');
    if ADemoTab <> nil then
      ADemoTab.Active := True;
    AGroup.Index := frmMain.dxRibbon1Tab1.Groups.Count - 1;
    (Parent.Owner as TfrmMain).biCustomProperties.Visible := AVisible[HasOptions];
    (Parent.Owner as TfrmMain).biCustomProperties.Down := ShowSetup;
    PostMessage(Handle, UM_CUSTOMAFTERSHOW, 0, 0);
  end;
end;

procedure TdxNavBarControlDemoUnitForm.CheckDescription;
begin
  liDescription.CaptionOptions.Text := GetDescription;
  liDescription.Visible := liDescription.Caption <> '';
end;

procedure TdxNavBarControlDemoUnitForm.CustomAfterShow(var AMessage: TMessage);
begin
  CheckDescription;
end;

function TdxNavBarControlDemoUnitForm.GetBarManager: TdxBarManager;
begin
  Result := nil;
end;

function TdxNavBarControlDemoUnitForm.GetDescription: string;
begin
  Result := '';
end;

class function TdxNavBarControlDemoUnitForm.GetID: Integer;
begin
  Result := 0;
end;

class function TdxNavBarControlDemoUnitForm.GetLoadingInfo: string;
begin
  Result := '';
end;

function TdxNavBarControlDemoUnitForm.HasOptions: Boolean;
begin
  Result := False;
end;

function TdxNavBarControlDemoUnitForm.GetNavBarControl: TdxNavBar;
begin
  Result := nil;
end;

class procedure TdxNavBarControlDemoUnitForm.Register;
begin
  dxNavBarControlRegisterDemoUnit(Self);
end;

procedure TdxNavBarControlDemoUnitForm.SetShowSetup(AValue: Boolean);
begin
  if FShowSetup <> AValue then
  begin
    FShowSetup := AValue;
    ChangeOptionsVisibility(ShowSetup);
  end;
end;

procedure TdxNavBarControlDemoUnitForm.ChangeOptionsVisibility(AValue: Boolean);
begin
  lgTools.Visible := AValue;
end;

end.
