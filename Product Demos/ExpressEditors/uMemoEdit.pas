unit uMemoEdit;

{$I cxVer.inc}

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.StdCtrls,
  Vcl.Dialogs, dxFrameCustomControl, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, cxSpinEdit, cxCheckBox, cxMaskEdit, cxDropDownEdit, dxLayoutContainer, cxTextEdit, cxMemo,
  Vcl.ActnList, cxClasses, dxLayoutControl;

type
  TfrmMemoEdit = class(TfrmCustomControl)
    MemoEdit: TcxMemo;
    dxLayoutItem1: TdxLayoutItem;
    cmbAlignment: TcxComboBox;
    dxLayoutItem2: TdxLayoutItem;
    cmbCharCase: TcxComboBox;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem;
    cbWordWrap: TcxCheckBox;
    dxLayoutItem3: TdxLayoutItem;
    cbAcceptReturn: TcxCheckBox;
    dxLayoutItem5: TdxLayoutItem;
    cbAcceptTab: TcxCheckBox;
    dxLayoutItem6: TdxLayoutItem;
    edMaxLength: TcxSpinEdit;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutEmptySpaceItem3: TdxLayoutEmptySpaceItem;
    cmbScrollBars: TcxComboBox;
    dxLayoutItem8: TdxLayoutItem;
    acWordWrap: TAction;
    acAcceptReturn: TAction;
    acAcceptTab: TAction;
    procedure cmbAlignmentPropertiesChange(Sender: TObject);
  private
    procedure SetMemoEditProperties;
  protected
    procedure CheckControlStartProperties; override;
    function GetDescription: string; override;
    function GetInspectedObject: TPersistent; override;
  end;

implementation

uses
{$IFDEF DELPHI16}
  System.UITypes,
{$ENDIF}
  dxFrames, FrameIDs, System.Math, uStrsConst;

{$R *.dfm}

procedure TfrmMemoEdit.CheckControlStartProperties;
begin
  MemoEdit.Lines.Add(sdxMemoEditFrame_Lines);
  SetMemoEditProperties;
end;

function TfrmMemoEdit.GetDescription: string;
begin
  Result := sdxFrameMemoEditDescription;
end;

function TfrmMemoEdit.GetInspectedObject: TPersistent;
begin
  Result := MemoEdit;
end;

procedure TfrmMemoEdit.cmbAlignmentPropertiesChange(Sender: TObject);
begin
  SetMemoEditProperties;
end;

procedure TfrmMemoEdit.SetMemoEditProperties;
begin
  MemoEdit.Properties.Alignment := TcxEditHorzAlignment(cmbAlignment.ItemIndex);
  MemoEdit.Properties.ScrollBars := TScrollStyle(cmbScrollBars.ItemIndex);
  MemoEdit.Properties.CharCase := TEditCharCase(cmbCharCase.ItemIndex);
  MemoEdit.Properties.WordWrap := acWordWrap.Checked;
  MemoEdit.Properties.WantReturns := acAcceptReturn.Checked;
  MemoEdit.Properties.WantTabs := acAcceptTab.Checked;
  MemoEdit.Properties.MaxLength := edMaxLength.Value;
  MemoEdit.Properties.AssignedValues.MaxLength := edMaxLength.Value > 0;
end;

initialization
  dxFrameManager.RegisterFrame(MemoEditFrameID, TfrmMemoEdit, MemoEditFrameName, -1,
    EditorsWithTextBoxesGroupIndex, -1, -1);

end.
