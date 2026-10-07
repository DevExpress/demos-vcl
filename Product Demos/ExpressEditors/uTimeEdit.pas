unit uTimeEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxFrameCustomControl, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxTextEdit, cxMaskEdit, cxSpinEdit, cxTimeEdit, Vcl.ActnList, cxClasses,
  dxLayoutControl, cxDropDownEdit, cxCheckBox;

type
  TfrmTimeEdit = class(TfrmCustomControl)
    TimeEdit: TcxTimeEdit;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    cmbAlignment: TcxComboBox;
    dxLayoutItem3: TdxLayoutItem;
    cmbButtonsPosition: TcxComboBox;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem4: TdxLayoutItem;
    cbShowFastButtons: TcxCheckBox;
    dxLayoutItem5: TdxLayoutItem;
    cbButtonsVisibility: TcxCheckBox;
    dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem4: TdxLayoutEmptySpaceItem;
    dxLayoutItem6: TdxLayoutItem;
    cbShowDate: TcxCheckBox;
    dxLayoutItem7: TdxLayoutItem;
    cmbTimeFormat: TcxComboBox;
    dxLayoutEmptySpaceItem5: TdxLayoutEmptySpaceItem;
    dxLayoutItem8: TdxLayoutItem;
    cbUse24HourFormat: TcxCheckBox;
    acShowDate: TAction;
    acUse24HourFormat: TAction;
    acShowFastButtons: TAction;
    acButtonsVisibility: TAction;
    procedure cmbAlignmentPropertiesChange(Sender: TObject);
  private
    procedure SetTimeEditProperties;
  protected
    procedure CheckControlStartProperties; override;
    function GetDescription: string; override;
    function GetInspectedObject: TPersistent; override;
  end;

implementation

uses
  uStrsConst, dxFrames, FrameIDs;

{$R *.dfm}

procedure TfrmTimeEdit.CheckControlStartProperties;
begin
  TimeEdit.EditValue := Now;
  SetTimeEditProperties;
end;

function TfrmTimeEdit.GetDescription: string;
begin
  Result := sdxFrameTimeEditDescription;
end;

function TfrmTimeEdit.GetInspectedObject: TPersistent;
begin
  Result := TimeEdit;
end;

procedure TfrmTimeEdit.cmbAlignmentPropertiesChange(Sender: TObject);
begin
  SetTimeEditProperties;
end;

procedure TfrmTimeEdit.SetTimeEditProperties;
begin
  TimeEdit.Properties.Alignment.Horz := TcxEditHorzAlignment(cmbAlignment.ItemIndex);
  TimeEdit.Properties.ShowDate := acShowDate.Checked;
  TimeEdit.Properties.TimeFormat := TcxTimeEditTimeFormat(cmbTimeFormat.ItemIndex);
  TimeEdit.Properties.Use24HourFormat := acUse24HourFormat.Checked;
  TimeEdit.Properties.SpinButtons.Position := TcxSpinEditButtonsPosition(cmbButtonsPosition.ItemIndex);
  TimeEdit.Properties.SpinButtons.ShowFastButtons := acShowFastButtons.Checked;
  TimeEdit.Properties.SpinButtons.Visible := acButtonsVisibility.Checked;
end;

initialization
  dxFrameManager.RegisterFrame(TimeEditFrameID, TfrmTimeEdit, TimeEditFrameName, -1,
    SpinEditorsGroupIndex, -1, -1);

end.
