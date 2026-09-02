unit uImageComboBox;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxFrameCustomControl, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxImageComboBox, Vcl.ActnList,
  cxClasses, dxLayoutControl, maindata, cxCheckBox, cxSpinEdit;

type
  TfrmImageComboBox = class(TfrmCustomControl)
    ImageComboBox: TcxImageComboBox;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    cmbAlignment: TcxComboBox;
    dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem;
    dxLayoutItem3: TdxLayoutItem;
    cmbImageAlign: TcxComboBox;
    dxLayoutItem4: TdxLayoutItem;
    edDropDownRowCount: TcxSpinEdit;
    dxLayoutItem5: TdxLayoutItem;
    cbShowDescription: TcxCheckBox;
    dxLayoutEmptySpaceItem3: TdxLayoutEmptySpaceItem;
    acShowDescription: TAction;
    procedure cmbAlignmentPropertiesChange(Sender: TObject);
  private
    procedure SetImageComboBoxProperties;
  protected
    procedure CheckControlStartProperties; override;
    function GetDescription: string; override;
    function GetInspectedObject: TPersistent; override;
  end;

var
  frmImageComboBox: TfrmImageComboBox;

implementation

uses
  uStrsConst, dxFrames, FrameIDs;

{$R *.dfm}

procedure TfrmImageComboBox.CheckControlStartProperties;
begin
  SetImageComboBoxProperties;
end;

function TfrmImageComboBox.GetDescription: string;
begin
  Result := sdxFrameImageComboBoxDescription;
end;

function TfrmImageComboBox.GetInspectedObject: TPersistent;
begin
  Result := ImageComboBox;
end;

procedure TfrmImageComboBox.cmbAlignmentPropertiesChange(Sender: TObject);
begin
  SetImageComboBoxProperties;
end;

procedure TfrmImageComboBox.SetImageComboBoxProperties;
begin
  ImageComboBox.Properties.Alignment.Horz := TcxEditHorzAlignment(cmbAlignment.ItemIndex);
  ImageComboBox.Properties.DropDownRows := edDropDownRowCount.Value;
  ImageComboBox.Properties.ImageAlign := TcxImageAlign(cmbImageAlign.ItemIndex);
  ImageComboBox.Properties.ShowDescriptions := acShowDescription.Checked;
end;

initialization
  dxFrameManager.RegisterFrame(ImageComboBoxFrameID, TfrmImageComboBox, ImageComboBoxFrameName, -1,
    EditorsWithDropDownGroupIndex, -1, -1);

end.
