unit uSpinEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxFrameCustomControl, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxTextEdit, cxMaskEdit, cxSpinEdit, Vcl.ActnList, cxClasses, dxLayoutControl,
  cxDropDownEdit, cxCheckBox;

type
  TfrmSpinEdit = class(TfrmCustomControl)
    SpinEdit: TcxSpinEdit;
    dxLayoutItem1: TdxLayoutItem;
    cbIsFloatValue: TcxCheckBox;
    dxLayoutItem4: TdxLayoutItem;
    cmbButtonsPosition: TcxComboBox;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    cmbMinMax: TcxComboBox;
    dxLayoutItem3: TdxLayoutItem;
    cmbIncrement: TcxComboBox;
    dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem3: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem4: TdxLayoutEmptySpaceItem;
    dxLayoutItem6: TdxLayoutItem;
    cmbAlignment: TcxComboBox;
    dxLayoutItem7: TdxLayoutItem;
    cmbLargeIncrement: TcxComboBox;
    dxLayoutGroup4: TdxLayoutGroup;
    cbShowFastButtons: TcxCheckBox;
    dxLayoutItem8: TdxLayoutItem;
    cbButtonsVisibility: TcxCheckBox;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutEmptySpaceItem5: TdxLayoutEmptySpaceItem;
    acIsFloatValue: TAction;
    acShowFastButtons: TAction;
    acButtonsVisibility: TAction;
    procedure cmbAlignmentPropertiesChange(Sender: TObject);
  private
    FLoading: Boolean;
    function GetIncrement(AItemIndex: Integer): Double;
    function GetMinValue(AItemIndex: Integer): Double;
    function GetMaxValue(AItemIndex: Integer): Double;
    procedure PopulateMaxMinItems;
    procedure PopulateIncrementItems;
    procedure SetSpinEditProperties;
  protected
    procedure CheckControlStartProperties; override;
    function GetDescription: string; override;
    function GetInspectedObject: TPersistent; override;
  end;

implementation

uses
  uStrsConst, dxFrames, FrameIDs, System.Math;

{$R *.dfm}

const
  MaxMinItemsCount = 3;
  IncrementItemsCount = 4;

procedure TfrmSpinEdit.CheckControlStartProperties;
begin
  FLoading := True;
  try
    PopulateMaxMinItems;
    PopulateIncrementItems;
  finally
    FLoading := False;
  end;
  SetSpinEditProperties;
end;

procedure TfrmSpinEdit.cmbAlignmentPropertiesChange(Sender: TObject);
begin
  SetSpinEditProperties;
end;

function TfrmSpinEdit.GetInspectedObject: TPersistent;
begin
  Result := SpinEdit;
end;

function TfrmSpinEdit.GetDescription: string;
begin
  Result := sdxFrameSpinEditDescription;
end;

function TfrmSpinEdit.GetIncrement(AItemIndex: Integer): Double;
const
  AResult: array[0..IncrementItemsCount - 1] of Double = (10, 1, 0.5, 0.1);
begin
  Result := AResult[Min(IncrementItemsCount - 1, Max(0, AItemIndex))];
end;

function TfrmSpinEdit.GetMinValue(AItemIndex: Integer): Double;
const
  AResult: array[0..MaxMinItemsCount - 1] of Double = (-1000, 10, 0);
begin
  Result := AResult[Min(MaxMinItemsCount - 1, Max(0, AItemIndex))];
end;

function TfrmSpinEdit.GetMaxValue(AItemIndex: Integer): Double;
const
  AResult: array[0..MaxMinItemsCount - 1] of Double = (1000, 99, 12.5);
begin
  Result := AResult[Min(MaxMinItemsCount - 1, Max(0, AItemIndex))];
end;

procedure TfrmSpinEdit.PopulateMaxMinItems;
var
  I: Integer;
begin
  cmbMinMax.Clear;
  for I := 0 to MaxMinItemsCount - 1 do
    cmbMinMax.Properties.Items.Add(FloatToStr(GetMinValue(I)) + '/' + FloatToStr(GetMaxValue(I)));
  cmbMinMax.ItemIndex := 0;
end;

procedure TfrmSpinEdit.PopulateIncrementItems;
var
  I: Integer;
begin
  cmbIncrement.Clear;
  for I := 0 to IncrementItemsCount - 1 do
    cmbIncrement.Properties.Items.Add(FloatToStr(GetIncrement(I)));
  cmbIncrement.ItemIndex := 0;
end;

procedure TfrmSpinEdit.SetSpinEditProperties;
begin
  if FLoading then
    Exit;
  SpinEdit.Properties.Alignment.Horz := TcxEditHorzAlignment(cmbAlignment.ItemIndex);
  SpinEdit.Properties.ValueType := TcxSpinEditValueType(Integer(acIsFloatValue.Checked));
  SpinEdit.Properties.MinValue := GetMinValue(cmbMinMax.ItemIndex);
  SpinEdit.Properties.MaxValue := GetMaxValue(cmbMinMax.ItemIndex);
  SpinEdit.Properties.Increment := GetIncrement(cmbIncrement.ItemIndex);
  SpinEdit.Properties.LargeIncrement := StrToInt(cmbLargeIncrement.Text);
  SpinEdit.Properties.SpinButtons.Position := TcxSpinEditButtonsPosition(cmbButtonsPosition.ItemIndex);
  SpinEdit.Properties.SpinButtons.ShowFastButtons := acShowFastButtons.Checked;
  SpinEdit.Properties.SpinButtons.Visible := acButtonsVisibility.Checked;
end;

initialization
  dxFrameManager.RegisterFrame(SpinEditFrameID, TfrmSpinEdit, SpinEditFrameName, -1,
    SpinEditorsGroupIndex, -1, -1);

end.
