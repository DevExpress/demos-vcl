unit dxGanttControlLargeDataFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, System.RTLConsts,
  Vcl.Dialogs, Vcl.ActnList, System.Actions, cxClasses, cxGraphics, cxControls, dxCore,
  cxContainer, cxEdit, cxCheckBox, cxSpinEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, dxScrollbarAnnotations, cxLookAndFeels, cxLookAndFeelPainters,
  dxLayoutContainer, dxLayoutLookAndFeels, cxInplaceContainer, dxLayoutControl,
  dxLayoutcxEditAdapters,
  dxGanttControlCustomClasses, dxGanttControl, dxGanttControlBaseFormUnit, Vcl.ImgList, cxImageList,
  dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  dxGanttControlCustomDataModel, dxGanttControlViewChart, dxGanttControlViewResourceSheet,
  dxGanttControlViewTimeLine, dxGanttControlCustomSheet, dxGanttControlTasks, dxGanttControlCalendars,
  dxGanttControlAssignments, dxGanttControlResources, cxRadioGroup, dxCoreClasses;

type
  { TfrmLargeData }

  TfrmLargeData = class(TdxGanttControlBaseDemoForm)
    lgTasks: TdxLayoutGroup;
    rb100K: TdxLayoutRadioButtonItem;
    rb500K: TdxLayoutRadioButtonItem;
    rb1M: TdxLayoutRadioButtonItem;
    btnGenerate: TcxButton;
    dxLayoutItem4: TdxLayoutItem;
    procedure btnGenerateClick(Sender: TObject);
  private
    FLastGenerateCount: Integer;

    function AddTask(const AName: string; AStart: TDateTime; AHoursDuration: Integer; AIsSummary: Boolean;
      AOutLineLevel: Integer = 1; APredecessor: Integer = -1): TdxGanttControlTask; inline;
    function AddMilestone(const AName: string; ADate: TDateTime;
      AOutLineLevel: Integer = 1; APredecessor: Integer = -1): TdxGanttControlTask; inline;
  protected
    procedure GenerateData(ACount: Integer);
    procedure Initialize; override;
    procedure LoadData; override;
  public
    function GetCaption: string; override;
    class function GetID: Integer; override;
  end;

implementation

{$R *.dfm}

uses
  System.DateUtils, System.Generics.Defaults, System.Generics.Collections, Main;

{ TfrmLargeData }

function TfrmLargeData.AddTask(const AName: string; AStart: TDateTime; AHoursDuration: Integer; AIsSummary: Boolean;
  AOutLineLevel: Integer = 1; APredecessor: Integer = -1): TdxGanttControlTask;
var
  ADuration: TdxGanttControlDuration;
  AFormat: TdxDurationFormat;
begin
  Result := dxGanttControl.DataModel.Tasks.Append;
  Result.Name := AName;
  Result.Start := AStart;
  AFormat := TdxDurationFormat.Days;
  ADuration := TdxGanttControlDuration.Create(AHoursDuration / 8, AFormat);
  Result.Duration := ADuration.ToString;
  Result.DurationFormat := AFormat;
  Result.Finish := ADuration.GetWorkFinish(AStart, dxGanttControl.DataModel.Calendars.StandardCalendar);
  Result.Summary := AIsSummary;
  Result.OutlineLevel := AOutLineLevel;
  if APredecessor <> -1 then
    Result.PredecessorLinks.Append.PredecessorUID := APredecessor;
end;

function TfrmLargeData.AddMilestone(const AName: string; ADate: TDateTime;
  AOutLineLevel: Integer = 1; APredecessor: Integer = -1): TdxGanttControlTask;
begin
  Result := AddTask(AName, ADate, 0, False, AOutLineLevel, APredecessor);
  Result.Milestone := True;
end;

procedure TfrmLargeData.GenerateData(ACount: Integer);

