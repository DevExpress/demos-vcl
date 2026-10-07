unit uZoomTrackBar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxFrameCustomControl, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxLayoutContainer,
  cxClasses, dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxTrackBar, dxZoomTrackBar, cxSpinEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCheckBox, Vcl.ActnList;

type
  TfrmZoomTrackBar = class(TfrmCustomControl)
    ZoomTrackBar: TdxZoomTrackBar;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    cbOrientation: TcxCheckBox;
    dxLayoutItem3: TdxLayoutItem;
    cbReverseDirection: TcxCheckBox;
    dxLayoutItem4: TdxLayoutItem;
    cbShowChangeButtons: TcxCheckBox;
    dxLayoutItem5: TdxLayoutItem;
    cbShowTicks: TcxCheckBox;
    dxLayoutItem6: TdxLayoutItem;
    cbShowTrack: TcxCheckBox;
    dxLayoutItem7: TdxLayoutItem;
    cmbTextOrientation: TcxComboBox;
    dxLayoutItem8: TdxLayoutItem;
    cmbTickMarks: TcxComboBox;
    dxLayoutItem9: TdxLayoutItem;
    cmbTickType: TcxComboBox;
    dxLayoutItem10: TdxLayoutItem;
    edTickSize: TcxSpinEdit;
    dxLayoutItem11: TdxLayoutItem;
    edFrequency1: TcxSpinEdit;
    dxLayoutItem12: TdxLayoutItem;
    edFrequency2: TcxSpinEdit;
    acOrientation: TAction;
    acReverseDirection: TAction;
    acShowChangeButtons: TAction;
    acShowTicks: TAction;
    acShowTrack: TAction;
    procedure acOrientationExecute(Sender: TObject);
    procedure acReverseDirectionExecute(Sender: TObject);
  private
    procedure SetZoomTrackBarProperties;
  protected
    procedure CheckControlStartProperties; override;
    function GetDescription: string; override;
    function GetInspectedObject: TPersistent; override;
  end;

implementation

uses
  uStrsConst, dxFrames, FrameIDs, cxGeometry;

{$R *.dfm}

procedure TfrmZoomTrackBar.CheckControlStartProperties;
begin
  SetZoomTrackBarProperties;
end;

function TfrmZoomTrackBar.GetDescription: string;
begin
  Result := sdxFrameZoomTrackBarDescription;
end;

function TfrmZoomTrackBar.GetInspectedObject: TPersistent;
begin
  Result := ZoomTrackBar;
end;

procedure TfrmZoomTrackBar.acOrientationExecute(Sender: TObject);
begin
  ZoomTrackBar.SetBounds(ZoomTrackBar.Left, ZoomTrackBar.Top, ZoomTrackBar.Height, ZoomTrackBar.Width);
  SetZoomTrackBarProperties;
end;

procedure TfrmZoomTrackBar.acReverseDirectionExecute(Sender: TObject);
begin
  SetZoomTrackBarProperties;
end;

procedure TfrmZoomTrackBar.SetZoomTrackBarProperties;
begin
  ZoomTrackBar.Properties.Orientation := TcxTrackBarOrientation(Integer(acOrientation.Checked));
  ZoomTrackBar.Properties.FirstRange.Frequency := edFrequency1.Value;
  ZoomTrackBar.Properties.SecondRange.Frequency := edFrequency2.Value;
  ZoomTrackBar.Properties.ReverseDirection := acReverseDirection.Checked;
  ZoomTrackBar.Properties.ShowChangeButtons := acShowChangeButtons.Checked;
  ZoomTrackBar.Properties.ShowTicks := acShowTicks.Checked;
  ZoomTrackBar.Properties.ShowTrack := acShowTrack.Checked;
  ZoomTrackBar.Properties.TextOrientation := TcxTrackBarTextOrientation(cmbTextOrientation.ItemIndex);
  ZoomTrackBar.Properties.TickMarks := TcxTrackBarTickMarks(cmbTickMarks.ItemIndex);
  ZoomTrackBar.Properties.TickType := TcxTrackBarTickType(cmbTickType.ItemIndex);
  ZoomTrackBar.Properties.TickSize := ScaleFactor.Apply(edTickSize.Value);
end;

initialization
  dxFrameManager.RegisterFrame(ZoomTrackBarFrameID, TfrmZoomTrackBar, ZoomTrackBarFrameName, -1,
    EditorsWithoutTextBoxesGroupIndex, -1, -1);

end.
