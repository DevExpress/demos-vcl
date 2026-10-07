unit uRangeTrackBar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxFrameCustomControl, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxTrackBar, dxRangeTrackBar, cxClasses, dxLayoutControl, cxDropDownEdit,
  cxTextEdit, cxMaskEdit, cxSpinEdit, cxCheckBox, Vcl.ActnList;

type
  TfrmRangeTrackBar = class(TfrmCustomControl)
    RangeTrackBar: TdxRangeTrackBar;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    cbOrientation: TcxCheckBox;
    dxLayoutItem3: TdxLayoutItem;
    cbReverseDirection: TcxCheckBox;
    dxLayoutItem5: TdxLayoutItem;
    cbShowTicks: TcxCheckBox;
    dxLayoutItem6: TdxLayoutItem;
    cbShowTrack: TcxCheckBox;
    dxLayoutItem7: TdxLayoutItem;
    edFrequency: TcxSpinEdit;
    dxLayoutItem8: TdxLayoutItem;
    cmbTextOrientation: TcxComboBox;
    dxLayoutItem9: TdxLayoutItem;
    cmbTickMarks: TcxComboBox;
    dxLayoutItem10: TdxLayoutItem;
    cmbTickType: TcxComboBox;
    dxLayoutItem11: TdxLayoutItem;
    edTickSize: TcxSpinEdit;
    dxLayoutItem12: TdxLayoutItem;
    edRangeMax: TcxSpinEdit;
    dxLayoutItem13: TdxLayoutItem;
    edRangeMin: TcxSpinEdit;
    acOrientation: TAction;
    acReverseDirection: TAction;
    acShowTicks: TAction;
    acShowTrack: TAction;
    procedure acOrientationExecute(Sender: TObject);
    procedure acReverseDirectionExecute(Sender: TObject);
    procedure RangeTrackBarPropertiesChange(Sender: TObject);
  private
    procedure CheckEditorRangeValues;
    procedure SetRangeTrackBarProperties;
  protected
    procedure CheckControlStartProperties; override;
    function GetDescription: string; override;
    function GetInspectedObject: TPersistent; override;
  end;

implementation

uses
  uStrsConst, dxFrames, FrameIDs, cxGeometry;

{$R *.dfm}

procedure TfrmRangeTrackBar.CheckControlStartProperties;
begin
  SetRangeTrackBarProperties;
end;

procedure TfrmRangeTrackBar.CheckEditorRangeValues;
begin
  edRangeMin.Value := RangeTrackBar.Range.Min;
  edRangeMax.Value := RangeTrackBar.Range.Max;
end;

function TfrmRangeTrackBar.GetDescription: string;
begin
  Result := sdxFrameRangeTrackBarDescription;
end;

function TfrmRangeTrackBar.GetInspectedObject: TPersistent;
begin
  Result := RangeTrackBar;
end;

procedure TfrmRangeTrackBar.RangeTrackBarPropertiesChange(Sender: TObject);
begin
  CheckEditorRangeValues;
end;

procedure TfrmRangeTrackBar.acOrientationExecute(Sender: TObject);
begin
  RangeTrackBar.SetBounds(RangeTrackBar.Left, RangeTrackBar.Top, RangeTrackBar.Height, RangeTrackBar.Width);
  SetRangeTrackBarProperties;
end;

procedure TfrmRangeTrackBar.acReverseDirectionExecute(Sender: TObject);
begin
  SetRangeTrackBarProperties;
end;

procedure TfrmRangeTrackBar.SetRangeTrackBarProperties;
begin
  RangeTrackBar.Properties.Orientation := TcxTrackBarOrientation(Integer(acOrientation.Checked));
  RangeTrackBar.Properties.Frequency := edFrequency.Value;
  RangeTrackBar.Properties.ReverseDirection := acReverseDirection.Checked;
  RangeTrackBar.Properties.ShowTicks := acShowTicks.Checked;
  RangeTrackBar.Properties.ShowTrack := acShowTrack.Checked;
  RangeTrackBar.Properties.TextOrientation := TcxTrackBarTextOrientation(cmbTextOrientation.ItemIndex);
  RangeTrackBar.Properties.TickMarks := TcxTrackBarTickMarks(cmbTickMarks.ItemIndex);
  RangeTrackBar.Properties.TickType := TcxTrackBarTickType(cmbTickType.ItemIndex);
  RangeTrackBar.Properties.TickSize := ScaleFactor.Apply(edTickSize.Value);
  RangeTrackBar.Range.Min := edRangeMin.Value;
  RangeTrackBar.Range.Max := edRangeMax.Value;
  CheckEditorRangeValues;
end;

initialization
  dxFrameManager.RegisterFrame(RangeTrackBarFrameID, TfrmRangeTrackBar, RangeTrackBarFrameName, -1,
    EditorsWithoutTextBoxesGroupIndex, -1, -1);

end.