const
  ACoursesCount = 56;

  function GetCourseName(ACourseIndex, AIndex: Integer): string;
  const
    ACourseName: array[0..ACoursesCount - 1] of string = (
      'World History', 'Economics', 'Chemistry', 'Biology', 'Physics', 'Cosmology', 'Astronomy', 'BioChemistry', 'Classics',
      'English', 'Political Science', 'Marketing', 'Accounting', 'Education', 'Communications', 'Public Administration',
      'Architecture', 'Business Admin', 'Engineering', 'Materials Science', 'Anthropology', 'Archaeology', 'Egyptology',
      'Mathematics', 'Astrophysics', 'Oceanic Sciences', 'Legal Studies', 'Linguistics', 'Computer Science', 'BioPhysics',
      'Art History', 'Molecular Biology', 'Music', 'Neuroscience', 'Ecology', 'Data Science', 'Civil Engineering',
      'Electrical Engineering', 'Climatology', 'Geology', 'Social Studies', 'Psychology', 'Psychiatry', 'Urban Planning',
      'Theater', 'Sociology', 'Social Welfare', 'Statistics', 'Logic', 'Philosophy', 'European Studies', 'Mid-East Studies',
      'Far-East Studies', 'Genetics', 'Film & TV', 'Applied Science');
  begin
    Result := ACourseName[ACourseIndex];
    if AIndex > 55 then
      Result := Format('%s %d', [Result, AIndex]);
  end;

  procedure InternalGenerate;
  var
    AStart: TDateTime;
    ATask: TdxGanttControlTask;
    AOutlineLevel, ACourseIndex, AIndex, I: Integer;
    APredecessors: TList<Integer>;
  begin
    dxGanttControl.BeginUpdate;
    try
      dxGanttControl.DataModel.BeginUpdate;
      try
        dxGanttControl.DataModel.Reset;
        AStart := DateOf(Now) - DayOfTheWeek(Now) + 4/3 - 7;
        dxGanttControl.DataModel.Properties.ProjectStart := AStart;
        AOutlineLevel := 1;
        AddTask('Company training', AStart, 488, True, AOutlineLevel);
        Inc(AOutlineLevel);
        AddTask('Preparation stage', AStart, 264, True, AOutlineLevel);
        Inc(AOutlineLevel);
        AddTask('Define objectives', AStart, 16, False, AOutlineLevel);

        AddTask('Identify Departments to be Trained', AStart + 2, 96, True, AOutlineLevel);
        AddTask('Create a list of target departments', AStart + 2, 8, False, AOutlineLevel + 1, 3);
        AddTask('Perform departmental training needs analysis', AStart + 3, 56, False, AOutlineLevel + 1, 5);
        AddTask('Compile results', AStart + 14, 16, False, AOutlineLevel + 1, 6);
        AddTask('Create a list of courses', AStart + 16, 16, False, AOutlineLevel + 1, 7);
        AddTask('Inform department heads of the training initiative', AStart + 16, 16, False, AOutlineLevel + 1, 7);

        AddTask('Find for a courses vendor', AStart + 18, 80, True, AOutlineLevel);
        AddTask('Create a list of vendors', AStart + 18, 8, False, AOutlineLevel + 1, 8);
        AddTask('Review and customize training material', AStart + 21, 56, False, AOutlineLevel + 1, 11);
        AddTask('Selection of the vendor and conclusion of the contract', AStart + 30, 16, False, AOutlineLevel + 1, 12);

        AddTask('Schedule courses', AStart + 32, 72, True, AOutlineLevel);
        AddTask('Determine course dates, start and end times', AStart + 32, 8, False, AOutlineLevel + 1, 13);
        AddTask('Determine course locations', AStart + 32, 8, False, AOutlineLevel + 1, 13);
        AddTask('Post training outlines and schedule', AStart + 35, 8, False, AOutlineLevel + 1, 15);
        ATask := AddTask('Order training manuals and necessary material', AStart + 36, 56, False, AOutlineLevel + 1, 17);
        ATask := AddMilestone('Finish stage', ATask.Finish, AOutlineLevel, 18);

        Dec(AOutlineLevel);
        AStart := DateOf(ATask.Start) + 1 + 1/3;
        AddTask('Implementation stage', AStart, 160, True, AOutlineLevel, 19);

        AIndex := 0;
        repeat
          for ACourseIndex := 0 to ACoursesCount - 1 do
          begin
            AddTask(GetCourseName(ACourseIndex, AIndex), AStart, 160, True, AOutlineLevel + 1);
            ATask := AddTask('Overview and Introduction', AStart, 8, False, AOutlineLevel + 2);
            ATask := AddTask('Module One', AStart + 1, 16, False, AOutlineLevel + 2, ATask.UID);
            ATask := AddTask('Module Two', AStart + 5, 8, False, AOutlineLevel + 2, ATask.UID);
            ATask := AddTask('Module Three', AStart + 6, 24, False, AOutlineLevel + 2, ATask.UID);
            ATask := AddTask('Module Four', AStart + 11, 8, False, AOutlineLevel + 2, ATask.UID);
            ATask := AddTask('Module Five', AStart + 12, 8, False, AOutlineLevel + 2, ATask.UID);
            ATask := AddTask('Module Six', AStart + 13, 16, False, AOutlineLevel + 2, ATask.UID);
            ATask := AddTask('Module Seven', AStart + 15, 40, False, AOutlineLevel + 2, ATask.UID);
            ATask := AddTask('Module Eight', AStart + 22, 24, False, AOutlineLevel + 2, ATask.UID);
            ATask := AddTask('Final Module', AStart + 27, 8, False, AOutlineLevel + 2, ATask.UID);
            ATask := AddMilestone('Review and Final Exam Prep', ATask.Finish, AOutlineLevel + 2, ATask.UID);
            Inc(AIndex);
            if dxGanttControl.DataModel.Tasks.Count + 20 > ACount then
              Break;
          end;
          if dxGanttControl.DataModel.Tasks.Count + 20 > ACount then
            Break;
        until False;

        APredecessors := TList<Integer>.Create;
        try
          if ACount - dxGanttControl.DataModel.Tasks.Count - 9 < 0 then
            APredecessors.Add(ATask.UID);
          for ACourseIndex := 0 to ACount - dxGanttControl.DataModel.Tasks.Count - 9 do
          begin
            ATask := AddTask(GetCourseName(ACourseIndex, 0), AStart, 160, False, AOutlineLevel + 1, 19);
            APredecessors.Add(ATask.UID);
          end;
          ATask := AddMilestone('Finish implementation stage', ATask.Finish, AOutlineLevel + 1);
          for I := 0 to APredecessors.Count - 1 do
            ATask.PredecessorLinks.Append.PredecessorUID := APredecessors[I];
        finally
          APredecessors.Free;
        end;

        AStart := DateOf(ATask.Start) + 1 + 1/3;
        AddTask('Closing stage', AStart, 64, True, AOutlineLevel, ATask.UID);
        ATask := AddTask('Issue certificates of completion to participants', AStart, 8, False, AOutlineLevel + 1, ATask.UID);
        ATask := AddTask('Discuss evaluations, results, and process improvements', AStart + 1, 8, False, AOutlineLevel + 1, ATask.UID);
        ATask := AddTask('Collect feedback and compile results', AStart + 4, 24, False, AOutlineLevel + 1, ATask.UID);
        ATask := AddTask('Discuss results with vendor for any improvements', AStart + 7, 8, False, AOutlineLevel + 1, ATask.UID);
        ATask := AddTask('Create a list of best practices and FAQ for future training endeavors', AStart + 8, 16, False, AOutlineLevel + 1, ATask.UID);
        ATask := AddMilestone('Finish stage', ATask.Finish, AOutlineLevel + 1, ATask.UID);
        ATask := AddMilestone('Finish company training', ATask.Finish, AOutlineLevel, ATask.UID);

        dxGanttControl.DataModel.Tasks[0].Start := dxGanttControl.DataModel.Properties.ProjectStart;
        dxGanttControl.DataModel.Tasks[0].Finish := ATask.Finish;
      finally
        dxGanttControl.DataModel.EndUpdate;
      end;
    finally
      dxGanttControl.EndUpdate;
    end;
  end;

