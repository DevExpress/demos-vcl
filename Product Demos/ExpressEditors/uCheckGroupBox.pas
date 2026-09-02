unit uCheckGroupBox;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxFrameCustomControl, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, cxLabel, dxLayoutContainer, cxGroupBox, dxCheckGroupBox, Vcl.ActnList, cxClasses, dxLayoutControl,
  cxSpinEdit, cxCheckBox, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  System.Actions, dxUIAdorners;

type
  TfrmCheckGroupBox = class(TfrmCustomControl)
    CheckGroupBox: TdxCheckGroupBox;
    dxLayoutItem1: TdxLayoutItem;
    grbMain: TcxGroupBox;
    cxLabel1: TcxLabel;
    dxLayoutItem2: TdxLayoutItem;
    cmbAlignment: TcxComboBox;
    dxLayoutItem3: TdxLayoutItem;
    cbEnabled: TcxCheckBox;
    dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem3: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem4: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem5: TdxLayoutEmptySpaceItem;
    lgPanelStyle: TdxLayoutItem;
    cbgPanelStyleActive: TdxCheckGroupBox;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    edPanelStyleCaptionIndent: TcxSpinEdit;
    cxLabel2: TcxLabel;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem4: TdxLayoutItem;
    cbCheckBoxChecked: TcxCheckBox;
    dxLayoutItem5: TdxLayoutItem;
    cbCheckBoxVisible: TcxCheckBox;
    acEnabled: TAction;
    acCheckBoxChecked: TAction;
    acCheckBoxVisible: TAction;
    procedure cmbAlignmentPropertiesChange(Sender: TObject);
    procedure CheckGroupBoxPropertiesChange(Sender: TObject);
  private
    procedure SetCheckGroupBoxProperties;
  protected
    procedure CheckControlStartProperties; override;
    function GetDescription: string; override;
    function GetInspectedObject: TPersistent; override;
  end;

implementation

uses
  uStrsConst, dxFrames, FrameIDs, System.Math;

{$R *.dfm}

procedure TfrmCheckGroupBox.CheckControlStartProperties;
begin
  SetCheckGroupBoxProperties;
end;

function TfrmCheckGroupBox.GetDescription: string;
begin
  Result := sdxFrameCheckGroupBoxDescription;
end;

function TfrmCheckGroupBox.GetInspectedObject: TPersistent;
begin
  Result := CheckGroupBox;
end;

procedure TfrmCheckGroupBox.CheckGroupBoxPropertiesChange(Sender: TObject);
begin
  acCheckBoxChecked.Checked := CheckGroupBox.CheckBox.Checked;
end;

procedure TfrmCheckGroupBox.cmbAlignmentPropertiesChange(Sender: TObject);
begin
  SetCheckGroupBoxProperties;
end;

procedure TfrmCheckGroupBox.SetCheckGroupBoxProperties;
begin
  CheckGroupBox.Alignment := TcxCaptionAlignment(cmbAlignment.ItemIndex);
  CheckGroupBox.Enabled := acEnabled.Checked;
  CheckGroupBox.CheckBox.Checked := acCheckBoxChecked.Checked;
  CheckGroupBox.CheckBox.Visible := acCheckBoxVisible.Checked;
  CheckGroupBox.PanelStyle.Active := cbgPanelStyleActive.CheckBox.Checked;
  CheckGroupBox.PanelStyle.CaptionIndent := edPanelStyleCaptionIndent.Value;
end;

initialization
  dxFrameManager.RegisterFrame(CheckGroupBoxFrameID, TfrmCheckGroupBox, CheckGroupBoxFrameName, -1,
    MultiPurposeGroupIndex, -1, -1);

end.
