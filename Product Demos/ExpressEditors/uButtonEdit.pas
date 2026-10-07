unit uButtonEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxFrameCustomControl, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxTextEdit, cxMaskEdit, cxButtonEdit, cxClasses, dxLayoutControl,
  cxCheckBox, cxDropDownEdit, dxMessageDialog, cxSpinEdit, Vcl.ActnList;

type
  TfrmButtonEdit = class(TfrmCustomControl)
    ButtonEdit: TcxButtonEdit;
    dxLayoutItem1: TdxLayoutItem;
    cmbViewStyle: TcxComboBox;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutGroup8: TdxLayoutGroup;
    edButton1Caption: TcxTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    cmbButton1Kind: TcxComboBox;
    dxLayoutItem4: TdxLayoutItem;
    cbButton1LeftAlignment: TcxCheckBox;
    dxLayoutItem5: TdxLayoutItem;
    cbButton1Enabled: TcxCheckBox;
    dxLayoutItem6: TdxLayoutItem;
    cbButton1Visible: TcxCheckBox;
    dxLayoutItem7: TdxLayoutItem;
    edButton1Width: TcxSpinEdit;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem3: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem4: TdxLayoutEmptySpaceItem;
    dxLayoutItem9: TdxLayoutItem;
    edButton2Caption: TcxTextEdit;
    dxLayoutItem10: TdxLayoutItem;
    cmbButton2Kind: TcxComboBox;
    dxLayoutItem11: TdxLayoutItem;
    cbButton2Enabled: TcxCheckBox;
    dxLayoutItem12: TdxLayoutItem;
    cbButton2LeftAlignment: TcxCheckBox;
    dxLayoutItem13: TdxLayoutItem;
    cbButton2Visible: TcxCheckBox;
    dxLayoutItem14: TdxLayoutItem;
    edButton2Width: TcxSpinEdit;
    dxLayoutItem15: TdxLayoutItem;
    edButton3Caption: TcxTextEdit;
    dxLayoutItem16: TdxLayoutItem;
    edButton4Caption: TcxTextEdit;
    dxLayoutItem17: TdxLayoutItem;
    cmbButton3Kind: TcxComboBox;
    dxLayoutItem18: TdxLayoutItem;
    cmbButton4Kind: TcxComboBox;
    dxLayoutItem19: TdxLayoutItem;
    cbButton3Enabled: TcxCheckBox;
    dxLayoutItem20: TdxLayoutItem;
    cbButton4Enabled: TcxCheckBox;
    dxLayoutItem21: TdxLayoutItem;
    cbButton3LeftAlignment: TcxCheckBox;
    dxLayoutItem22: TdxLayoutItem;
    cbButton4LeftAlignment: TcxCheckBox;
    dxLayoutItem23: TdxLayoutItem;
    cbButton3Visible: TcxCheckBox;
    dxLayoutItem24: TdxLayoutItem;
    cbButton4Visible: TcxCheckBox;
    dxLayoutItem25: TdxLayoutItem;
    edButton3Width: TcxSpinEdit;
    dxLayoutItem26: TdxLayoutItem;
    edButton4Width: TcxSpinEdit;
    actButton3Click: TAction;
    acButton1Enabled: TAction;
    acButton1LeftAlignment: TAction;
    acButton1Visible: TAction;
    acButton2Enabled: TAction;
    acButton2LeftAlignment: TAction;
    acButton2Visible: TAction;
    acButton3Enabled: TAction;
    acButton3LeftAlignment: TAction;
    acButton3Visible: TAction;
    acButton4Enabled: TAction;
    acButton4LeftAlignment: TAction;
    acButton4Visible: TAction;
    procedure cmbViewStylePropertiesChange(Sender: TObject);
    procedure actButton3ClickExecute(Sender: TObject);
  private
    procedure SetButtonEditProperties;
  protected
    procedure CheckControlStartProperties; override;
    function GetDescription: string; override;
    function GetInspectedObject: TPersistent; override;
  end;

implementation

uses
  dxFrames, FrameIDs, System.Math, uStrsConst, cxGeometry;

{$R *.dfm}

procedure TfrmButtonEdit.CheckControlStartProperties;
begin
  SetButtonEditProperties;
end;

function TfrmButtonEdit.GetDescription: string;
begin
  Result := sdxFrameButtonEditDescription;
end;

function TfrmButtonEdit.GetInspectedObject: TPersistent;
begin
  Result := ButtonEdit;
end;

procedure TfrmButtonEdit.cmbViewStylePropertiesChange(Sender: TObject);
begin
  SetButtonEditProperties;
end;

procedure TfrmButtonEdit.SetButtonEditProperties;
var
  AButton: TcxEditButton;
begin
  ButtonEdit.Properties.ViewStyle := TcxTextEditViewStyle(cmbViewStyle.ItemIndex);

  AButton := ButtonEdit.Properties.Buttons[0];
  AButton.Caption := edButton1Caption.Text;
  AButton.Kind := TcxEditButtonKind(cmbButton1Kind.ItemIndex);
  AButton.Enabled := acButton1Enabled.Checked;
  AButton.LeftAlignment := acButton1LeftAlignment.Checked;
  AButton.Visible := acButton1Visible.Checked;
  AButton.Width := ScaleFactor.Apply(edButton1Width.Value);

  AButton := ButtonEdit.Properties.Buttons[1];
  AButton.Caption := edButton2Caption.Text;
  AButton.Kind := TcxEditButtonKind(cmbButton2Kind.ItemIndex);
  AButton.Enabled := acButton2Enabled.Checked;
  AButton.LeftAlignment := acButton2LeftAlignment.Checked;
  AButton.Visible := acButton2Visible.Checked;
  AButton.Width := ScaleFactor.Apply(edButton2Width.Value);

  AButton := ButtonEdit.Properties.Buttons[2];
  AButton.Caption := edButton3Caption.Text;
  AButton.Kind := TcxEditButtonKind(cmbButton3Kind.ItemIndex);
  AButton.Enabled := acButton3Enabled.Checked;
  AButton.LeftAlignment := acButton3LeftAlignment.Checked;
  AButton.Visible := acButton3Visible.Checked;
  AButton.Width := ScaleFactor.Apply(edButton3Width.Value);

  AButton := ButtonEdit.Properties.Buttons[3];
  AButton.Caption := edButton4Caption.Text;
  AButton.Kind := TcxEditButtonKind(cmbButton4Kind.ItemIndex);
  AButton.Enabled := acButton4Enabled.Checked;
  AButton.LeftAlignment := acButton4LeftAlignment.Checked;
  AButton.Visible := acButton4Visible.Checked;
  AButton.Width := ScaleFactor.Apply(edButton4Width.Value);
end;

procedure TfrmButtonEdit.actButton3ClickExecute(Sender: TObject);
begin
  dxMessageDlg(DXCopyrightInfo, TMsgDlgType.mtInformation, [mbOK]);
end;

initialization
  dxFrameManager.RegisterFrame(ButtonEditFrameID, TfrmButtonEdit, ButtonEditFrameName, -1,
    EditorsWithTextBoxesGroupIndex, -1, -1);

end.
