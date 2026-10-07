unit dxGanttControlBaseFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, cxTL, Vcl.StdCtrls, Vcl.ExtCtrls, cxLookAndFeelPainters, dxSkinsCore,
  cxControls, cxContainer, cxEdit, cxGroupBox, cxLabel,
  dxGanttControlFeaturesDemoStrConsts, cxGraphics, cxLookAndFeels, dxLayoutContainer, cxClasses, dxLayoutControl,
  dxLayoutLookAndFeels, Vcl.ActnList, dxForms, System.Actions, dxGanttControlCustomClasses, dxGanttControl,
  dxCore, dxGanttControlCustomSheet, dxGanttControlViewChart, dxGanttControlViewResourceSheet,
  dxGanttControlViewTimeline, dxGanttControlTasks, dxGanttControlAssignments, dxGanttControlResources,
  dxLayoutcxEditAdapters, cxSpinEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit;

type
  TdxGanttControlBaseDemoForm = class(TFrame)
    lcMain: TdxLayoutControl;
    lcMainGroup_Root: TdxLayoutGroup;
    lgMainGroup: TdxLayoutGroup;
    liDescription: TdxLayoutLabeledItem;
    lgTools: TdxLayoutGroup;
    dxLayoutSplitterItem1: TdxLayoutSplitterItem;
    dxLayoutMainLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxMainCxLookAndFeel1: TdxLayoutCxLookAndFeel;
    dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList;
    dxLayoutBoldItemCaption: TdxLayoutCxLookAndFeel;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxGanttControl: TdxGanttControl;
    dxLayoutItem5: TdxLayoutItem;
    lgActiveView: TdxLayoutGroup;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    cmbChartTimescale: TcxComboBox;
    dxLayoutGroup4: TdxLayoutGroup;
    lchbChartCellAutoHeight: TdxLayoutCheckBoxItem;
    lchbChartColumnHide: TdxLayoutCheckBoxItem;
    lchbChartColumnMove: TdxLayoutCheckBoxItem;
    lchbChartColumnSize: TdxLayoutCheckBoxItem;
    lchbChartColumnQuickCustomization: TdxLayoutCheckBoxItem;
    lchbChartVisible: TdxLayoutCheckBoxItem;
    dxLayoutGroup5: TdxLayoutGroup;
    lchbResourceSheetCellAutoHeight: TdxLayoutCheckBoxItem;
    lchbResourceSheetColumnHide: TdxLayoutCheckBoxItem;
    lchbResourceSheetColumnMove: TdxLayoutCheckBoxItem;
    lchbResourceSheetColumnSize: TdxLayoutCheckBoxItem;
    lchbResourceSheetColumnQuickCustomization: TdxLayoutCheckBoxItem;
    lchbShowOnlyExplicitlyAddedTasks: TdxLayoutCheckBoxItem;
    dxLayoutItem2: TdxLayoutItem;
    cmbTimelineScale: TcxComboBox;
    dxLayoutItem3: TdxLayoutItem;
    seTimelineUnitMinWidth: TcxSpinEdit;
    dxLayoutSeparatorItem1: TdxLayoutSeparatorItem;
    lchbChartColumnInsert: TdxLayoutCheckBoxItem;
    lchbResourceSheetColumnInsert: TdxLayoutCheckBoxItem;
    procedure dxGanttControlDataModelLoaded(Sender: TObject);
    procedure dxGanttControlAssignmentChanged(Sender: TObject; AAssignment: TdxGanttControlAssignment);
    procedure dxGanttControlResourceChanged(Sender: TObject; AResource: TdxGanttControlResource);
    procedure dxGanttControlTaskChanged(Sender: TObject; ATask: TdxGanttControlTask);
    procedure lchbChartCellAutoHeightClick(Sender: TObject);
    procedure lgActiveViewTabChanged(Sender: TObject);
    procedure dxGanttControlActiveViewChanged(Sender: TObject);
    procedure lchbShowOnlyExplicitlyAddedTasksClick(Sender: TObject);
    procedure cmbTimelineScalePropertiesChange(Sender: TObject);
    procedure seTimelineUnitMinWidthPropertiesChange(Sender: TObject);
    procedure cmbChartTimescalePropertiesChange(Sender: TObject);
  private
    FIsFirstOpening: Boolean;
    FIsModified: Boolean;
    FShowSetup: Boolean;
    procedure CheckActualTouchMode;
    procedure CheckDescription;
    function GetActualTouchMode: Boolean;
    procedure SetShowSetup(AValue: Boolean);
  protected
    procedure ChangeOptionsVisibility(AValue: Boolean); virtual;
    procedure DoCheckActualTouchMode; virtual;
    function GetDescription: string;
    procedure Initialize; virtual;
    procedure LoadData; virtual;
    procedure ResetIsModified;
    procedure SynchronizeWithProperties; virtual;

    property ActualTouchMode: Boolean read GetActualTouchMode;
  public
    constructor Create(AOwner: TComponent); override;
    class procedure Register;
    function GetCaption: string; virtual;
    class function GetID: Integer; virtual;
    function HasOptions: Boolean; virtual;
    procedure DoInspectedObjectChanged; virtual;
    procedure FrameActivated;
    procedure LookAndFeelChanged; virtual;
    function NeedCustomProperties: Boolean; virtual;
    procedure SwitchFullWindowMode(AValue: Boolean);

    property IsGanttControlModified: Boolean read FIsModified;
    property ShowSetup: Boolean read FShowSetup write SetShowSetup;
  end;

  TdxGanttControlBaseDemoFormClass = class of TdxGanttControlBaseDemoForm;

