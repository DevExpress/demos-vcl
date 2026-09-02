unit Options;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, dxorgchr, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxButtons, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxSpinEdit, cxGroupBox, cxCheckBox, dxLayoutcxEditAdapters, dxLayoutControlAdapters,
  dxLayoutContainer, cxClasses, dxLayoutControl, dxLayoutLookAndFeels;

type
  TOptionsForm = class(TForm)
    BitBtn1: TcxButton;
    BitBtn2: TcxButton;
    seX: TcxSpinEdit;
    seY: TcxSpinEdit;
    seLineWidth: TcxSpinEdit;
    cbLeft: TcxCheckBox;
    cbCenter: TcxCheckBox;
    cbRight: TcxCheckBox;
    cbVCenter: TcxCheckBox;
    cbWrap: TcxCheckBox;
    cbUpper: TcxCheckBox;
    cbLower: TcxCheckBox;
    cbGrow: TcxCheckBox;
    cbSelect: TcxCheckBox;
    cbFocus: TcxCheckBox;
    cbButtons: TcxCheckBox;
    cbCanDrag: TcxCheckBox;
    cbShowDrag: TcxCheckBox;
    cbInsDel: TcxCheckBox;
    cbEdit: TcxCheckBox;
    cbShowImages: TcxCheckBox;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutGroup9: TdxLayoutGroup;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutGroup10: TdxLayoutGroup;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutItem19: TdxLayoutItem;
    dxLayoutGroup11: TdxLayoutGroup;
    dxLayoutItem20: TdxLayoutItem;
    dxLayoutItem21: TdxLayoutItem;
    dxLayoutGroup12: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutGroup13: TdxLayoutGroup;
    dxLayoutGroup14: TdxLayoutGroup;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutCxLookAndFeel1: TdxLayoutCxLookAndFeel;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  end;

var
  OptionsForm: TOptionsForm;

implementation

uses
  main;

{$R *.DFM}

type
  TdxCustomOrgChartAccess = class(TdxCustomOrgChart);

{ TOptionsForm }

procedure TOptionsForm.FormActivate(Sender: TObject);
begin
  Caption := MainForm.ActiveOrgChart.Name + ' Options';
  with TdxCustomOrgChartAccess(MainForm.ActiveOrgChart) do
  begin
    cbLeft.Checked := emLeft in EditMode;
    cbCenter.Checked := emCenter in EditMode;
    cbRight.Checked := emRight in EditMode;
    cbVCenter.Checked := emVCenter in EditMode;
    cbWrap.Checked := emWrap in EditMode;
    cbUpper.Checked := emUpper in EditMode;
    cbLower.Checked := emLower in EditMode;
    cbGrow.Checked := emGrow in EditMode;

    cbSelect.Checked := ocSelect in Options;
    cbFocus.Checked := ocFocus in Options;
    cbButtons.Checked := ocButtons in Options;
    cbEdit.Checked := ocEdit in Options;
    cbCanDrag.Checked := ocCanDrag in Options;
    cbShowDrag.Checked := ocshowDrag in Options;
    cbInsDel.Checked := ocInsDel in Options;

    seX.Value := IndentX;
    seY.Value := IndentY;
    seLineWidth.Value := LineWidth;
    cbShowImages.Checked := not(Images = nil);
  end;
end;

procedure TOptionsForm.BitBtn2Click(Sender: TObject);
begin
  with TdxCustomOrgChartAccess(MainForm.ActiveOrgChart) do
  begin
    if cbLeft.Checked then EditMode := EditMode + [emLeft] else EditMode := EditMode - [emLeft];
    if cbCenter.Checked then EditMode := EditMode + [emCenter] else EditMode := EditMode - [emCenter];
    if cbRight.Checked then EditMode := EditMode + [emRight] else EditMode := EditMode - [emRight];
    if cbVCenter.Checked then EditMode := EditMode + [emVCenter] else EditMode := EditMode - [emVCenter];
    if cbWrap.Checked then EditMode := EditMode + [emWrap] else EditMode := EditMode - [emWrap];
    if cbUpper.Checked then EditMode := EditMode + [emUpper] else EditMode := EditMode - [emUpper];
    if cbLower.Checked then EditMode := EditMode + [emLower] else EditMode := EditMode - [emLower];
    if cbGrow.Checked then EditMode := EditMode + [emGrow] else EditMode := EditMode - [emGrow];

    if cbSelect.Checked then Options := Options + [ocSelect] else Options := Options - [ocSelect];
    if cbFocus.Checked then Options := Options + [ocFocus] else Options := Options - [ocFocus];
    if cbButtons.Checked then Options := Options + [ocButtons] else Options := Options - [ocButtons];
    if cbEdit.Checked then Options := Options + [ocEdit] else Options := Options - [ocEdit];
    if cbCanDrag.Checked then Options := Options + [ocCanDrag] else Options := Options - [ocCanDrag];
    if cbShowDrag.Checked then Options := Options + [ocShowDrag] else Options := Options - [ocShowDrag];
    if cbInsDel.Checked then Options := Options + [ocInsDel] else Options := Options - [ocInsDel];
    if CbShowImages.Checked then Images := MainForm.ilTree else Images := nil;

    IndentX := seX.Value;
    IndentY := seY.Value;
    LineWidth := seLineWidth.Value;
  end;
end;

end.
