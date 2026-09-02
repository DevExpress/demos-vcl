unit uDateEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxFrameCustomControl, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  Vcl.ComCtrls, dxCore, cxDateUtils, dxLayoutcxEditAdapters, dxLayoutContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, Vcl.ActnList, cxClasses, dxLayoutControl, cxCheckBox, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons;

type
  TfrmDateEdit = class(TfrmCustomControl)
    DateEdit: TcxDateEdit;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    cmbAlignment: TcxComboBox;
    dxLayoutItem3: TdxLayoutItem;
    cbShowTodayButton: TcxCheckBox;
    liShowNowButton: TdxLayoutItem;
    cbShowNowButton: TcxCheckBox;
    dxLayoutItem5: TdxLayoutItem;
    cbShowClearButton: TcxCheckBox;
    dxLayoutItem6: TdxLayoutItem;
    cmbKind: TcxComboBox;
    dxLayoutItem7: TdxLayoutItem;
    cmbView: TcxComboBox;
    dxLayoutItem8: TdxLayoutItem;
    cbShowWeekNumbers: TcxCheckBox;
    liShowTime: TdxLayoutItem;
    cbShowTime: TcxCheckBox;
    dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem3: TdxLayoutEmptySpaceItem;
    acShowClearButton: TAction;
    acShowNowButton: TAction;
    acShowTodayButton: TAction;
    acShowTime: TAction;
    acShowWeekNumbers: TAction;
    procedure cmbAlignmentPropertiesChange(Sender: TObject);
  private
    procedure SetDateEditProperties;
  protected
    procedure CheckControlStartProperties; override;
    function GetDescription: string; override;
    function GetInspectedObject: TPersistent; override;
  end;

implementation

uses
  uStrsConst, dxFrames, FrameIDs;

{$R *.dfm}

procedure TfrmDateEdit.CheckControlStartProperties;
begin
  DateEdit.EditValue := Now;
  SetDateEditProperties;
end;

procedure TfrmDateEdit.cmbAlignmentPropertiesChange(Sender: TObject);
begin
  SetDateEditProperties;
end;

function TfrmDateEdit.GetDescription: string;
begin
  Result := sdxFrameDateEditDescription;
end;

function TfrmDateEdit.GetInspectedObject: TPersistent;
begin
  Result := DateEdit;
end;

procedure TfrmDateEdit.SetDateEditProperties;
var
  AButtons: set of TDateButton;

  procedure CheckButtonPresent(AChekBox: TAction; AButton: TDateButton);
  begin
    if AChekBox.Checked then
      Include(AButtons, AButton);
  end;

begin
  DateEdit.Properties.Alignment.Horz := TcxEditHorzAlignment(cmbAlignment.ItemIndex);

  AButtons := [];
  CheckButtonPresent(acShowClearButton, btnClear);
  CheckButtonPresent(acShowNowButton, btnNow);
  CheckButtonPresent(acShowTodayButton, btnToday);
  DateEdit.Properties.DateButtons := AButtons;

  DateEdit.Properties.Kind := TcxCalendarKind(cmbKind.ItemIndex);
  DateEdit.Properties.View := TcxCalendarView(cmbView.ItemIndex);
  DateEdit.Properties.ShowTime := acShowTime.Checked;
  DateEdit.Properties.WeekNumbers := acShowWeekNumbers.Checked;

  liShowNowButton.Enabled := DateEdit.Properties.Kind = ckDateTime;
  liShowTime.Enabled := DateEdit.Properties.Kind = ckDate;
end;

initialization
  dxFrameManager.RegisterFrame(DateEditFrameID, TfrmDateEdit, DateEditFrameName, -1,
    EditorsWithDropDownGroupIndex, -1, -1);

end.