implementation

{$R *.dfm}

uses
  Main, dxBar, dxDemoUtils;

{ TdxGanttControlBaseDemoForm }

constructor TdxGanttControlBaseDemoForm.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FShowSetup := HasOptions;
  FIsFirstOpening := True;
end;

class procedure TdxGanttControlBaseDemoForm.Register;
begin
  dxRegisterGanttControlDemoUnit(Self);
end;

function TdxGanttControlBaseDemoForm.GetActualTouchMode: Boolean;
begin
  Result := TfrmMain(Parent.Owner).dxSkinController1.TouchMode;
end;

procedure TdxGanttControlBaseDemoForm.SetShowSetup(AValue: Boolean);
begin
  if FShowSetup <> AValue then
  begin
    FShowSetup := AValue;
    ChangeOptionsVisibility(ShowSetup);
  end;
end;

procedure TdxGanttControlBaseDemoForm.ChangeOptionsVisibility(AValue: Boolean);
begin
  lgTools.Visible := AValue;
end;

function TdxGanttControlBaseDemoForm.GetCaption: string;
begin
  Result := Caption;
end;

function TdxGanttControlBaseDemoForm.GetDescription: string;
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

class function TdxGanttControlBaseDemoForm.GetID: Integer;
begin
  Result := 0;
end;

function TdxGanttControlBaseDemoForm.HasOptions: Boolean;
begin
  Result := True;
end;

procedure TdxGanttControlBaseDemoForm.lchbChartCellAutoHeightClick(Sender: TObject);
begin
  SynchronizeWithProperties;
end;

procedure TdxGanttControlBaseDemoForm.lchbShowOnlyExplicitlyAddedTasksClick(Sender: TObject);
begin
  dxGanttControl.ViewTimeLine.ShowOnlyExplicitlyAddedTasks := lchbShowOnlyExplicitlyAddedTasks.Checked;
end;

procedure TdxGanttControlBaseDemoForm.lgActiveViewTabChanged(Sender: TObject);
begin
  case lgActiveView.ItemIndex of
    0:
      dxGanttControl.ViewChart.Active := True;
    1:
      dxGanttControl.ViewResourceSheet.Active := True;
    2:
      dxGanttControl.ViewTimeline.Active := True;
  end;
end;

procedure TdxGanttControlBaseDemoForm.CheckActualTouchMode;
begin
  lcMain.BeginUpdate;
  try
    DoCheckActualTouchMode;
  finally
    lcMain.EndUpdate(False);
  end;
end;

procedure TdxGanttControlBaseDemoForm.CheckDescription;
begin
  liDescription.CaptionOptions.Text := GetDescription;
  liDescription.Visible := liDescription.Caption <> '';
end;

procedure TdxGanttControlBaseDemoForm.cmbChartTimescalePropertiesChange(Sender: TObject);
begin
  dxGanttControl.ViewChart.TimescaleUnit := TdxGanttControlChartViewTimescaleUnit(cmbChartTimescale.ItemIndex);
end;

procedure TdxGanttControlBaseDemoForm.cmbTimelineScalePropertiesChange(Sender: TObject);
begin
  dxGanttControl.ViewTimeLine.TimescaleUnit := TdxGanttControlTimeLineViewTimescaleUnit(cmbTimelineScale.ItemIndex);
end;

procedure TdxGanttControlBaseDemoForm.DoCheckActualTouchMode;
begin
  if Visible then
    ToggleBetweenCheckBoxesAndToggleSwitches(Self, ActualTouchMode);
end;

procedure TdxGanttControlBaseDemoForm.DoInspectedObjectChanged;
begin
//
end;

procedure TdxGanttControlBaseDemoForm.dxGanttControlDataModelLoaded(Sender: TObject);
begin
  ResetIsModified;
end;

procedure TdxGanttControlBaseDemoForm.dxGanttControlActiveViewChanged(Sender: TObject);
begin
  if dxGanttControl.ViewChart.Active then
    lgActiveView.ItemIndex := 0
  else
  if dxGanttControl.ViewResourceSheet.Active then
    lgActiveView.ItemIndex := 1
  else
    lgActiveView.ItemIndex := 2;
end;

