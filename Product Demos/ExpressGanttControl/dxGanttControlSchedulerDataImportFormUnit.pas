unit dxGanttControlSchedulerDataImportFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.ActnList, System.Actions, cxClasses, cxGraphics, cxControls, dxCore,
  cxContainer, cxEdit, cxCheckBox, cxSpinEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, dxScrollbarAnnotations, cxLookAndFeels, cxLookAndFeelPainters,
  dxLayoutContainer, dxLayoutLookAndFeels, cxInplaceContainer, dxLayoutControl,
  dxLayoutcxEditAdapters,
  dxGanttControlCustomClasses, dxGanttControl, dxGanttControlBaseFormUnit, Vcl.ImgList, cxImageList,
  dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  dxGanttControlViewChart, dxGanttControlViewResourceSheet,
  dxGanttControlViewTimeLine, dxGanttControlCustomSheet, dxGanttControlTasks, dxGanttControlCustomDataModel,
  dxGanttControlAssignments, dxGanttControlResources, cxStyles, cxScheduler, cxSchedulerStorage,
  cxSchedulerCustomControls, cxSchedulerCustomResourceView, cxSchedulerDayView, cxSchedulerAgendaView,
  cxSchedulerDateNavigator, cxSchedulerHolidays, cxSchedulerTimeGridView, cxSchedulerUtils, cxSchedulerWeekView,
  cxSchedulerYearView, cxSchedulerGanttView, cxSchedulerRecurrence, dxBarBuiltInMenu, cxSchedulerRibbonStyleEventEditor,
  dxGanttControlSchedulerStorageImporter, cxSchedulerTreeListBrowser, dxSkinsCore;

type
  { TfrmSchedulerStorageImporter }

  TfrmSchedulerDataImport = class(TdxGanttControlBaseDemoForm)
    dxLayoutItem4: TdxLayoutItem;
    Scheduler: TcxScheduler;
    dxLayoutSplitterItem2: TdxLayoutSplitterItem;
    SchedulerGanttStorage: TcxSchedulerStorage;
    dxLayoutGroup6: TdxLayoutGroup;
    btnImport: TcxButton;
    dxLayoutItem6: TdxLayoutItem;
    lgGanttControl: TdxLayoutGroup;
    lcbChangeLayout: TdxLayoutCheckBoxItem;
    procedure btnImportClick(Sender: TObject);
    procedure lcbChangeLayoutClick(Sender: TObject);
    procedure lgMainGroupTabChanged(Sender: TObject);
  protected
    procedure Initialize; override;
    procedure LoadData; override;
  public
    function GetCaption: string; override;
    class function GetID: Integer; override;
  end;

implementation

{$R *.dfm}

uses
  System.Math, System.DateUtils, System.RTLConsts, dxCoreClasses, Main, cxCalendar;

type
  TdxGanttControlSheetColumnAccess = class(TdxGanttControlSheetColumn);

{ TfrmSchedulerStorageImporter }

procedure TfrmSchedulerDataImport.Initialize;
var
  I: Integer;
  AColumn: TdxGanttControlSheetColumnAccess;
begin
  lcbChangeLayout.Checked := True;
  for I := 0 to dxGanttControl.ViewChart.OptionsSheet.Columns.Count -1 do
  begin
    AColumn := TdxGanttControlSheetColumnAccess(dxGanttControl.ViewChart.OptionsSheet.Columns[I]);
    if AColumn.Properties is TcxDateEditProperties then
      TcxDateEditProperties(AColumn.Properties).DisplayFormat := FormatSettings.ShortDateFormat;
  end;
end;

procedure TfrmSchedulerDataImport.lcbChangeLayoutClick(Sender: TObject);
begin
  if lcbChangeLayout.Checked then
    lgMainGroup.LayoutDirection := ldTabbed
  else
    lgMainGroup.LayoutDirection := ldVertical;
  lgMainGroupTabChanged(nil);
end;

procedure TfrmSchedulerDataImport.lgMainGroupTabChanged(Sender: TObject);
begin
  lgActiveView.Visible := (lgMainGroup.ItemIndex = 2) or not lcbChangeLayout.Checked;
end;

procedure TfrmSchedulerDataImport.LoadData;
var
  I: Integer;
  ADate: TDateTime;
begin
  SchedulerGanttStorage.BeginUpdate;
  try
    SchedulerGanttStorage.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Data\GanttEvents.bin');

    ADate := MaxInt;
    for I := 0 to SchedulerGanttStorage.EventCount - 1 do
      ADate := Min(SchedulerGanttStorage.Events[I].Start, ADate);
    ADate := Int(Today - ADate - 10);
    for I := SchedulerGanttStorage.EventCount - 1 downto 0 do
      with SchedulerGanttStorage.Events[I] do
        MoveTo(Start + ADate);
  finally
    SchedulerGanttStorage.EndUpdate;
  end;
  ADate := Today - 7;
  Scheduler.SelectDays(ADate, ADate);
end;

procedure TfrmSchedulerDataImport.btnImportClick(Sender: TObject);
begin
  dxGanttControlImportFromSchedulerStorage(SchedulerGanttStorage, dxGanttControl.DataModel);
  dxGanttControl.ViewChart.FirstVisibleDateTime := dxGanttControl.DataModel.Tasks[0].Start - 7;
  lgMainGroup.ItemIndex := lgGanttControl.Index;
  lgActiveView.Enabled := True;
  cmbChartTimescale.Enabled := True;
  cmbTimelineScale.Enabled := True;
  seTimelineUnitMinWidth.Enabled := True;
end;

function TfrmSchedulerDataImport.GetCaption: string;
begin
  Result := 'Scheduler Data Import';
end;

class function TfrmSchedulerDataImport.GetID: Integer;
begin
  Result := dxSchedulerDataImportDemoID;
end;

initialization
  TfrmSchedulerDataImport.Register;

end.

