unit uFontNameComboBox;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxFrameCustomControl, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxFontNameComboBox, Vcl.ActnList,
  cxClasses, dxLayoutControl, cxCheckBox;

type
  TfrmFontNameComboBox = class(TfrmCustomControl)
    FontNameComboBox: TcxFontNameComboBox;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    cmbPreviewAlignment: TcxComboBox;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem;
    liPreviewText: TdxLayoutItem;
    edPreviewText: TcxTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    cmbPreviewType: TcxComboBox;
    dxLayoutItem4: TdxLayoutItem;
    cbShowButtons: TcxCheckBox;
    dxLayoutItem5: TdxLayoutItem;
    cbVisible: TcxCheckBox;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutEmptySpaceItem3: TdxLayoutEmptySpaceItem;
    dxLayoutItem6: TdxLayoutItem;
    cbShowInList: TcxCheckBox;
    dxLayoutItem7: TdxLayoutItem;
    cbShowInCombo: TcxCheckBox;
    dxLayoutItem8: TdxLayoutItem;
    cbUseOwnFont: TcxCheckBox;
    dxLayoutEmptySpaceItem4: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem5: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem6: TdxLayoutEmptySpaceItem;
    acShowButtons: TAction;
    acVisible: TAction;
    acHighlightSearchText: TAction;
    acUseContainsOperator: TAction;
    acShowInCombo: TAction;
    acShowInList: TAction;
    acUseOwnFont: TAction;
    cbgIncrementalFiltering: TdxLayoutGroup;
    cbHighlightSearchText: TdxLayoutCheckBoxItem;
    cbUseContainsOperator: TdxLayoutCheckBoxItem;
    procedure cmbAlignmentPropertiesChange(Sender: TObject);
  private
    procedure SetFontNameComboBoxProperties;
  protected
    procedure CheckControlStartProperties; override;
    function GetDescription: string; override;
    function GetInspectedObject: TPersistent; override;
  end;

implementation

uses
  dxFrames, FrameIDs, System.Math, uStrsConst;

{$R *.dfm}

procedure TfrmFontNameComboBox.CheckControlStartProperties;
begin
  FontNameComboBox.EditValue := 'Tahoma';
  SetFontNameComboBoxProperties;
end;

procedure TfrmFontNameComboBox.cmbAlignmentPropertiesChange(Sender: TObject);
begin
  SetFontNameComboBoxProperties;
end;

function TfrmFontNameComboBox.GetDescription: string;
begin
  Result := sdxFrameFontNameComboBoxDescription;
end;

function TfrmFontNameComboBox.GetInspectedObject: TPersistent;
begin
  Result := FontNameComboBox;
end;

procedure TfrmFontNameComboBox.SetFontNameComboBoxProperties;
var
  AFilteringOptions: TcxTextEditIncrementalFilteringOptions;
  AFontIconType: TcxShowFontIconTypes;
begin
  FontNameComboBox.Properties.FontPreview.Alignment := TAlignment(cmbPreviewAlignment.ItemIndex);
  FontNameComboBox.Properties.FontPreview.PreviewText := edPreviewText.Text;
  FontNameComboBox.Properties.FontPreview.PreviewType := TcxFontPreviewType(cmbPreviewType.ItemIndex);
  liPreviewText.Enabled := cmbPreviewType.ItemIndex = 1;
  FontNameComboBox.Properties.FontPreview.ShowButtons := acShowButtons.Checked;
  FontNameComboBox.Properties.FontPreview.Visible := acVisible.Checked;


  FontNameComboBox.Properties.IncrementalFiltering := cbgIncrementalFiltering.ButtonOptions.CheckBox.Checked;
  AFilteringOptions := [];
  if acHighlightSearchText.Checked then
    Include(AFilteringOptions, ifoHighlightSearchText);
  if acUseContainsOperator.Checked then
    Include(AFilteringOptions, ifoUseContainsOperator);
  FontNameComboBox.Properties.IncrementalFilteringOptions := AFilteringOptions;

  AFontIconType := [];
  if acShowInCombo.Checked then
    Include(AFontIconType, ftiShowInCombo);
  if acShowInList.Checked then
    Include(AFontIconType, ftiShowInList);
  FontNameComboBox.Properties.ShowFontTypeIcon := AFontIconType;

  FontNameComboBox.Properties.UseOwnFont := acUseOwnFont.Checked;
end;

initialization
  dxFrameManager.RegisterFrame(FontNameComboBoxFrameID, TfrmFontNameComboBox, FontNameComboBoxFrameName, -1,
    EditorsWithDropDownGroupIndex, -1, -1);

end.
