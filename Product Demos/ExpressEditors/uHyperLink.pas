unit uHyperLink;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxFrameCustomControl, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxTextEdit, cxHyperLinkEdit, Vcl.ActnList, cxClasses, dxLayoutControl,
  cxMaskEdit, cxDropDownEdit, Main, cxCheckBox;

type
  TfrmHyperLink = class(TfrmCustomControl)
    HyperLink: TcxHyperLinkEdit;
    dxLayoutItem1: TdxLayoutItem;
    cmbAlignment: TcxComboBox;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem3: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem5: TdxLayoutEmptySpaceItem;
    dxLayoutLabeledItem1: TdxLayoutLabeledItem;
    cbSingleClick: TcxCheckBox;
    dxLayoutItem5: TdxLayoutItem;
    acSingleClick: TAction;
    procedure cmbAlignmentPropertiesChange(Sender: TObject);
  private
    procedure SetHypeLinkProperties;
  protected
    procedure CheckControlStartProperties; override;
    function GetDescription: string; override;
    function GetInspectedObject: TPersistent; override;
  end;

implementation

uses
  uStrsConst, dxFrames, FrameIDs;

{$R *.dfm}

procedure TfrmHyperLink.CheckControlStartProperties;
begin
  SetHypeLinkProperties;
end;

function TfrmHyperLink.GetDescription: string;
begin
  Result := sdxFrameHyperLinkDescription;
end;

function TfrmHyperLink.GetInspectedObject: TPersistent;
begin
  Result := HyperLink;
end;

procedure TfrmHyperLink.cmbAlignmentPropertiesChange(Sender: TObject);
begin
  SetHypeLinkProperties;
end;

procedure TfrmHyperLink.SetHypeLinkProperties;
begin
  HyperLink.Properties.Alignment.Horz := TcxEditHorzAlignment(cmbAlignment.ItemIndex);
  HyperLink.Properties.SingleClick := acSingleClick.Checked;
end;

initialization
  dxFrameManager.RegisterFrame(HyperLinkFrameID, TfrmHyperLink, HyperLinkFrameName, -1,
    EditorsWithTextBoxesGroupIndex, -1, -1);


end.
