unit uColorEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxFrameCustomControl, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxCore, dxLayoutcxEditAdapters, dxLayoutContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, dxColorEdit, Vcl.ActnList,
  cxClasses, dxLayoutControl, Main, cxCheckBox, dxColorGallery;

type
  TfrmColorEdit = class(TfrmCustomControl)
    ColorEdit: TdxColorEdit;
    dxLayoutItem1: TdxLayoutItem;
    liColorValue: TdxLayoutLabeledItem;
    dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutEmptySpaceItem5: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem6: TdxLayoutEmptySpaceItem;
    dxLayoutItem2: TdxLayoutItem;
    cmbColorPalette: TcxComboBox;
    dxLayoutItem3: TdxLayoutItem;
    cmbColorSet: TcxComboBox;
    dxLayoutEmptySpaceItem7: TdxLayoutEmptySpaceItem;
    dxLayoutItem4: TdxLayoutItem;
    cbShowItemBorders: TcxCheckBox;
    dxLayoutEmptySpaceItem3: TdxLayoutEmptySpaceItem;
    acShowItemBorders: TAction;
    procedure cmbColorBoxAlignPropertiesChange(Sender: TObject);
    procedure ColorEditPropertiesChange(Sender: TObject);
    procedure ColorEditPropertiesGetCustomColorSet(Sender: TObject; var ASet: TColors);
  private
    procedure SetColorEditProperties;
  protected
    procedure CheckControlStartProperties; override;
    function GetDescription: string; override;
    function GetInspectedObject: TPersistent; override;
  end;

implementation

uses
  uStrsConst, dxFrames, FrameIDs;

{$R *.dfm}

procedure TfrmColorEdit.CheckControlStartProperties;
begin
  SetColorEditProperties;
  ColorEditPropertiesChange(ColorEdit);
end;

function TfrmColorEdit.GetDescription: string;
begin
  Result := sdxFrameColorEditDescription;
end;

function TfrmColorEdit.GetInspectedObject: TPersistent;
begin
  Result := ColorEdit;
end;

procedure TfrmColorEdit.cmbColorBoxAlignPropertiesChange(Sender: TObject);
begin
  SetColorEditProperties;
end;

procedure TfrmColorEdit.ColorEditPropertiesChange(Sender: TObject);
begin
  liColorValue.Caption := 'Selected Color Value: $' + IntToHex(ColorEdit.ColorValue, 8);
end;

procedure TfrmColorEdit.ColorEditPropertiesGetCustomColorSet(Sender: TObject; var ASet: TColors);
const
  AOfficeColorPaletteSize = 10;
  AOfficeCustomStandardColors: array[0..AOfficeColorPaletteSize - 1] of TColor =
    (clMenu, clMenuBar, clMenuHighlight, clMenuText, clScrollBar, cl3DDkShadow, cl3DLight, clWindow, clWindowFrame, clWindowText);
var
  AIsOfficePalette: Boolean;
  I, ACount: Integer;
  ADXColors: array[Boolean] of TColor;
begin
  AIsOfficePalette := ColorEdit.Properties.ColorPalette = cpOffice;
  if AIsOfficePalette then
    ACount := AOfficeColorPaletteSize
  else
    ACount := High(ASet) + 1;
  ADXColors[False] := RGB(247, 144, 74);
  ADXColors[True] := RGB(73, 73, 73);
  for I := 0 to ACount - 1 do
  begin
    if (ColorEdit.Properties.ColorPalette = cpExtended) and (I div 8 in [1, 3]) then
       ASet[I] := ADXColors[not Odd(I)]
    else
      ASet[I] := ADXColors[Odd(I)];
    if AIsOfficePalette then
      ASet[I + AOfficeColorPaletteSize] := AOfficeCustomStandardColors[I]; // Set standard colors in office's palette
  end;
end;

procedure TfrmColorEdit.SetColorEditProperties;
begin
  ColorEdit.Properties.ColorPalette := TdxColorPalette(cmbColorPalette.ItemIndex);
  ColorEdit.Properties.ColorSet := TdxColorSet(cmbColorSet.ItemIndex);
  ColorEdit.Properties.ShowItemBorders := acShowItemBorders.Checked;
end;

initialization
  dxFrameManager.RegisterFrame(ColorEditFrameID, TfrmColorEdit, ColorEditFrameName, -1,
    EditorsWithDropDownGroupIndex, -1, -1);

end.
