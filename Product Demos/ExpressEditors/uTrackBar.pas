unit uTrackBar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxLayoutContainer, cxClasses,
  dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxSpinEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCheckBox, cxTrackBar, dxFrameCustomControl, Vcl.ActnList;

type
  TfrmTrackBar = class(TfrmCustomControl)
    dxLayoutItem2: TdxLayoutItem;
    cbOrientation: TcxCheckBox;
    dxLayoutItem3: TdxLayoutItem;
    cbReverseDirection: TcxCheckBox;
    dxLayoutItem4: TdxLayoutItem;
    cbShowChangeButtons: TcxCheckBox;
    dxLayoutItem5: TdxLayoutItem;
    cbShowTrack: TcxCheckBox;
    dxLayoutItem6: TdxLayoutItem;
    cbShowTicks: TcxCheckBox;
    cmbTextOrientation: TcxComboBox;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    cmbTickMarks: TcxComboBox;
    dxLayoutItem9: TdxLayoutItem;
    cmbTickType: TcxComboBox;
    edTickSize: TcxSpinEdit;
    dxLayoutItem10: TdxLayoutItem;
    TrackBar: TcxTrackBar;
    dxLayoutItem1: TdxLayoutItem;
    edFrequency: TcxSpinEdit;
    dxLayoutItem11: TdxLayoutItem;
    acOrientation: TAction;
    acReverseDirection: TAction;
    acShowChangeButtons: TAction;
    acShowTicks: TAction;
    acShowTrack: TAction;
    procedure acReverseDirectionExecute(Sender: TObject);
    procedure acOrientationExecute(Sender: TObject);
  private
    procedure SetTrackBarProperties;
  protected
    procedure CheckControlStartProperties; override;
    function GetDescription: string; override;
    function GetInspectedObject: TPersistent; override;
  end;

implementation

uses
  uStrsConst, dxFrames, FrameIDs, cxGeometry;

{$R *.dfm}

procedure TfrmTrackBar.CheckControlStartProperties;
begin
  SetTrackBarProperties;
end;

function TfrmTrackBar.GetDescription: string;
begin
  Result := sdxFrameTrackBarDescription;
end;

function TfrmTrackBar.GetInspectedObject: TPersistent;
begin
  Result := TrackBar;
end;

procedure TfrmTrackBar.acOrientationExecute(Sender: TObject);
begin
  TrackBar.SetBounds(TrackBar.Left, TrackBar.Top, TrackBar.Height, TrackBar.Width);
  SetTrackBarProperties;
end;

procedure TfrmTrackBar.acReverseDirectionExecute(Sender: TObject);
begin
  SetTrackBarProperties;
end;

procedure TfrmTrackBar.SetTrackBarProperties;
begin
  TrackBar.Properties.Orientation := TcxTrackBarOrientation(Integer(acOrientation.Checked));
  TrackBar.Properties.Frequency := edFrequency.Value;
  TrackBar.Properties.ReverseDirection := acReverseDirection.Checked;
  TrackBar.Properties.ShowChangeButtons := acShowChangeButtons.Checked;
  TrackBar.Properties.ShowTicks := acShowTicks.Checked;
  TrackBar.Properties.ShowTrack := acShowTrack.Checked;
  TrackBar.Properties.TextOrientation := TcxTrackBarTextOrientation(cmbTextOrientation.ItemIndex);
  TrackBar.Properties.TickMarks := TcxTrackBarTickMarks(cmbTickMarks.ItemIndex);
  TrackBar.Properties.TickType := TcxTrackBarTickType(cmbTickType.ItemIndex);
  TrackBar.Properties.TickSize := ScaleFactor.Apply(edTickSize.Value);
end;

initialization
  dxFrameManager.RegisterFrame(TrackBarFrameID, TfrmTrackBar, TrackBarFrameName, -1,
    EditorsWithoutTextBoxesGroupIndex, -1, -1);

end.
