unit uProgressBar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxLayoutContainer, cxClasses,
  dxLayoutControl, Vcl.ComCtrls, Vcl.ExtCtrls, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxProgressBar, cxTextEdit,
  cxCheckBox, cxMaskEdit, cxDropDownEdit, dxToggleSwitch, cxSpinEdit, dxFrameCustomControl, Vcl.ActnList;

type
  TfrmProgressBar = class(TfrmCustomControl)
    Timer1: TTimer;
    ProgressBar: TcxProgressBar;
    dxLayoutItem1: TdxLayoutItem;
    cmbShowTextStyle: TcxComboBox;
    dxLayoutItem4: TdxLayoutItem;
    edText: TcxTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    cbMarquee: TcxCheckBox;
    dxLayoutItem3: TdxLayoutItem;
    cbShowText: TcxCheckBox;
    dxLayoutItem6: TdxLayoutItem;
    cmbTextOrientation: TcxComboBox;
    dxLayoutItem7: TdxLayoutItem;
    cbOrientation: TcxCheckBox;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem3: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem4: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem5: TdxLayoutEmptySpaceItem;
    edAnimationSpeed: TcxSpinEdit;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutGroup5: TdxLayoutGroup;
    acOrientation: TAction;
    acShowText: TAction;
    acMarquee: TAction;
    procedure Timer1Timer(Sender: TObject);
    procedure cmbShowTextStylePropertiesChange(Sender: TObject);
    procedure cmbTextOrientationPropertiesChange(Sender: TObject);
    procedure edTextPropertiesChange(Sender: TObject);
    procedure edAnimationSpeedPropertiesChange(Sender: TObject);
    procedure acOrientationExecute(Sender: TObject);
    procedure acShowTextExecute(Sender: TObject);
    procedure acMarqueeExecute(Sender: TObject);
  private
    FIncrement: Integer;
    FSavedTextStyle: TcxProgressBarTextStyle;
  protected
    procedure CheckControlStartProperties; override;
    function GetDescription: string; override;
    function GetInspectedObject: TPersistent; override;
  public
    procedure ChangeVisibility(AShow: Boolean); override;
  end;

implementation

uses
  uStrsConst, dxFrames, FrameIDs, System.Math;

{$R *.dfm}

procedure TfrmProgressBar.ChangeVisibility(AShow: Boolean);
begin
  inherited ChangeVisibility(AShow);
  Timer1.Enabled := AShow;
end;

procedure TfrmProgressBar.CheckControlStartProperties;
begin
  FIncrement := 1;
  ProgressBar.Properties.Orientation := TcxProgressBarOrientation(Integer(acOrientation.Checked));
  ProgressBar.Properties.Marquee := acMarquee.Checked;
  ProgressBar.Properties.AnimationSpeed := edAnimationSpeed.Value;
  ProgressBar.Properties.ShowText := acShowText.Checked;
  ProgressBar.Properties.TextOrientation := TcxProgressBarOrientation(cmbTextOrientation.ItemIndex);
  ProgressBar.Properties.Text := edText.Text;
  ProgressBar.Properties.ShowTextStyle := TcxProgressBarTextStyle(cmbShowTextStyle.ItemIndex);
end;

function TfrmProgressBar.GetDescription: string;
begin
  Result := sdxFrameProgressBarDescription;
end;

function TfrmProgressBar.GetInspectedObject: TPersistent;
begin
  Result := ProgressBar;
end;

procedure TfrmProgressBar.Timer1Timer(Sender: TObject);
begin
  ProgressBar.Position := ProgressBar.Position + FIncrement;
  if ProgressBar.Position = 0 then
    FIncrement := 1
  else
    if ProgressBar.Position = 100 then
      FIncrement := -1;
end;

procedure TfrmProgressBar.acShowTextExecute(Sender: TObject);
begin
  ProgressBar.Properties.ShowText := acShowText.Checked;
end;

procedure TfrmProgressBar.acOrientationExecute(Sender: TObject);
var
  AOldOrientation: TcxProgressBarOrientation;
begin
  AOldOrientation := ProgressBar.Properties.Orientation;
  ProgressBar.Properties.Orientation := TcxProgressBarOrientation(Integer(acOrientation.Checked));
  if AOldOrientation <> ProgressBar.Properties.Orientation then
    ProgressBar.SetBounds(ProgressBar.Left, ProgressBar.Top, ProgressBar.Height, ProgressBar.Width);
end;

procedure TfrmProgressBar.acMarqueeExecute(Sender: TObject);
begin
  if acMarquee.Checked then
    FSavedTextStyle := ProgressBar.Properties.ShowTextStyle;
  ProgressBar.Properties.Marquee := acMarquee.Checked;
  if not acMarquee.Checked then
    ProgressBar.Properties.ShowTextStyle := FSavedTextStyle;
  Timer1.Enabled := not ProgressBar.Properties.Marquee;
end;

procedure TfrmProgressBar.cmbTextOrientationPropertiesChange(Sender: TObject);
begin
  ProgressBar.Properties.TextOrientation := TcxProgressBarOrientation(cmbTextOrientation.ItemIndex);
end;

procedure TfrmProgressBar.cmbShowTextStylePropertiesChange(Sender: TObject);
begin
  ProgressBar.Properties.ShowTextStyle := TcxProgressBarTextStyle(cmbShowTextStyle.ItemIndex);
  edTextPropertiesChange(edText);
end;

procedure TfrmProgressBar.edAnimationSpeedPropertiesChange(Sender: TObject);
begin
  ProgressBar.Properties.AnimationSpeed := edAnimationSpeed.Value;
end;

procedure TfrmProgressBar.edTextPropertiesChange(Sender: TObject);
begin
  if ProgressBar.Properties.ShowTextStyle = cxtsText then
    ProgressBar.Properties.Text := edText.Text;
end;

initialization
  dxFrameManager.RegisterFrame(ProgressBarFrameID, TfrmProgressBar, ProgressBarFrameName, -1,
    EditorsWithoutTextBoxesGroupIndex, -1, -1);

end.

