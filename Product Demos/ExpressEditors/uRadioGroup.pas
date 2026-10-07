unit uRadioGroup;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxGroupBox, cxRadioGroup, cxClasses, dxLayoutControl, cxDropDownEdit,
  cxTextEdit, cxMaskEdit, cxSpinEdit, dxFrameCustomControl, Vcl.ActnList;

type
  TfrmRadioGroup = class(TfrmCustomControl)
    RadioGroup: TcxRadioGroup;
    dxLayoutItem1: TdxLayoutItem;
    edColumnCount: TcxSpinEdit;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    edSelectedIndex: TcxSpinEdit;
    dxLayoutItem3: TdxLayoutItem;
    edSelectedValue: TcxComboBox;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem3: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem4: TdxLayoutEmptySpaceItem;
    edCaption: TcxTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    procedure edCaptionPropertiesChange(Sender: TObject);
    procedure edColumnCountPropertiesChange(Sender: TObject);
    procedure edSelectedIndexPropertiesChange(Sender: TObject);
    procedure edSelectedValuePropertiesChange(Sender: TObject);
    procedure RadioGroupPropertiesChange(Sender: TObject);
  private
    procedure CheckSelectedValue;
  protected
    procedure CheckControlStartProperties; override;
    function GetDescription: string; override;
    function GetInspectedObject: TPersistent; override;
  end;

implementation

uses
  uStrsConst, dxFrames, FrameIDs;

{$R *.dfm}

procedure TfrmRadioGroup.CheckControlStartProperties;
begin
  RadioGroup.Caption := edCaption.Text;
  RadioGroup.Properties.Columns := edColumnCount.Value;
  RadioGroup.ItemIndex := edSelectedIndex.Value;
  CheckSelectedValue;
end;

procedure TfrmRadioGroup.CheckSelectedValue;
begin
  if RadioGroup.ItemIndex > -1 then
    edSelectedValue.ItemIndex := RadioGroup.ItemIndex
  else
    edSelectedValue.ItemIndex := edSelectedValue.Properties.Items.Count - 1;
end;

function TfrmRadioGroup.GetDescription: string;
begin
  Result := sdxFrameRadioGroupDescription;
end;

function TfrmRadioGroup.GetInspectedObject: TPersistent;
begin
  Result := RadioGroup;
end;

procedure TfrmRadioGroup.RadioGroupPropertiesChange(Sender: TObject);
begin
  edSelectedIndex.Value := RadioGroup.ItemIndex;
end;

procedure TfrmRadioGroup.edCaptionPropertiesChange(Sender: TObject);
begin
  RadioGroup.Caption := edCaption.Text;
end;

procedure TfrmRadioGroup.edColumnCountPropertiesChange(Sender: TObject);
begin
  RadioGroup.Properties.Columns := edColumnCount.Value;
end;

procedure TfrmRadioGroup.edSelectedIndexPropertiesChange(Sender: TObject);
begin
  RadioGroup.ItemIndex := edSelectedIndex.Value;
  CheckSelectedValue;
end;

procedure TfrmRadioGroup.edSelectedValuePropertiesChange(Sender: TObject);
begin
  if edSelectedValue.ItemIndex < edSelectedValue.Properties.Items.Count - 1 then
    edSelectedIndex.Value := edSelectedValue.ItemIndex
  else
    edSelectedIndex.Value := -1;
end;

initialization
  dxFrameManager.RegisterFrame(RadioGroupFrameID, TfrmRadioGroup, RadioGroupFrameName, -1,
    EditorsWithoutTextBoxesGroupIndex, -1, -1);

end.