procedure TdxGanttControlBaseDemoForm.dxGanttControlAssignmentChanged(Sender: TObject;
  AAssignment: TdxGanttControlAssignment);
begin
  FIsModified := True;
end;

procedure TdxGanttControlBaseDemoForm.dxGanttControlResourceChanged(Sender: TObject;
  AResource: TdxGanttControlResource);
begin
  FIsModified := True;
end;

procedure TdxGanttControlBaseDemoForm.dxGanttControlTaskChanged(Sender: TObject; ATask: TdxGanttControlTask);
begin
  FIsModified := True;
end;

procedure TdxGanttControlBaseDemoForm.FrameActivated;
const
  AVisible: array[Boolean] of TdxBarItemVisible = (ivNever, ivAlways);
begin
  CheckDescription;
  LookAndFeelChanged;
  (Parent.Owner as TfrmMain).biCustomProperties.Visible := AVisible[HasOptions];
  (Parent.Owner as TfrmMain).biCustomProperties.Down := ShowSetup;
  if FIsFirstOpening then
  begin
    Initialize;
    LoadData;
    SynchronizeWithProperties;
  end;
  FIsFirstOpening := False;
end;

procedure TdxGanttControlBaseDemoForm.Initialize;
var
  I: Integer;
begin
  for I := 0 to dxGanttControl.ViewChart.OptionsSheet.Columns.Count - 1 do
    dxGanttControl.ViewChart.OptionsSheet.Columns[I].Visible := True;
end;

procedure TdxGanttControlBaseDemoForm.LoadData;
begin
//
end;

procedure TdxGanttControlBaseDemoForm.LookAndFeelChanged;
begin
  if Parent.Owner <> nil then
  begin
    Color := TForm(Parent.Owner).Color;
    CheckActualTouchMode;
    liDescription.LookAndFeel := TfrmMain(Parent.Owner).dxLayoutSkinLookAndFeelDescription;
  end;
end;

function TdxGanttControlBaseDemoForm.NeedCustomProperties: Boolean;
begin
  Result := True;
end;

procedure TdxGanttControlBaseDemoForm.ResetIsModified;
begin
  FIsModified := False;
end;

procedure TdxGanttControlBaseDemoForm.seTimelineUnitMinWidthPropertiesChange(Sender: TObject);
begin
  dxGanttControl.ViewTimeLine.TimescaleUnitMinWidth := seTimelineUnitMinWidth.Value;
end;

procedure TdxGanttControlBaseDemoForm.SynchronizeWithProperties;
begin
  dxGanttControl.ViewChart.OptionsSheet.Visible := lchbChartVisible.Checked;
  lchbChartCellAutoHeight.Enabled := lchbChartVisible.Checked;
  lchbChartColumnHide.Enabled := lchbChartVisible.Checked;
  lchbChartColumnInsert.Enabled := lchbChartVisible.Checked;
  lchbChartColumnMove.Enabled := lchbChartVisible.Checked;
  lchbChartColumnSize.Enabled := lchbChartVisible.Checked;
  lchbChartColumnQuickCustomization.Enabled := lchbChartVisible.Checked;

  dxGanttControl.ViewChart.OptionsSheet.CellAutoHeight := lchbChartCellAutoHeight.Checked;
  dxGanttControl.ViewChart.OptionsSheet.AllowColumnHide := lchbChartColumnHide.Checked;
  dxGanttControl.ViewChart.OptionsSheet.AllowColumnInsert := lchbChartColumnInsert.Checked;
  dxGanttControl.ViewChart.OptionsSheet.AllowColumnMove := lchbChartColumnMove.Checked;
  dxGanttControl.ViewChart.OptionsSheet.AllowColumnSize := lchbChartColumnSize.Checked;
  dxGanttControl.ViewChart.OptionsSheet.ColumnQuickCustomization := lchbChartColumnQuickCustomization.Checked;

  dxGanttControl.ViewResourceSheet.OptionsSheet.CellAutoHeight := lchbResourceSheetCellAutoHeight.Checked;
  dxGanttControl.ViewResourceSheet.OptionsSheet.AllowColumnHide := lchbResourceSheetColumnHide.Checked;
  dxGanttControl.ViewResourceSheet.OptionsSheet.AllowColumnInsert := lchbResourceSheetColumnInsert.Checked;
  dxGanttControl.ViewResourceSheet.OptionsSheet.AllowColumnMove := lchbResourceSheetColumnMove.Checked;
  dxGanttControl.ViewResourceSheet.OptionsSheet.AllowColumnSize := lchbResourceSheetColumnSize.Checked;
  dxGanttControl.ViewResourceSheet.OptionsSheet.ColumnQuickCustomization := lchbResourceSheetColumnQuickCustomization.Checked;
end;

procedure TdxGanttControlBaseDemoForm.SwitchFullWindowMode(AValue: Boolean);
begin
  liDescription.Visible := not AValue and (liDescription.Caption <> '');
end;

end.
