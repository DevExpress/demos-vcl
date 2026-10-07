unit uWheelPicker;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxFrameCustomControl, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutContainer, dxWheelPicker, Vcl.ActnList, cxClasses, dxLayoutControl, Vcl.ImgList, cxImageList,
  Main, cxTextEdit, cxMaskEdit, cxSpinEdit, cxCheckBox, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls;

type
  TfrmWheelPicker = class(TfrmCustomControl)
    WheelPicker: TdxWheelPicker;
    dxLayoutItem1: TdxLayoutItem;
    cxImageList1: TcxImageList;
    dxLayoutEmptySpaceItem3: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem4: TdxLayoutEmptySpaceItem;
    edLineCount: TcxSpinEdit;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutEmptySpaceItem6: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem7: TdxLayoutEmptySpaceItem;
    dxLayoutItem4: TdxLayoutItem;
    cxCheckBox2: TcxCheckBox;
    dxLayoutEmptySpaceItem8: TdxLayoutEmptySpaceItem;
    dxLayoutItem5: TdxLayoutItem;
    cxCheckBox3: TcxCheckBox;
    dxLayoutItem6: TdxLayoutItem;
    cxCheckBox4: TcxCheckBox;
    dxLayoutItem7: TdxLayoutItem;
    cxCheckBox5: TcxCheckBox;
    acLineAutoHeight: TAction;
    acWheelAutoWidth: TAction;
    acWheel1Cyclic: TAction;
    acWheel2Cyclic: TAction;
    acWheel3Cyclic: TAction;
    Timer1: TTimer;
    btnGame: TcxButton;
    liBtnGame: TdxLayoutItem;
    dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem;
    liResult: TdxLayoutLabeledItem;
    procedure acLineAutoHeightExecute(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure btnGameClick(Sender: TObject);
  private
    procedure DoStart;
    procedure DoStop;
    procedure SetWheelPickerProperties;
  protected
    procedure CheckControlStartProperties; override;
    function GetDescription: string; override;
    function GetInspectedObject: TPersistent; override;
  end;

implementation

uses
  uStrsConst, dxFrames, FrameIDs, System.Math;

{$R *.dfm}

procedure TfrmWheelPicker.CheckControlStartProperties;
begin
  Randomize;
//  WheelPickerPropertiesEditValueChanged(nil);
  SetWheelPickerProperties;
end;

function TfrmWheelPicker.GetDescription: string;
begin
  Result := sdxFrameWheelPickerDescription;
end;

function TfrmWheelPicker.GetInspectedObject: TPersistent;
begin
  Result := WheelPicker;
end;

procedure TfrmWheelPicker.acLineAutoHeightExecute(Sender: TObject);
begin
  SetWheelPickerProperties;
end;

procedure TfrmWheelPicker.SetWheelPickerProperties;
begin
  WheelPicker.Properties.LineAutoHeight := True;
  WheelPicker.Properties.LineCount := edLineCount.Value;
  WheelPicker.Properties.WheelAutoWidth := acWheelAutoWidth.Checked;
  WheelPicker.Properties.Wheels[0].Cyclic := acWheel1Cyclic.Checked;
  WheelPicker.Properties.Wheels[1].Cyclic := acWheel2Cyclic.Checked;
  WheelPicker.Properties.Wheels[2].Cyclic := acWheel3Cyclic.Checked;
end;

procedure TfrmWheelPicker.DoStart;
begin
  btnGame.Caption := 'STOP';
  Timer1.Enabled := True;
  liResult.Caption := 'Press "Stop" when you are ready';
end;

procedure TfrmWheelPicker.DoStop;
begin
  Timer1.Enabled := False;
  btnGame.Caption := 'SPIN';
  if (WheelPicker.ItemIndexes[0] = WheelPicker.ItemIndexes[1]) and
    (WheelPicker.ItemIndexes[1] = WheelPicker.ItemIndexes[2]) then
    liResult.Caption := 'Congratulations! YOU WIN!'
  else
    if (WheelPicker.ItemIndexes[0] = WheelPicker.ItemIndexes[1]) or
      (WheelPicker.ItemIndexes[1] = WheelPicker.ItemIndexes[2]) or
      (WheelPicker.ItemIndexes[0] = WheelPicker.ItemIndexes[2]) then
      liResult.Caption := 'That was close, try again!'
    else
      liResult.Caption := 'Don''t give up and try again.';
end;

procedure TfrmWheelPicker.Timer1Timer(Sender: TObject);

  function GetNewItemIndex(AOldIndex: Integer): Integer;
  begin
    Result := AOldIndex + 1 + Integer(Random(10) > 7);
    Result := IfThen(Result > 9, 0, Result);
  end;

begin
  WheelPicker.ItemIndexes[0] := GetNewItemIndex(WheelPicker.ItemIndexes[0]);
  WheelPicker.ItemIndexes[1] := GetNewItemIndex(WheelPicker.ItemIndexes[1]);
  WheelPicker.ItemIndexes[2] := GetNewItemIndex(WheelPicker.ItemIndexes[2]);
end;

procedure TfrmWheelPicker.btnGameClick(Sender: TObject);
begin
  if not Timer1.Enabled then
    DoStart
  else
    DoStop;
end;

initialization
  dxFrameManager.RegisterFrame(WheelPickerFrameID, TfrmWheelPicker, WheelPickerFrameName, -1,
    EditorsWithoutTextBoxesGroupIndex, -1, -1);

end.
