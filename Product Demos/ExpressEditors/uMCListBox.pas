unit uMCListBox;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxFrameCustomControl, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxLayoutContainer,
  cxContainer, cxEdit, cxListBox, Vcl.ActnList, cxClasses, dxLayoutControl, maindata, Vcl.StdCtrls, cxMCListBox,
  dxLayoutcxEditAdapters, cxTextEdit, cxMaskEdit, cxDropDownEdit, dxCore, dxColorEdit, cxCheckBox;

type
  TfrmMCListBox = class(TfrmCustomControl)
    MCListBox: TcxMCListBox;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem;
    dxLayoutItem2: TdxLayoutItem;
    cmbAlignment: TcxComboBox;
    dxLayoutItem3: TdxLayoutItem;
    cbMultiSelect: TcxCheckBox;
    dxLayoutItem4: TdxLayoutItem;
    cbMultiLines: TcxCheckBox;
    dxLayoutItem5: TdxLayoutItem;
    cbShowColumnLines: TcxCheckBox;
    dxLayoutItem6: TdxLayoutItem;
    edColumnLinesColor: TdxColorEdit;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutEmptySpaceItem4: TdxLayoutEmptySpaceItem;
    dxLayoutItem8: TdxLayoutItem;
    cmbSortColumn1: TcxComboBox;
    dxLayoutItem7: TdxLayoutItem;
    cmbSortColumn2: TcxComboBox;
    dxLayoutItem9: TdxLayoutItem;
    cmbSortColumn3: TcxComboBox;
    dxLayoutItem10: TdxLayoutItem;
    cmbSortColumn4: TcxComboBox;
    dxLayoutEmptySpaceItem3: TdxLayoutEmptySpaceItem;
    dxLayoutItem11: TdxLayoutItem;
    cbShowEndEllipsis: TcxCheckBox;
    dxLayoutItem12: TdxLayoutItem;
    cbShowHeader: TcxCheckBox;
    acMultiLines: TAction;
    acMultiSelect: TAction;
    acShowColumnLines: TAction;
    acShowEndEllipsis: TAction;
    acShowHeader: TAction;
    procedure cmbAlignmentPropertiesChange(Sender: TObject);
    procedure cmbSortColumn1PropertiesChange(Sender: TObject);
  private
    FSortingChanged: Boolean;
    procedure PopulateMCListBox;
    procedure SetMCListBoxProperties;
  protected
    procedure CheckControlStartProperties; override;
    procedure DoCheckActualTouchMode; override;
    function GetDescription: string; override;
    function GetInspectedObject: TPersistent; override;
  end;

implementation

uses
  uStrsConst, dxFrames, FrameIDs, cxGeometry;

{$R *.dfm}

procedure TfrmMCListBox.CheckControlStartProperties;
begin
  MCListBox.Items.BeginUpdate;
  try
    PopulateMCListBox;
    SetMCListBoxProperties;
  finally
    MCListBox.Items.EndUpdate;
  end;
end;

procedure TfrmMCListBox.DoCheckActualTouchMode;
const
  ShowButtonsWidth: array[Boolean] of Integer = (660, 700);
begin
  inherited DoCheckActualTouchMode;
  dxLayoutGroup1.SizeOptions.Width := ScaleFactor.Apply(ShowButtonsWidth[ActualTouchMode]);
end;

function TfrmMCListBox.GetDescription: string;
begin
  Result := sdxFrameMCListBoxDescription;
end;

function TfrmMCListBox.GetInspectedObject: TPersistent;
begin
  Result := MCListBox;
end;

procedure TfrmMCListBox.cmbAlignmentPropertiesChange(Sender: TObject);
begin
  SetMCListBoxProperties;
end;

procedure TfrmMCListBox.cmbSortColumn1PropertiesChange(Sender: TObject);

  procedure CheckSortingState(ASortCombo: TcxComboBox);
  begin
    if ASortCombo <> Sender then
      ASortCombo.ItemIndex := 0;
  end;
begin
  if FSortingChanged then
    Exit;
  FSortingChanged := True;
  try
    CheckSortingState(cmbSortColumn1);
    CheckSortingState(cmbSortColumn2);
    CheckSortingState(cmbSortColumn3);
    CheckSortingState(cmbSortColumn4);
  finally
    FSortingChanged := False;
  end;
  SetMCListBoxProperties;
end;

procedure TfrmMCListBox.PopulateMCListBox;
var
  ID: Integer;
  ADelimiter: Char;
begin
  ADelimiter := MCListBox.Delimiter;
  dmMain.OpenEmployeesDataset;
  with dmMain.cdsEmployees do
  begin
    DisableControls;
    try
      ID := dmMain.cdsEmployeesId.Value;
      First;
      while not EOF do
      begin
        MCListBox.Items.Add(FieldByName('FirstName').AsString + ADelimiter +
          FieldByName('LastName').AsString + ADelimiter +
          FieldByName('Department_Name').AsString + ADelimiter +
          FieldByName('Title').AsString);
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
end;

procedure TfrmMCListBox.SetMCListBoxProperties;
begin
  MCListBox.Alignment := TAlignment(cmbAlignment.ItemIndex);
  MCListBox.MultiLines := acMultiLines.Checked;
  MCListBox.MultiSelect := acMultiSelect.Checked;
  MCListBox.ShowColumnLines := acShowColumnLines.Checked;
  MCListBox.ShowEndEllipsis := acShowEndEllipsis.Checked;
  MCListBox.ShowHeader := acShowHeader.Checked;
  MCListBox.ColumnLineColor := edColumnLinesColor.ColorValue;
  MCListBox.HeaderSections[0].SortOrder := TdxSortOrder(cmbSortColumn1.ItemIndex);
  MCListBox.HeaderSections[1].SortOrder := TdxSortOrder(cmbSortColumn2.ItemIndex);
  MCListBox.HeaderSections[2].SortOrder := TdxSortOrder(cmbSortColumn3.ItemIndex);
  MCListBox.HeaderSections[3].SortOrder := TdxSortOrder(cmbSortColumn4.ItemIndex);
end;

initialization
  dxFrameManager.RegisterFrame(MCListBoxFrameID, TfrmMCListBox, MCListBoxFrameName, -1,
    MultiPurposeGroupIndex, -1, -1);

end.
