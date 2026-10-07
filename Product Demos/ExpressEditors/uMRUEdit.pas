unit uMRUEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.StdCtrls,
  Vcl.Dialogs, dxFrameCustomControl, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxMRUEdit, Vcl.ActnList, cxClasses,
  dxLayoutControl, dxMessageDialog, cxSpinEdit, cxCheckBox;

type
  TfrmMRUEdit = class(TfrmCustomControl)
    MRUEdit: TcxMRUEdit;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    cmbAlignment: TcxComboBox;
    dxLayoutItem3: TdxLayoutItem;
    cmbCharCase: TcxComboBox;
    dxLayoutItem4: TdxLayoutItem;
    cbShowEllipsis: TcxCheckBox;
    dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem3: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem4: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem5: TdxLayoutEmptySpaceItem;
    dxLayoutItem5: TdxLayoutItem;
    edDropDownRowCount: TcxSpinEdit;
    dxLayoutItem6: TdxLayoutItem;
    cbDropDownSizeable: TcxCheckBox;
    dxLayoutEmptySpaceItem6: TdxLayoutEmptySpaceItem;
    acDropDownSizeable: TAction;
    acShowEllipsis: TAction;
    procedure MRUEditPropertiesButtonClick(Sender: TObject);
    procedure cmbAlignmentPropertiesChange(Sender: TObject);
  private
    procedure SetMRUEditProperties;
  protected
    procedure CheckControlStartProperties; override;
    function GetDescription: string; override;
    function GetInspectedObject: TPersistent; override;
  end;

implementation

uses
  dxFrames, FrameIDs, uStrsConst;

{$R *.dfm}

procedure TfrmMRUEdit.CheckControlStartProperties;
begin
  MRUEdit.EditValue := 'San Salvador';
  SetMRUEditProperties;
end;

function TfrmMRUEdit.GetDescription: string;
begin
  Result := sdxFrameMRUEditDescription;
end;

function TfrmMRUEdit.GetInspectedObject: TPersistent;
begin
  Result := MRUEdit;
end;

procedure TfrmMRUEdit.MRUEditPropertiesButtonClick(Sender: TObject);
begin
  dxMessageDlg(DXCopyrightInfo, TMsgDlgType.mtInformation, [mbOK]);
end;

procedure TfrmMRUEdit.cmbAlignmentPropertiesChange(Sender: TObject);
begin
  SetMRUEditProperties;
end;

procedure TfrmMRUEdit.SetMRUEditProperties;
begin
  MRUEdit.Properties.Alignment.Horz := TAlignment(cmbAlignment.ItemIndex);
  MRUEdit.Properties.CharCase := TEditCharCase(cmbCharCase.ItemIndex);
  MRUEdit.Properties.DropDownRows := edDropDownRowCount.Value;
  MRUEdit.Properties.DropDownSizeable := acDropDownSizeable.Checked;
  MRUEdit.Properties.ShowEllipsis := acShowEllipsis.Checked;
end;

initialization
  dxFrameManager.RegisterFrame(MRUEditFrameID, TfrmMRUEdit, MRUEditFrameName, -1,
    EditorsWithDropDownGroupIndex, -1, -1);

end.
