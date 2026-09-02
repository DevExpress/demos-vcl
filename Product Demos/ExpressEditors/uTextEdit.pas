unit uTextEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxFrameCustomControl, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxTextEdit, cxClasses, dxLayoutControl, cxMemo, cxMaskEdit, cxDropDownEdit,
  cxCheckBox, cxDrawTextUtils, dxLayoutControlAdapters, Vcl.StdCtrls, cxRadioGroup, Vcl.ActnList, System.Actions, dxUIAdorners;

type
  TfrmTextEdit = class(TfrmCustomControl)
    acUseNullString: TAction;
    cbUseNullString: TcxCheckBox;
    cmbAlignment: TcxComboBox;
    cmbCharCase: TcxComboBox;
    cmbEchoMode: TcxComboBox;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem4: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem5: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem6: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem7: TdxLayoutEmptySpaceItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    edCustomPasswordChar: TcxMaskEdit;
    edNullstring: TcxTextEdit;
    liCustomPasswordChar: TdxLayoutItem;
    liNullstring: TdxLayoutItem;
    mmLookupItems: TcxMemo;
    rbCustomPasswordChar: TcxRadioButton;
    rbDefaultPasswordChar: TcxRadioButton;
    TextEdit: TcxTextEdit;
    licbShowPasswordRevealButton: TdxLayoutCheckBoxItem;
    procedure cmbAlignmentPropertiesChange(Sender: TObject);
    procedure TextEditPropertiesChange(Sender: TObject);
    procedure licbShowPasswordRevealButtonClick(Sender: TObject);
  private
    function GetPasswordChar: Char;
    procedure SetTextEditProperties;
  protected
    procedure CheckControlStartProperties; override;
    procedure DoCheckActualTouchMode; override;
    function GetDescription: string; override;
    function GetInspectedObject: TPersistent; override;
  end;

implementation

uses
  uStrsConst, dxFrames, FrameIDs, cxGeometry;

{$R *.dfm}

procedure TfrmTextEdit.CheckControlStartProperties;
begin
  SetTextEditProperties;
end;

procedure TfrmTextEdit.DoCheckActualTouchMode;
const
  ShowButtonsWidth: array[Boolean] of Integer = (250, 300);
begin
  inherited DoCheckActualTouchMode;
  dxLayoutGroup3.SizeOptions.Width := ScaleFactor.Apply(ShowButtonsWidth[ActualTouchMode]);
end;

function TfrmTextEdit.GetDescription: string;
begin
  Result := sdxFrameTextEditDescription;
end;

function TfrmTextEdit.GetInspectedObject: TPersistent;
begin
  Result := TextEdit;
end;

procedure TfrmTextEdit.cmbAlignmentPropertiesChange(Sender: TObject);
begin
  SetTextEditProperties;
end;

function TfrmTextEdit.GetPasswordChar: Char;
begin
  if rbDefaultPasswordChar.Checked or (Length(edCustomPasswordChar.Text) = 0) then
    Result := #0
  else
    Result := edCustomPasswordChar.Text[1];
  liCustomPasswordChar.Enabled := not rbDefaultPasswordChar.Checked;
end;

procedure TfrmTextEdit.licbShowPasswordRevealButtonClick(Sender: TObject);
begin
  TextEdit.Properties.ShowPasswordRevealButton := licbShowPasswordRevealButton.Checked;
end;

procedure TfrmTextEdit.SetTextEditProperties;
begin
  TextEdit.Properties.BeginUpdate;
  TextEdit.Properties.Alignment.Horz := TcxEditHorzAlignment(cmbAlignment.ItemIndex);
  TextEdit.Properties.CharCase := TEditCharCase(cmbCharCase.ItemIndex);
  TextEdit.Properties.LookupItems.Assign(mmLookupItems.Lines);
  TextEdit.Properties.EchoMode := TcxEditEchoMode(cmbEchoMode.ItemIndex);
  TextEdit.Properties.PasswordChar := GetPasswordChar;
  TextEdit.Properties.ShowPasswordRevealButton := licbShowPasswordRevealButton.Checked;
  TextEdit.Properties.UseNullString := acUseNullString.Checked;
  TextEdit.Properties.Nullstring := edNullstring.Text;
  TextEdit.Properties.EndUpdate;
  liNullstring.Enabled := TextEdit.Properties.UseNullString;
end;

procedure TfrmTextEdit.TextEditPropertiesChange(Sender: TObject);
begin
  if TextEdit.Text = '' then
    TextEdit.EditValue := Null;
end;

initialization
  dxFrameManager.RegisterFrame(TextEditFrameID, TfrmTextEdit, TextEditFrameName, -1,
    EditorsWithTextBoxesGroupIndex, -1, -1);

end.
