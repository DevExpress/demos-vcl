unit RibbonRichEditDemoGallerySetup;

interface

uses
  Vcl.Forms, System.Classes, Vcl.StdCtrls, Vcl.Controls, dxForms, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxButtons,
  cxControls, cxContainer, cxEdit, cxCheckBox, cxClasses, dxLayoutContainer, dxLayoutControl;

type
  TColorDialogSetupForm = class(TdxForm)
    btnOK: TcxButton;
    btnCancel: TcxButton;
    chkRemoveHorizontalItemPadding: TcxCheckBox;
    chkRemoveVerticalItemPadding: TcxCheckBox;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
  public
    function GetSettings(var RemoveHorizontalItemPadding, RemoveVerticalItemPadding: Boolean): Boolean;
  end;

var
  ColorDialogSetupForm: TColorDialogSetupForm;

implementation

{$R *.dfm}

function TColorDialogSetupForm.GetSettings(var RemoveHorizontalItemPadding,
  RemoveVerticalItemPadding: Boolean): Boolean;
begin
  chkRemoveHorizontalItemPadding.Checked := RemoveHorizontalItemPadding;
  chkRemoveVerticalItemPadding.Checked := RemoveVerticalItemPadding;

  Result := ShowModal = mrOK;

  if Result then
  begin
    RemoveHorizontalItemPadding := chkRemoveHorizontalItemPadding.Checked;
    RemoveVerticalItemPadding := chkRemoveVerticalItemPadding.Checked;
  end;
end;

end.
