unit uColorComboBox;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxFrameCustomControl, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxColorComboBox, Vcl.ActnList,
  cxClasses, dxLayoutControl, Main, cxSpinEdit, cxCheckBox;

type
  TfrmColorComboBox = class(TfrmCustomControl)
    ColorComboBox: TcxColorComboBox;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem;
    liColorValue: TdxLayoutLabeledItem;
    dxLayoutItem2: TdxLayoutItem;
    cmbAlignment: TcxComboBox;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem3: TdxLayoutItem;
    cbAllowSelectColor: TcxCheckBox;
    dxLayoutItem4: TdxLayoutItem;
    cmbColorBoxAlign: TcxComboBox;
    dxLayoutItem5: TdxLayoutItem;
    edColorBoxWidth: TcxSpinEdit;
    dxLayoutItem7: TdxLayoutItem;
    cbColorDialogShowFull: TcxCheckBox;
    dxLayoutItem8: TdxLayoutItem;
    cmbColorDialogType: TcxComboBox;
    dxLayoutEmptySpaceItem3: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem4: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem5: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem7: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem9: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem10: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem6: TdxLayoutEmptySpaceItem;
    acAllowSelectColor: TAction;
    acColorDialogShowFull: TAction;
    acHighlightSearchText: TAction;
    acUseContainsOperator: TAction;
    cbgIncrementalFiltering: TdxLayoutGroup;
    cbHighlightSearchText: TdxLayoutCheckBoxItem;
    cbUseContainsOperator: TdxLayoutCheckBoxItem;
    procedure ColorComboBoxPropertiesChange(Sender: TObject);
    procedure cbAllowSelectColorPropertiesChange(Sender: TObject);
  private
    procedure SetColorComboBoxProperties;
  protected
    procedure CheckControlStartProperties; override;
    function GetDescription: string; override;
    function GetInspectedObject: TPersistent; override;
  end;

implementation

uses
  uStrsConst, dxFrames, FrameIDs, cxGeometry;

{$R *.dfm}

procedure TfrmColorComboBox.CheckControlStartProperties;
begin
  SetColorComboBoxProperties;
  ColorComboBoxPropertiesChange(ColorComboBox);
end;

function TfrmColorComboBox.GetDescription: string;
begin
  Result := sdxFrameColorComboBoxDescription;
end;

function TfrmColorComboBox.GetInspectedObject: TPersistent;
begin
  Result := ColorComboBox;
end;

procedure TfrmColorComboBox.ColorComboBoxPropertiesChange(Sender: TObject);
begin
  liColorValue.Caption := 'ColorValue: $00' + IntToHex(ColorComboBox.ColorValue, 6);
end;

procedure TfrmColorComboBox.cbAllowSelectColorPropertiesChange(Sender: TObject);
begin
  SetColorComboBoxProperties;
end;

procedure TfrmColorComboBox.SetColorComboBoxProperties;
const
  AColorDialogType: array[Boolean] of TcxColorDialogType = (cxcdtDefault, cxcdtAdvanced);
var
  AFilteringOptions: TcxTextEditIncrementalFilteringOptions;
begin
  ColorComboBox.Properties.Alignment.Horz := TcxEditHorzAlignment(cmbAlignment.ItemIndex);
  ColorComboBox.Properties.AllowSelectColor := acAllowSelectColor.Checked;
  ColorComboBox.Properties.ColorBoxAlign := TcxColorBoxAlign(cmbColorBoxAlign.ItemIndex);
  ColorComboBox.Properties.ColorBoxWidth := ScaleFactor.Apply(edColorBoxWidth.Value);
  ColorComboBox.Properties.ColorDialogShowFull := acColorDialogShowFull.Checked;
  ColorComboBox.Properties.ColorDialogType := AColorDialogType[cmbColorDialogType.ItemIndex = 1];

  ColorComboBox.Properties.IncrementalFiltering := cbgIncrementalFiltering.ButtonOptions.CheckBox.Checked;
  AFilteringOptions := [];
  if acHighlightSearchText.Checked then
    Include(AFilteringOptions, ifoHighlightSearchText);
  if acUseContainsOperator.Checked then
    Include(AFilteringOptions, ifoUseContainsOperator);
  ColorComboBox.Properties.IncrementalFilteringOptions := AFilteringOptions;
end;

initialization
  dxFrameManager.RegisterFrame(ColorComboBoxFrameID, TfrmColorComboBox, ColorComboBoxFrameName, -1,
    EditorsWithDropDownGroupIndex, -1, -1);

end.
