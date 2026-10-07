unit uToggleSwitch;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxFrameCustomControl, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxCheckBox, dxToggleSwitch, cxClasses, dxLayoutControl, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxGroupBox, cxRadioGroup, dxGDIPlusClasses, cxImage, Vcl.ActnList;

type
  TfrmToggleSwitch = class(TfrmCustomControl)
    ToggleSwitch: TdxToggleSwitch;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    cmbState: TcxComboBox;
    dxLayoutItem3: TdxLayoutItem;
    rgAlignment: TcxRadioGroup;
    dxLayoutItem4: TdxLayoutItem;
    edCaption: TcxTextEdit;
    dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem3: TdxLayoutEmptySpaceItem;
    dxLayoutGroup4: TdxLayoutGroup;
    cmbIndicatorKind: TcxComboBox;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutGroup7: TdxLayoutGroup;
    imOffGlyph: TcxImage;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    imOnGlyph: TcxImage;
    edOffText: TcxTextEdit;
    dxLayoutItem8: TdxLayoutItem;
    edOnText: TcxTextEdit;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutItem10: TdxLayoutItem;
    cmbIndicatorPosition: TcxComboBox;
    dxLayoutEmptySpaceItem4: TdxLayoutEmptySpaceItem;
    procedure cmbStatePropertiesChange(Sender: TObject);
    procedure ToggleSwitchPropertiesChange(Sender: TObject);
    procedure imOffGlyphPropertiesAssignPicture(Sender: TObject; const Picture: TPicture);
  private
    FLoading: Boolean;
    procedure SetToggleSwitchProperties;
  protected
    procedure CheckControlStartProperties; override;
    function GetDescription: string; override;
    function GetInspectedObject: TPersistent; override;
  end;

var
  frmToggleSwitch: TfrmToggleSwitch;

implementation

uses
  uStrsConst, dxFrames, FrameIDs;

{$R *.dfm}

procedure TfrmToggleSwitch.CheckControlStartProperties;
begin
  FLoading := True;
  try
    edOffText.Text := ToggleSwitch.Properties.StateIndicator.OffText;
    edOnText.Text := ToggleSwitch.Properties.StateIndicator.OnText;
  finally
    FLoading := False;
  end;
  SetToggleSwitchProperties;
end;

function TfrmToggleSwitch.GetDescription: string;
begin
  Result := sdxFrameToggleSwitchDescription;
end;

function TfrmToggleSwitch.GetInspectedObject: TPersistent;
begin
  Result := ToggleSwitch;
end;

procedure TfrmToggleSwitch.imOffGlyphPropertiesAssignPicture(Sender: TObject; const Picture: TPicture);
begin
  SetToggleSwitchProperties;
end;

procedure TfrmToggleSwitch.ToggleSwitchPropertiesChange(Sender: TObject);
begin
  cmbState.ItemIndex := Integer(ToggleSwitch.State);
end;

procedure TfrmToggleSwitch.cmbStatePropertiesChange(Sender: TObject);
begin
  SetToggleSwitchProperties;
end;

procedure TfrmToggleSwitch.SetToggleSwitchProperties;
begin
  if FLoading then
    Exit;
  ToggleSwitch.State := TcxCheckBoxState(cmbState.ItemIndex);
  ToggleSwitch.Caption := edCaption.Text;
  ToggleSwitch.Properties.Alignment := TAlignment(rgAlignment.ItemIndex);
  ToggleSwitch.Properties.StateIndicator.Kind := TdxToggleSwitchStateIndicatorKind(cmbIndicatorKind.ItemIndex);
  ToggleSwitch.Properties.StateIndicator.OffGlyph.Assign(imOffGlyph.Picture.Graphic);
  ToggleSwitch.Properties.StateIndicator.OnGlyph.Assign(imOnGlyph.Picture.Graphic);
  ToggleSwitch.Properties.StateIndicator.OffText := edOffText.Text;
  ToggleSwitch.Properties.StateIndicator.OnText := edOnText.Text;
  ToggleSwitch.Properties.StateIndicator.Position := TdxToggleSwitchStateIndicatorPosition(cmbIndicatorPosition.ItemIndex);
  ToggleSwitch.Refresh;
end;

initialization
  dxFrameManager.RegisterFrame(ToggleSwitchFrameID, TfrmToggleSwitch, ToggleSwitchFrameName, -1,
    EditorsWithoutTextBoxesGroupIndex, -1, -1);

end.