var
  ACursor: TCursor;
  AKey: Word;
begin
  if FLastGenerateCount = ACount then
    Exit;
  ACursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  try
    InternalGenerate;
    dxGanttControl.ViewChart.BeginUpdate;
    try
      dxGanttControl.ViewChart.Controller.SheetController.FirstVisibleRowIndex := 0;
      AKey := VK_END;
      dxGanttControl.ViewChart.Controller.SheetController.KeyDown(AKey, [ssCtrl]);
      dxGanttControl.ViewChart.Controller.SheetController.FirstVisibleColumnIndex := 0;
      dxGanttControl.ViewChart.FirstVisibleDateTime := dxGanttControl.DataModel.Tasks[dxGanttControl.DataModel.Tasks.Count - 1].Finish - 7;
    finally
      dxGanttControl.ViewChart.EndUpdate;
    end;
  finally
    Screen.Cursor := ACursor;
  end;
  FLastGenerateCount := ACount;
end;

procedure TfrmLargeData.Initialize;
begin
//
end;

procedure TfrmLargeData.LoadData;
begin
  dxGanttControl.BeginUpdate;
  try
    btnGenerateClick(nil);
    dxGanttControl.ViewChart.Controller.SheetController.FirstVisibleRowIndex := 0;
    dxGanttControl.ViewChart.FirstVisibleDateTime := dxGanttControl.DataModel.Properties.ProjectStart - 3;
  finally
    dxGanttControl.EndUpdate;
  end;
end;

procedure TfrmLargeData.btnGenerateClick(Sender: TObject);
begin
  if rb100K.Checked then
    GenerateData(rb100K.Tag)
  else
  if rb500K.Checked then
    GenerateData(rb500K.Tag)
  else
    GenerateData(rb1M.Tag);
end;

function TfrmLargeData.GetCaption: string;
begin
  Result := 'Large Data Source';
end;

class function TfrmLargeData.GetID: Integer;
begin
  Result := dxLargeDataSourceDemoID;
end;

initialization
  TfrmLargeData.Register;

end.

