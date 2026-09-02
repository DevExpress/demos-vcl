unit uCheckComboBox;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.StdCtrls,
  Vcl.Dialogs, dxFrameCustomControl, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxCheckBox, cxContainer,
  cxEdit, dxLayoutcxEditAdapters, dxLayoutContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCheckComboBox, Vcl.ActnList,
  cxClasses, dxLayoutControl, Main, cxMRUEdit;

type
  TfrmCheckComboBox = class(TfrmCustomControl)
    CheckComboBox: TcxCheckComboBox;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem;
    liEditValue: TdxLayoutLabeledItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutEmptySpaceItem3: TdxLayoutEmptySpaceItem;
    dxLayoutItem3: TdxLayoutItem;
    cmbEditValueFormat: TcxComboBox;
    dxLayoutEmptySpaceItem5: TdxLayoutEmptySpaceItem;
    dxLayoutItem4: TdxLayoutItem;
    cmbCharCase: TcxComboBox;
    dxLayoutItem5: TdxLayoutItem;
    edDelimiter: TcxMRUEdit;
    dxLayoutItem2: TdxLayoutItem;
    edEmptySelectionText: TcxTextEdit;
    dxLayoutEmptySpaceItem6: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem7: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem8: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem9: TdxLayoutEmptySpaceItem;
    dxLayoutItem6: TdxLayoutItem;
    cbShowEmptyText: TcxCheckBox;
    acShowEmptyText: TAction;
    procedure CheckComboBoxPropertiesChange(Sender: TObject);
    procedure edDelimiterPropertiesChange(Sender: TObject);
  private
    procedure SetCheckComboBoxProperties;
  protected
    procedure CheckControlStartProperties; override;
    function GetDescription: string; override;
    function GetInspectedObject: TPersistent; override;
  end;

implementation

uses
  dxFrames, FrameIDs, uStrsConst;

{$R *.dfm}

procedure TfrmCheckComboBox.CheckControlStartProperties;
begin
  SetCheckComboBoxProperties;
  CheckComboBoxPropertiesChange(CheckComboBox);
end;

function TfrmCheckComboBox.GetDescription: string;
begin
  Result := sdxFrameCheckComboBoxDescription;
end;

function TfrmCheckComboBox.GetInspectedObject: TPersistent;
begin
  Result := CheckComboBox;
end;

procedure TfrmCheckComboBox.CheckComboBoxPropertiesChange(Sender: TObject);
begin
  if CheckComboBox.Properties.EditValueFormat = cvfInteger then
    liEditValue.Caption := 'EditValue: ' + IntToStr(CheckComboBox.EditValue)
  else
    liEditValue.Caption := 'EditValue: ' + CheckComboBox.EditValue;
end;

procedure TfrmCheckComboBox.edDelimiterPropertiesChange(Sender: TObject);
begin
  SetCheckComboBoxProperties;
end;

procedure TfrmCheckComboBox.SetCheckComboBoxProperties;
begin
  CheckComboBox.Properties.CharCase := TEditCharCase(cmbCharCase.ItemIndex);
  CheckComboBox.Properties.Delimiter := edDelimiter.Text;
  CheckComboBox.Properties.EditValueFormat := TcxCheckStatesValueFormat(cmbEditValueFormat.ItemIndex);
  CheckComboBox.Properties.EmptySelectionText := edEmptySelectionText.Text;
  CheckComboBox.Properties.ShowEmptyText := acShowEmptyText.Checked;
end;

initialization
  dxFrameManager.RegisterFrame(CheckComboBoxFrameID, TfrmCheckComboBox, CheckComboBoxFrameName, -1,
    EditorsWithDropDownGroupIndex, -1, -1);

end.
