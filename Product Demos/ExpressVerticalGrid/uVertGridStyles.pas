unit uVertGridStyles;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, uVertGridCustomMultiRecords, cxStyles, cxGraphics, cxEdit,
  cxImageComboBox, cxSpinEdit, cxBlobEdit, cxHyperLinkEdit, cxCurrencyEdit,
  cxImage, Vcl.ImgList, cxVGrid, cxDBVGrid, cxControls, cxInplaceContainer,
  Vcl.StdCtrls, Vcl.ExtCtrls, cxLookAndFeelPainters, cxCheckBox, cxButtons, dxMessageDialog,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookAndFeels, Vcl.Menus,
  cxClasses, cxLabel, dxLayoutContainer, dxLayoutControl, dxLayoutcxEditAdapters, dxLayoutControlAdapters,
  dxScrollbarAnnotations, dxLayoutLookAndFeels, cxFilter;

type
  TfrmVertGridStyles = class(TfrmCustomVertGridMultiRecords)
    StyleRepository: TcxStyleRepository;
    dxLayoutItem2: TdxLayoutItem;
    cbStyleSheetList: TcxComboBox;
    dxLayoutEmptySpaceItem1: TdxLayoutEmptySpaceItem;
    dxLayoutItem3: TdxLayoutItem;
    btnNew: TcxButton;
    dxLayoutItem4: TdxLayoutItem;
    btnEdit: TcxButton;
    dxLayoutItem5: TdxLayoutItem;
    btnCopy: TcxButton;
    dxLayoutItem6: TdxLayoutItem;
    btnDelete: TcxButton;
    dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem;
    procedure cbStyleSheetListPropertiesEditValueChanged(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnCopyClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
  private
    function CurrentStyleSheet: TcxCustomStyleSheet;
    procedure CreateStyles;
  protected
    function GetDescription: string; override;
    procedure SetEnabledButtons(Value: Boolean);
  public
    constructor Create(AOwner: TComponent); override;
  end;

implementation

uses
  maindata, dxFrames, FrameIDs, uStrsConst, cxStyleSheetEditor,
  cxStyleSheetsLoad, cxVGridStyleSheetPreview;

{$R *.dfm}

{ TfrmVertGridStyles }

constructor TfrmVertGridStyles.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  CreateStyles;
end;

procedure TfrmVertGridStyles.CreateStyles;
var
  I: Integer;
  AFileName: string;
  AValid: Boolean;
begin
  AFileName := ExtractFilePath(Application.EXEName) + 'verticalgridstyles.ini';
  AValid := FileExists(AFileName);
  if AValid then
  begin
    LoadStyleSheetsFromIniFile(ExtractFilePath(Application.EXEName) + 'verticalgridstyles.ini',
      StyleRepository, TcxVerticalGridStyleSheet);
    for I := 0 to StyleRepository.StyleSheetCount - 1 do
      cbStyleSheetList.Properties.Items.AddObject(StyleRepository.StyleSheets[I].Caption,
          StyleRepository.StyleSheets[I]);
    if StyleRepository.StyleSheetCount > 0 then
      cbStyleSheetList.ItemIndex := 0;
    cbStyleSheetListPropertiesEditValueChanged(nil);
  end;
  SetEnabledButtons(AValid);
end;

function TfrmVertGridStyles.CurrentStyleSheet: TcxCustomStyleSheet;
begin
  if cbStyleSheetList.Properties.Items.Count > 0 then
  begin
    if cbStyleSheetList.ItemIndex < 0 then
      cbStyleSheetList.ItemIndex := 0;
    Result := cbStyleSheetList.Properties.Items.Objects[cbStyleSheetList.ItemIndex] as TcxCustomStyleSheet
  end
  else
  begin
    Result := nil;
    cbStyleSheetList.ItemIndex := -1;
  end;
end;

procedure TfrmVertGridStyles.cbStyleSheetListPropertiesEditValueChanged(
  Sender: TObject);
begin
  VerticalGrid.Styles.StyleSheet := CurrentStyleSheet;
end;

procedure TfrmVertGridStyles.btnNewClick(Sender: TObject);
var
  AStyleSheet: TcxCustomStyleSheet;
begin
  AStyleSheet := StyleRepository.CreateStyleSheet(TcxVerticalGridStyleSheet);
  AStyleSheet.Caption := sdxNewStyleSheet;
  if ShowcxStyleSheetEditor(AStyleSheet, nil) then
  begin
    cbStyleSheetList.Properties.Items.AddObject(AStyleSheet.Caption, AStyleSheet);
    cbStyleSheetList.ItemIndex := cbStyleSheetList.Properties.Items.Count - 1;
    cbStyleSheetListPropertiesEditValueChanged(nil);
    SetEnabledButtons(True);
  end
  else
    AStyleSheet.Free;
end;

procedure TfrmVertGridStyles.btnEditClick(Sender: TObject);
begin
  ShowcxStyleSheetEditor(CurrentStyleSheet, nil)
end;

procedure TfrmVertGridStyles.btnCopyClick(Sender: TObject);
var
  AStyleSheet: TcxCustomStyleSheet;
begin
  AStyleSheet := StyleRepository.CreateStyleSheet(TcxVerticalGridStyleSheet);
  AStyleSheet.Caption := sdxCopyOf + CurrentStyleSheet.Caption;
  AStyleSheet.CopyFrom(CurrentStyleSheet);
  if ShowcxStyleSheetEditor(AStyleSheet, nil) then
  begin
    cbStyleSheetList.Properties.Items.AddObject(AStyleSheet.Caption, AStyleSheet);
    cbStyleSheetList.ItemIndex := cbStyleSheetList.Properties.Items.Count - 1;
    cbStyleSheetListPropertiesEditValueChanged(nil);
  end else  AStyleSheet.Free;
end;

procedure TfrmVertGridStyles.btnDeleteClick(Sender: TObject);
var
  AStyleSheet: TcxCustomStyleSheet;
begin
  AStyleSheet := CurrentStyleSheet;
  if AStyleSheet <> nil then
  begin
    if dxMessageDlg(Format(sdxDeletePresentationStyle, [AStyleSheet.Caption]), mtConfirmation, mbYesNo) = mrYes then
    begin
      cbStyleSheetList.Properties.Items.Delete(
        cbStyleSheetList.Properties.Items.IndexOfObject(AStyleSheet));
      AStyleSheet.Free;
      cbStyleSheetListPropertiesEditValueChanged(nil);
      SetEnabledButtons(cbStyleSheetList.Properties.Items.Count > 0);
    end;
  end;
end;

function TfrmVertGridStyles.GetDescription: string;
begin
  Result := sdxFrameVertGridStylesDescription;
end;

procedure TfrmVertGridStyles.SetEnabledButtons(Value: Boolean);
begin
  btnEdit.Enabled := Value;
  btnDelete.Enabled := Value;
  btnCopy.Enabled := Value;
end;

initialization
  //dxFrameManager.RegisterFrame(VerticalGridStylesFrameID, TfrmVertGridStyles,
  //  VerticalGridStylesName, VerticalGridStylesImageIndex, -1, OutdatedGroupIndex);

end.
