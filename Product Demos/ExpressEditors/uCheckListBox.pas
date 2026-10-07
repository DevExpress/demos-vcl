unit uCheckListBox;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxFrameCustomControl, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxLayoutContainer,
  cxContainer, cxEdit, cxCheckListBox, Vcl.ActnList, cxClasses, dxLayoutControl, Vcl.ImgList, cxImageList, cxCheckBox,
  maindata, Main, dxLayoutcxEditAdapters, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxSpinEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit;

type
  TfrmCheckListBox = class(TfrmCustomControl)
    CheckListBox: TcxCheckListBox;
    dxLayoutItem1: TdxLayoutItem;
    cxImageList1: TcxImageList;
    liEditValue: TdxLayoutLabeledItem;
    dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutEmptySpaceItem3: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem4: TdxLayoutEmptySpaceItem;
    dxLayoutItem2: TdxLayoutItem;
    cmbEditValueFormat: TcxComboBox;
    dxLayoutEmptySpaceItem5: TdxLayoutEmptySpaceItem;
    dxLayoutItem3: TdxLayoutItem;
    edColumns: TcxSpinEdit;
    dxLayoutItem4: TdxLayoutItem;
    cmbImageLayout: TcxComboBox;
    btnItemEnabled: TcxButton;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    cbShowChecks: TcxCheckBox;
    dxLayoutItem7: TdxLayoutItem;
    btnSort: TcxButton;
    dxLayoutEmptySpaceItem6: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem7: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem8: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem9: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem10: TdxLayoutEmptySpaceItem;
    acShowChecks: TAction;
    procedure edColumnsPropertiesChange(Sender: TObject);
    procedure btnSortClick(Sender: TObject);
    procedure btnItemEnabledClick(Sender: TObject);
    procedure CheckListBoxEditValueChanged(Sender: TObject);
    procedure cmbEditValueFormatPropertiesChange(Sender: TObject);
  private
    procedure PopulateCheckListBox;
    procedure SetCheckListBoxProperties;
  protected
    procedure CheckControlStartProperties; override;
    function GetDescription: string; override;
    function GetInspectedObject: TPersistent; override;
  end;

implementation

uses
  uStrsConst, dxFrames, FrameIDs, System.Math;

{$R *.dfm}

procedure TfrmCheckListBox.CheckControlStartProperties;
begin
 {$IFNDEF DELPHI15}
  CheckListBox.DoubleBuffered := False;
 {$ENDIF}
  CheckListBox.Items.BeginUpdate;
  try
    PopulateCheckListBox;
    SetCheckListBoxProperties;
  finally
    CheckListBox.Items.EndUpdate;
  end;
  CheckListBoxEditValueChanged(CheckListBox);
end;

procedure TfrmCheckListBox.CheckListBoxEditValueChanged(Sender: TObject);
begin
  if CheckListBox.EditValueFormat = cvfInteger then
    liEditValue.Caption := 'Edit Value: ' + IntToStr(CheckListBox.EditValue)
  else
    liEditValue.Caption := 'Edit Value: ' + CheckListBox.EditValue;
end;

function TfrmCheckListBox.GetDescription: string;
begin
  Result := sdxFrameCheckListBoxDescription;
end;

function TfrmCheckListBox.GetInspectedObject: TPersistent;
begin
  Result := CheckListBox;
end;

procedure TfrmCheckListBox.edColumnsPropertiesChange(Sender: TObject);
begin
  SetCheckListBoxProperties;
end;

procedure TfrmCheckListBox.cmbEditValueFormatPropertiesChange(Sender: TObject);
begin
  CheckListBox.IsModified := True;
  SetCheckListBoxProperties;
end;

procedure TfrmCheckListBox.btnItemEnabledClick(Sender: TObject);
var
  AItem: TcxCheckListBoxItem;
  AItemIndex: Integer;
begin
  AItemIndex := CheckListBox.ItemIndex;
  if AItemIndex = -1 then
    Exit;
  AItem := CheckListBox.Items[AItemIndex];
  AItem.Enabled := not AItem.Enabled;
end;

procedure TfrmCheckListBox.btnSortClick(Sender: TObject);
begin
  CheckListBox.Sorted := True;
  btnSort.Enabled := False;
end;

procedure TfrmCheckListBox.PopulateCheckListBox;
var
  ID, APrefix: Integer;
  AItem: TcxCheckListBoxItem;
begin
  dmMain.OpenEmployeesDataset;
  with dmMain.cdsEmployees do
  begin
    DisableControls;
    try
      ID := dmMain.cdsEmployeesId.Value;
      First;
      while not EOF do
      begin
        AItem := CheckListBox.Items.Add;
        APrefix := FieldByName('Prefix').AsInteger;
        AItem.Text := FieldByName('FullName').AsString;
        AItem.ImageIndex := Min(APrefix, 2);
        Next;
      end;

      if ID = -1 then
        Locate('ID', ID, [])
      else
        First;
    finally
      EnableControls;
    end;
  end;
  CheckListBox.ItemIndex := 0;
end;

procedure TfrmCheckListBox.SetCheckListBoxProperties;
begin
  CheckListBox.Columns := edColumns.Value;
  CheckListBox.EditValueFormat := TcxCheckStatesValueFormat(cmbEditValueFormat.ItemIndex);
  CheckListBox.ShowChecks := acShowChecks.Checked;

  if cmbImageLayout.ItemIndex > 1 then
    CheckListBox.Images := nil
  else
  begin
    CheckListBox.Images := cxImageList1;
    CheckListBox.ImageLayout := TcxCheckListBoxImageLayout(cmbImageLayout.ItemIndex);
  end;

  CheckListBoxEditValueChanged(CheckListBox);
end;

initialization
  dxFrameManager.RegisterFrame(CheckListBoxFrameID, TfrmCheckListBox, CheckListBoxFrameName, -1,
    MultiPurposeGroupIndex, -1, -1);

end.
