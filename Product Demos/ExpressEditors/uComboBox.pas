unit uComboBox;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxFrameCustomControl, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, Vcl.ActnList, cxClasses,
  dxLayoutControl, dxLayoutControlAdapters, cxMemo, cxCheckBox, cxSpinEdit, dxGDIPlusClasses, cxImage, Vcl.StdCtrls,
  cxRadioGroup;

type
  TfrmComboBox = class(TfrmCustomControl)
    ComboBox: TcxComboBox;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    cmbAlignment: TcxComboBox;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem3: TdxLayoutItem;
    rbGlyphNone: TcxRadioButton;
    dxLayoutItem4: TdxLayoutItem;
    rbGlyphCustom: TcxRadioButton;
    dxLayoutItem5: TdxLayoutItem;
    imCustomGlyph: TcxImage;
    dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem;
    dxLayoutItem6: TdxLayoutItem;
    cmbCharCase: TcxComboBox;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutItem7: TdxLayoutItem;
    cmbDropDownListStyle: TcxComboBox;
    liDropDownRowCount: TdxLayoutItem;
    edDropDownRowCount: TcxSpinEdit;
    dxLayoutItem9: TdxLayoutItem;
    cbDropDownSizeable: TcxCheckBox;
    mmItems: TcxMemo;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutItem11: TdxLayoutItem;
    cbSorted: TcxCheckBox;
    dxLayoutEmptySpaceItem3: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem4: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem5: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem6: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem7: TdxLayoutEmptySpaceItem;
    dxLayoutItem12: TdxLayoutItem;
    cmbPopupAlignment: TcxComboBox;
    acDropDownSizeable: TAction;
    acSorted: TAction;
    procedure cmbAlignmentPropertiesChange(Sender: TObject);
    procedure imCustomGlyphPropertiesAssignPicture(Sender: TObject; const Picture: TPicture);
    procedure mmItemsPropertiesChange(Sender: TObject);
  private
    procedure SetComboBoxProperties;
    procedure PopulateItems;
  protected
    procedure CheckControlStartProperties; override;
    function GetDescription: string; override;
    function GetInspectedObject: TPersistent; override;
  end;

implementation

uses
  uStrsConst, dxFrames, FrameIDs, System.Math;

{$R *.dfm}

procedure TfrmComboBox.CheckControlStartProperties;
begin
  PopulateItems;
  ComboBox.ItemIndex := 0;
  SetComboBoxProperties;
end;

function TfrmComboBox.GetDescription: string;
begin
  Result := sdxFrameComboBoxDescription;
end;

function TfrmComboBox.GetInspectedObject: TPersistent;
begin
  Result := ComboBox;
end;

procedure TfrmComboBox.imCustomGlyphPropertiesAssignPicture(Sender: TObject; const Picture: TPicture);
begin
  SetComboBoxProperties;
end;

procedure TfrmComboBox.mmItemsPropertiesChange(Sender: TObject);
begin
  PopulateItems;
end;

procedure TfrmComboBox.cmbAlignmentPropertiesChange(Sender: TObject);
begin
  SetComboBoxProperties;
end;

procedure TfrmComboBox.PopulateItems;
begin
  ComboBox.Properties.Items.Assign(mmItems.Lines);
  edDropDownRowCount.Properties.MaxValue := Max(edDropDownRowCount.Properties.MinValue, mmItems.Lines.Count);
end;

procedure TfrmComboBox.SetComboBoxProperties;
begin
  ComboBox.Properties.Alignment.Horz := TAlignment(cmbAlignment.ItemIndex);
  ComboBox.Properties.CharCase := TEditCharCase(cmbCharCase.ItemIndex);
  if rbGlyphCustom.Checked and (not imCustomGlyph.Picture.Graphic.Empty) then
    ComboBox.Properties.ButtonGlyph.Assign(imCustomGlyph.Picture.Graphic)
  else
    ComboBox.Properties.ButtonGlyph.Clear;
  ComboBox.Properties.DropDownListStyle := TcxEditDropDownListStyle(cmbDropDownListStyle.ItemIndex);
  ComboBox.Properties.DropDownRows := edDropDownRowCount.Value;
  ComboBox.Properties.DropDownSizeable := acDropDownSizeable.Checked;
  liDropDownRowCount.Enabled := not ComboBox.Properties.DropDownSizeable;
  ComboBox.Properties.Sorted := acSorted.Checked;
  ComboBox.Properties.PopupAlignment := TAlignment(cmbPopupAlignment.ItemIndex);
end;

initialization
  dxFrameManager.RegisterFrame(ComboBoxFrameID, TfrmComboBox, ComboBoxFrameName, -1,
    EditorsWithDropDownGroupIndex, -1, -1);

end.
