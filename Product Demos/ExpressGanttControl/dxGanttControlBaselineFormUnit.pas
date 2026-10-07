unit dxGanttControlBaselineFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  dxGanttControlBaseFormUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxCore, cxEdit, dxGanttControl,
  dxGanttControlCustomSheet, dxGanttControlViewChart,
  dxGanttControlViewResourceSheet, dxGanttControlViewTimeline,
  dxGanttControlTasks, dxGanttControlAssignments, dxGanttControlResources,
  cxContainer, dxLayoutContainer, dxLayoutcxEditAdapters, cxClasses,
  dxLayoutLookAndFeels, cxSpinEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  dxGanttControlCustomClasses, dxLayoutControl, dxGanttControlCustomDataModel,
  dxGanttControlDataModel, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons;

type
  TfrmBaselines = class(TdxGanttControlBaseDemoForm)
    cbBaseline: TcxComboBox;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutGroup6: TdxLayoutGroup;
    lcbiSelectedTask: TdxLayoutCheckBoxItem;
    cbSetBaseline: TcxComboBox;
    dxLayoutItem6: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutItem7: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    procedure dxGanttControlBaselineChanged(Sender: TObject;
      ABaseline: TdxGanttControlDataModelBaseline);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cbBaselinePropertiesEditValueChanged(Sender: TObject);
    procedure dxGanttControlDataModelLoaded(Sender: TObject);
  private
    FLockCount: Integer;
    function BaselineToText(ABaseline: TdxGanttControlDataModelBaseline): string;
    procedure UpdateBaselineList;
  protected
    procedure LoadData; override;
  public
    function GetCaption: string; override;
    class function GetID: Integer; override;
  end;

implementation

{$R *.dfm}

uses
  System.Math, dxCoreClasses, Main;

{ TfrmBaselines }

function TfrmBaselines.BaselineToText(
  ABaseline: TdxGanttControlDataModelBaseline): string;
begin
  if ABaseline.Description <> '' then
    Result := ABaseline.Description
  else if ABaseline.Number = 0 then
    Result := Format('Baseline (Last saved on %s)', [DateTimeToStr(ABaseline.Created)])
  else
    Result := Format('Baseline %d (Last saved on %s)', [ABaseline.Number, DateTimeToStr(ABaseline.Created)])
end;

procedure TfrmBaselines.cbBaselinePropertiesEditValueChanged(Sender: TObject);
begin
  if FLockCount > 0 then
    Exit;
  if (cbBaseline.ItemIndex = -1) or (cbBaseline.ActiveProperties.Items.Objects[cbBaseline.ItemIndex] = nil) then
    dxGanttControl.ViewChart.HideBaselines
  else
    dxGanttControl.ViewChart.ShowBaselines(TdxGanttControlDataModelBaseline(cbBaseline.ActiveProperties.Items.Objects[cbBaseline.ItemIndex]).Number);
end;

procedure TfrmBaselines.cxButton1Click(Sender: TObject);
begin
  dxGanttControl.ViewChart.SetBaselines(cbSetBaseline.ItemIndex, lcbiSelectedTask.Checked);
end;

procedure TfrmBaselines.cxButton2Click(Sender: TObject);
begin
  dxGanttControl.ViewChart.ClearBaselines(cbSetBaseline.ItemIndex, lcbiSelectedTask.Checked);
end;

procedure TfrmBaselines.dxGanttControlBaselineChanged(Sender: TObject;
  ABaseline: TdxGanttControlDataModelBaseline);
begin
  UpdateBaselineList;
end;

procedure TfrmBaselines.dxGanttControlDataModelLoaded(Sender: TObject);
begin
  inherited;
  UpdateBaselineList;
  cbBaseline.ItemIndex := 0;
  cbSetBaseline.ItemIndex := 1;
end;

function TfrmBaselines.GetCaption: string;
begin
  Result := 'Baselines';
end;

class function TfrmBaselines.GetID: Integer;
begin
  Result := dxBaselinesDemoID
end;

procedure TfrmBaselines.LoadData;
begin
  inherited LoadData;
  dxGanttControl.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Data\SoftDev-Baselines.xml');
end;

procedure TfrmBaselines.UpdateBaselineList;
var
  I: Integer;
  AText: string;
  ABaseline: TdxGanttControlDataModelBaseline;
  ASetBaselineIndex: Integer;
begin
  Inc(FLockCount);
  cbBaseline.ActiveProperties.BeginUpdate;
  cbSetBaseline.ActiveProperties.BeginUpdate;
  try
    if dxGanttControl.ViewChart.BaselineNumber < 0 then
      ABaseline := nil
    else
      ABaseline := dxGanttControl.DataModel.Baselines.Find(dxGanttControl.ViewChart.BaselineNumber);
    ASetBaselineIndex := cbSetBaseline.ItemIndex;
    cbBaseline.ActiveProperties.Items.Clear;
    cbSetBaseline.ActiveProperties.Items.Clear;
    cbSetBaseline.ActiveProperties.Items.Add('Baseline');
    for I := 1 to 10 do
      cbSetBaseline.ActiveProperties.Items.Add(Format('Baseline %d', [I]));
    cbBaseline.ActiveProperties.Items.Add('None');
    for I := 0 to dxGanttControl.DataModel.Baselines.Count - 1 do
    begin
      AText := BaselineToText(dxGanttControl.DataModel.Baselines[I]);
      cbBaseline.ActiveProperties.Items.AddObject(AText, dxGanttControl.DataModel.Baselines[I]);
      if dxGanttControl.DataModel.Baselines[I].Number <= 10 then
      begin
        cbSetBaseline.ActiveProperties.Items[dxGanttControl.DataModel.Baselines[I].Number] := AText;
        cbSetBaseline.ActiveProperties.Items.Objects[dxGanttControl.DataModel.Baselines[I].Number] := dxGanttControl.DataModel.Baselines[I];
      end;
    end;
    I := cbBaseline.ActiveProperties.Items.IndexOfObject(ABaseline);
    cbBaseline.ItemIndex := Max(0, I);
    cbSetBaseline.ItemIndex := ASetBaselineIndex;
  finally
    cbSetBaseline.ActiveProperties.EndUpdate;
    cbBaseline.ActiveProperties.EndUpdate;
    Dec(FLockCount);
  end;
end;

initialization
  TfrmBaselines.Register;

end.
