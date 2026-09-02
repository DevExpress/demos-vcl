unit uBlobEdit;

{$I cxVer.inc}

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxFrameCustomControl, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxBlobEdit, Vcl.ActnList, cxClasses,
  dxLayoutControl, cxEditRepositoryItems, dxLayoutControlAdapters, Vcl.StdCtrls, cxRadioGroup, maindata, cxSpinEdit,
  cxCheckBox, dxGDIPlusClasses;

type
  TfrmBlobEdit = class(TfrmCustomControl)
    BlobEdit: TcxBlobEdit;
    dxLayoutItem1: TdxLayoutItem;
    cxEditRepository1: TcxEditRepository;
    edrepMemo: TcxEditRepositoryMemoItem;
    edrepImage: TcxEditRepositoryImageItem;
    rbMemoMode: TcxRadioButton;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    rbPictureMode: TcxRadioButton;
    dxLayoutGroup4: TdxLayoutGroup;
    lgMemoProperties: TdxLayoutGroup;
    dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem3: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem4: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem5: TdxLayoutEmptySpaceItem;
    dxLayoutItem4: TdxLayoutItem;
    cmbCharCase: TcxComboBox;
    dxLayoutItem5: TdxLayoutItem;
    cmbScrollBars: TcxComboBox;
    dxLayoutItem6: TdxLayoutItem;
    cbWordWrap: TcxCheckBox;
    dxLayoutItem7: TdxLayoutItem;
    cbAcceptReturn: TcxCheckBox;
    dxLayoutItem8: TdxLayoutItem;
    cbAcceptTab: TcxCheckBox;
    dxLayoutItem9: TdxLayoutItem;
    edMaxLength: TcxSpinEdit;
    acAcceptReturn: TAction;
    acAcceptTab: TAction;
    acWordWrap: TAction;
    procedure rbMemoModeClick(Sender: TObject);
    procedure cmbCharCasePropertiesChange(Sender: TObject);
  private
    FMemoValue: TcxEditValue;
    FPictureValue: TcxEditValue;
    procedure CheckPopupMemoSize;
    procedure CheckPopupPictureSize;
    procedure LoadDefaultMemo;
    procedure LoadDefaultPicture;
    procedure SetBlobEditProperties;
    procedure SetMemoMode;
  public
    procedure CheckControlStartProperties; override;
    function GetDescription: string; override;
    function GetInspectedObject: TPersistent; override;
  end;

implementation

uses
{$IFDEF DELPHI16}
  System.UITypes,
{$ENDIF}
  dxFrames, FrameIDs, uStrsConst, cxGeometry;

{$R *.dfm}

const
  DefaultPopupMemoHeight = 200;
  DefaultPopupMemoWidth = 250;
  DefaultPopupPictureHeight = 275;
  DefaultPopupPictureWidth = 470;

procedure TfrmBlobEdit.CheckControlStartProperties;
begin
  FMemoValue := '';
  FPictureValue := '';
  BlobEdit.EditValue := '';
  SetBlobEditProperties;
end;

procedure TfrmBlobEdit.CheckPopupMemoSize;
begin
  if (BlobEdit.Properties.PopupHeight = ScaleFactor.Apply(DefaultPopupPictureHeight)) and
    (BlobEdit.Properties.PopupWidth = ScaleFactor.Apply(DefaultPopupPictureWidth)) then
  begin
    BlobEdit.Properties.PopupHeight := ScaleFactor.Apply(DefaultPopupMemoHeight);
    BlobEdit.Properties.PopupWidth := ScaleFactor.Apply(DefaultPopupMemoWidth);
  end;
end;

procedure TfrmBlobEdit.CheckPopupPictureSize;
begin
  if (BlobEdit.Properties.PopupHeight = ScaleFactor.Apply(DefaultPopupMemoHeight)) and
    (BlobEdit.Properties.PopupWidth = ScaleFactor.Apply(DefaultPopupMemoWidth)) then
  begin
    BlobEdit.Properties.PopupHeight := ScaleFactor.Apply(DefaultPopupPictureHeight);
    BlobEdit.Properties.PopupWidth := ScaleFactor.Apply(DefaultPopupPictureWidth);
  end;
end;

procedure TfrmBlobEdit.cmbCharCasePropertiesChange(Sender: TObject);
begin
  SetMemoMode;
end;

procedure TfrmBlobEdit.LoadDefaultMemo;
begin
  BlobEdit.EditValue := sdxBlobEditFrame_MemoValue;
end;

procedure TfrmBlobEdit.LoadDefaultPicture;
var
  AImage: TdxSmartImage;
  AStream: TMemoryStream;
  S: AnsiString;
begin
  AImage := TdxSmartImage.Create;
  try
    AStream := TMemoryStream.Create;
    try
      AImage.LoadFromFile(dmMain.ImagesPath + 'BlobEdit.jpg');
      AImage.SaveToStream(AStream);
      AStream.Position := 0;
      SetLength(S, AStream.Size);
      AStream.ReadBuffer(S[1], AStream.Size);
      BlobEdit.EditValue := S;
    finally
      AStream.Free;
    end;
  finally
    AImage.Free;
  end;
end;

procedure TfrmBlobEdit.rbMemoModeClick(Sender: TObject);
begin
  SetBlobEditProperties;
end;

function TfrmBlobEdit.GetDescription: string;
begin
  Result := sdxFrameBlobEditDescription;
end;

function TfrmBlobEdit.GetInspectedObject: TPersistent;
begin
  Result := BlobEdit;
end;

procedure TfrmBlobEdit.SetBlobEditProperties;
begin
  if rbMemoMode.Checked then
  begin
    FPictureValue := BlobEdit.EditValue;
    BlobEdit.Properties.BlobEditKind := bekMemo;
    if FMemoValue = '' then
      LoadDefaultMemo
    else
      BlobEdit.EditValue := FMemoValue;
    CheckPopupMemoSize;
    SetMemoMode;
  end
  else
  begin
    FMemoValue := BlobEdit.EditValue;
    BlobEdit.Properties.BlobEditKind := bekPict;
    if FPictureValue = '' then
      LoadDefaultPicture
    else
      BlobEdit.EditValue := FPictureValue;
    CheckPopupPictureSize;
  end;
  lgMemoProperties.Enabled := rbMemoMode.Checked;
end;

procedure TfrmBlobEdit.SetMemoMode;
begin
  BlobEdit.Properties.MemoCharCase := TEditCharCase(cmbCharCase.ItemIndex);
  BlobEdit.Properties.MemoScrollBars := TScrollStyle(cmbScrollBars.ItemIndex);
  BlobEdit.Properties.MemoWantReturns := acAcceptReturn.Checked;
  BlobEdit.Properties.MemoWantTabs := acAcceptTab.Checked;
  BlobEdit.Properties.MemoWordWrap := acWordWrap.Checked;
  BlobEdit.Properties.MemoMaxLength := edMaxLength.Value;
end;

initialization
  dxFrameManager.RegisterFrame(BlobEditFrameID, TfrmBlobEdit, BlobEditFrameName, -1,
    EditorsWithDropDownGroupIndex, -1, -1);

end.
