unit uCheckBox;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxCustomDemoFrameUnit, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxCheckBox, cxClasses, dxLayoutControl, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxGroupBox, cxRadioGroup, maindata, dxScreenTip, dxCustomHint, cxHint, dxFrameCustomControl, Vcl.ActnList,
  dxUIAdorners;

type
  TfrmCheckBox = class(TfrmCustomControl)
    cbSample: TcxCheckBox;
    dxLayoutItem1: TdxLayoutItem;
    cmbState: TcxComboBox;
    dxLayoutItem2: TdxLayoutItem;
    rgAlignment: TcxRadioGroup;
    dxLayoutItem3: TdxLayoutItem;
    cbUseGlyph: TcxCheckBox;
    dxLayoutItem4: TdxLayoutItem;
    dxScreenTipRepository1: TdxScreenTipRepository;
    dxScreenTipRepository1ScreenTip1: TdxScreenTip;
    cxHintStyleController1: TcxHintStyleController;
    cbAllowGrayed: TcxCheckBox;
    dxLayoutItem5: TdxLayoutItem;
    edCaption: TcxTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem3: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem4: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem5: TdxLayoutEmptySpaceItem;
    acAllowGrayed: TAction;
    acUseGlyph: TAction;
    procedure cmbStatePropertiesChange(Sender: TObject);
    procedure cbSamplePropertiesChange(Sender: TObject);
  private
    procedure CheckAllowGrayed;
    procedure SetSampleCheckBoxProperties;
  protected
    procedure CheckControlStartProperties; override;
    function GetDescription: string; override;
    function GetInspectedObject: TPersistent; override;
  end;

implementation

uses
  uStrsConst, dxFrames, FrameIDs;

{$R *.dfm}

procedure TfrmCheckBox.CheckControlStartProperties;
begin
  SetSampleCheckBoxProperties;
end;

function TfrmCheckBox.GetDescription: string;
begin
  Result := sdxFrameCheckBoxDescription;
end;

function TfrmCheckBox.GetInspectedObject: TPersistent;
begin
  Result := cbSample;
end;

procedure TfrmCheckBox.cbSamplePropertiesChange(Sender: TObject);
begin
  cmbState.ItemIndex := Integer(cbSample.State);
end;

procedure TfrmCheckBox.cmbStatePropertiesChange(Sender: TObject);
begin
  SetSampleCheckBoxProperties;
end;

procedure TfrmCheckBox.CheckAllowGrayed;
begin
  cbSample.Properties.AllowGrayed := acAllowGrayed.Checked;
  cmbState.Enabled := cbSample.Properties.AllowGrayed;
  if not cmbState.Enabled and (cbSample.State = cbsGrayed) then
    cbSample.State := cbsUnchecked;
end;

procedure TfrmCheckBox.SetSampleCheckBoxProperties;
begin
  cbSample.Caption := edCaption.Text;
  cbSample.State := TcxCheckBoxState(cmbState.ItemIndex);
  CheckAllowGrayed;
  cbSample.Properties.Alignment := TAlignment(rgAlignment.ItemIndex);
  if acUseGlyph.Checked then
    cbSample.Properties.Glyph.LoadFromFile(dmMain.ImagesPath + 'CheckBoxImage.png')
  else
    cbSample.Properties.Glyph.Clear;
end;

initialization
  dxFrameManager.RegisterFrame(CheckBoxFrameID, TfrmCheckBox, CheckBoxFrameName, -1,
    EditorsWithoutTextBoxesGroupIndex, -1, -1);

end.
