unit uCalcEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxFrameCustomControl, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalc, Vcl.ActnList, cxClasses,
  dxLayoutControl, dxLayoutControlAdapters, Vcl.StdCtrls, cxRadioGroup, dxGDIPlusClasses, cxImage, cxCheckBox, cxSpinEdit;

type
  TfrmCalcEdit = class(TfrmCustomControl)
    CalcEdit: TcxCalcEdit;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    cmbAlignment: TcxComboBox;
    dxLayoutGroup4: TdxLayoutGroup;
    rbGlyphCustom: TcxRadioButton;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    rbGlyphNone: TcxRadioButton;
    dxLayoutItem5: TdxLayoutItem;
    imCustomGlyph: TcxImage;
    dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem;
    edPrecision: TcxSpinEdit;
    dxLayoutItem6: TdxLayoutItem;
    cbScientificFormat: TcxCheckBox;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutEmptySpaceItem3: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem4: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem5: TdxLayoutEmptySpaceItem;
    acScientificFormat: TAction;
    procedure cmbAlignmentPropertiesChange(Sender: TObject);
    procedure imCustomGlyphPropertiesAssignPicture(Sender: TObject; const Picture: TPicture);
  private
    procedure SetCalcEditProperties;
  protected
    procedure CheckControlStartProperties; override;
    function GetDescription: string; override;
    function GetInspectedObject: TPersistent; override;
  end;

implementation

uses
  uStrsConst, dxFrames, FrameIDs;

{$R *.dfm}

procedure TfrmCalcEdit.CheckControlStartProperties;
begin
  SetCalcEditProperties;
end;

function TfrmCalcEdit.GetDescription: string;
begin
  Result := sdxFrameCalcEditDescription;
end;

function TfrmCalcEdit.GetInspectedObject: TPersistent;
begin
  Result := CalcEdit;
end;

procedure TfrmCalcEdit.imCustomGlyphPropertiesAssignPicture(Sender: TObject; const Picture: TPicture);
begin
  SetCalcEditProperties;
end;

procedure TfrmCalcEdit.cmbAlignmentPropertiesChange(Sender: TObject);
begin
  SetCalcEditProperties;
end;

procedure TfrmCalcEdit.SetCalcEditProperties;
begin
  CalcEdit.Properties.Alignment.Horz := TcxEditHorzAlignment(cmbAlignment.ItemIndex);
  if rbGlyphCustom.Checked and (not imCustomGlyph.Picture.Graphic.Empty) then
    CalcEdit.Properties.ButtonGlyph.Assign(imCustomGlyph.Picture.Graphic)
  else
    CalcEdit.Properties.ButtonGlyph.Clear;
  CalcEdit.Properties.Precision := edPrecision.Value;
  CalcEdit.Properties.ScientificFormat := acScientificFormat.Checked;
end;

initialization
  dxFrameManager.RegisterFrame(CalcEditFrameID, TfrmCalcEdit, CalcEditFrameName, -1,
    EditorsWithDropDownGroupIndex, -1, -1);

end.

