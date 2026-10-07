unit uLookupComboBox;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxFrameCustomControl, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, Vcl.ActnList, cxClasses, dxLayoutControl, maindata, cxCheckBox, cxSpinEdit;

type
  TfrmLookupComboBox = class(TfrmCustomControl)
    LookupComboBox: TcxLookupComboBox;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    cmbAlignment: TcxComboBox;
    dxLayoutItem3: TdxLayoutItem;
    edDropDownRowCount: TcxSpinEdit;
    dxLayoutItem4: TdxLayoutItem;
    cbDropDownSizeable: TcxCheckBox;
    dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem3: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem4: TdxLayoutEmptySpaceItem;
    dxLayoutItem5: TdxLayoutItem;
    cmbKeyFieldName: TcxComboBox;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutEmptySpaceItem5: TdxLayoutEmptySpaceItem;
    dxLayoutItem6: TdxLayoutItem;
    cmbGridLines: TcxComboBox;
    dxLayoutItem7: TdxLayoutItem;
    cbShowHeader: TcxCheckBox;
    dxLayoutEmptySpaceItem6: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem7: TdxLayoutEmptySpaceItem;
    acDropDownSizeable: TAction;
    acHighlightSearchText: TAction;
    acUseContainsOperator: TAction;
    acShowHeader: TAction;
    cbgIncrementalFiltering: TdxLayoutGroup;
    cbHighlightSearchText: TdxLayoutCheckBoxItem;
    cbUseContainsOperator: TdxLayoutCheckBoxItem;
    procedure cmbAlignmentPropertiesChange(Sender: TObject);
  private
    procedure SetLookupBoxProperties;
  protected
    procedure CheckControlStartProperties; override;
    function GetDescription: string; override;
    function GetInspectedObject: TPersistent; override;
  end;

implementation

uses
  dxFrames, FrameIDs, uStrsConst;

{$R *.dfm}

procedure TfrmLookupComboBox.CheckControlStartProperties;
begin
  dmMain.OpenEmployeesDataset;
  SetLookupBoxProperties;
end;

function TfrmLookupComboBox.GetDescription: string;
begin
  Result := sdxFrameLookupComboboxDescription;
end;

function TfrmLookupComboBox.GetInspectedObject: TPersistent;
begin
  Result := LookupComboBox;
end;

procedure TfrmLookupComboBox.cmbAlignmentPropertiesChange(Sender: TObject);
begin
  SetLookupBoxProperties;
end;

procedure TfrmLookupComboBox.SetLookupBoxProperties;
var
  AFilteringOptions: TcxTextEditIncrementalFilteringOptions;
begin
  LookupComboBox.Properties.Alignment.Horz := TAlignment(cmbAlignment.ItemIndex);
  LookupComboBox.Properties.DropDownRows := edDropDownRowCount.Value;
  LookupComboBox.Properties.DropDownSizeable := acDropDownSizeable.Checked;
  LookupComboBox.Properties.ListFieldIndex := cmbKeyFieldName.ItemIndex;
  LookupComboBox.Properties.ListOptions.GridLines := TcxGridLines(cmbGridLines.ItemIndex);
  LookupComboBox.Properties.ListOptions.ShowHeader := acShowHeader.Checked;

  LookupComboBox.Properties.IncrementalFiltering := cbgIncrementalFiltering.ButtonOptions.CheckBox.Checked;
  AFilteringOptions := [];
  if acHighlightSearchText.Checked then
    Include(AFilteringOptions, ifoHighlightSearchText);
  if acUseContainsOperator.Checked then
    Include(AFilteringOptions, ifoUseContainsOperator);
  LookupComboBox.Properties.IncrementalFilteringOptions := AFilteringOptions;
end;

initialization
  dxFrameManager.RegisterFrame(LookupComboBoxFrameID, TfrmLookupComboBox, LookupComboBoxFrameName, -1,
    EditorsWithDropDownGroupIndex, -1, -1);

end.
