unit uTokenEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxFrameCustomControl, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, cxCheckBox, cxCheckComboBox, cxLabel, cxSpinEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  dxLayoutContainer, dxTokenEdit, Vcl.ActnList, cxClasses, dxMessageDialog, dxLayoutControl, Vcl.ImgList, cxImageList, Main,
  System.ImageList, System.Actions, dxUIAdorners;

type
  TfrmTokenEdit = class(TfrmCustomControl)
    dxLayoutItem1: TdxLayoutItem;
    dxTokenEdit: TdxTokenEdit;
    lliTokenValue: TdxLayoutLabeledItem;
    dxLayoutItem2: TdxLayoutItem;
    cbCloseGlyphPosition: TcxComboBox;
    dxLayoutEmptySpaceItem5: TdxLayoutEmptySpaceItem;
    dxLayoutItem3: TdxLayoutItem;
    cbGlyphPosition: TcxComboBox;
    dxLayoutItem4: TdxLayoutItem;
    teEditValueDelimiter: TcxTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    teInputDelimiters: TcxTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    seMaxLineCount: TcxSpinEdit;
    dxLayoutItem7: TdxLayoutItem;
    cbReadOnly: TcxCheckBox;
    dxLayoutItem8: TdxLayoutItem;
    cbAllowCustomTokens: TcxCheckBox;
    dxLayoutItem9: TdxLayoutItem;
    cbConfirmTokenDeletion: TcxCheckBox;
    cbLookupSorted: TcxCheckBox;
    seLookupDropDownRows: TcxSpinEdit;
    cbLookupFilterMode: TcxComboBox;
    chcbLookupFilterSources: TcxCheckComboBox;
    dxLayoutEmptySpaceItem6: TdxLayoutEmptySpaceItem;
    ilSmall: TcxImageList;
    acReadOnly: TAction;
    acAllowCustomTokens: TAction;
    acConfirmTokenDeletion: TAction;
    cbDisplayMask: TcxComboBox;
    cbPostOnFocusLeave: TcxCheckBox;
    dxLayoutItem11: TdxLayoutItem;
    acPostOnFocusLeave: TAction;
    chgbLookup: TdxLayoutGroup;
    liseLookupDropDownRows: TdxLayoutItem;
    licbLookupFilterMode: TdxLayoutItem;
    liLookupFilterSources: TdxLayoutItem;
    licbDisplayMask: TdxLayoutItem;
    licbLookupSorted: TdxLayoutItem;
    procedure dxTokenEditPropertiesEditValueChanged(Sender: TObject);
    procedure dxTokenEditPropertiesTokenClick(Sender: TObject; const ATokenText: string; AToken: TdxTokenEditToken);
    procedure dxTokenEditPropertiesTokenDelete(Sender: TObject; const ATokenText: string; AToken: TdxTokenEditToken;
      var AAllow: Boolean);
    procedure dxTokenEditPropertiesTokenGlyphClick(Sender: TObject; const ATokenText: string;
      AToken: TdxTokenEditToken);
    procedure dxTokenEditPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure cbCloseGlyphPositionPropertiesEditValueChanged(Sender: TObject);
    procedure cbGlyphPositionPropertiesEditValueChanged(Sender: TObject);
    procedure teEditValueDelimiterPropertiesEditValueChanged(Sender: TObject);
    procedure teInputDelimitersPropertiesEditValueChanged(Sender: TObject);
    procedure seMaxLineCountPropertiesChange(Sender: TObject);
    procedure chgbLookupPropertiesEditValueChanged(Sender: TObject);
    procedure seLookupDropDownRowsPropertiesChange(Sender: TObject);
    procedure cbLookupFilterModePropertiesEditValueChanged(Sender: TObject);
    procedure chcbLookupFilterSourcesPropertiesEditValueChanged(Sender: TObject);
    procedure acReadOnlyExecute(Sender: TObject);
    procedure acAllowCustomTokensExecute(Sender: TObject);
    procedure cbLookupSortedPropertiesChange(Sender: TObject);
    procedure cbDisplayMaskPropertiesEditValueChanged(Sender: TObject);
    procedure acPostOnFocusLeaveExecute(Sender: TObject);
  protected
    procedure CheckControlStartProperties; override;
    function GetDescription: string; override;
    function GetInspectedObject: TPersistent; override;
  end;

implementation

uses
  System.UITypes, uStrsConst, dxFrames, FrameIDs, dxStringHelper;

{$R *.dfm}

procedure TfrmTokenEdit.CheckControlStartProperties;
begin
  dxTokenEditPropertiesEditValueChanged(dxTokenEdit);
end;

function TfrmTokenEdit.GetDescription: string;
begin
  Result := sdxFrameTokenEditDescription;
end;

function TfrmTokenEdit.GetInspectedObject: TPersistent;
begin
  Result := dxTokenEdit;
end;

procedure TfrmTokenEdit.cbCloseGlyphPositionPropertiesEditValueChanged(Sender: TObject);
begin
  dxTokenEdit.Properties.CloseGlyphPosition := TdxTokenEditElementPosition(cbCloseGlyphPosition.ItemIndex);
end;

procedure TfrmTokenEdit.cbDisplayMaskPropertiesEditValueChanged(Sender: TObject);
begin
  dxTokenEdit.Properties.Lookup.DisplayMask := cbDisplayMask.Text;
  if cbDisplayMask.Properties.Items.IndexOf(cbDisplayMask.Text) = -1 then
    cbDisplayMask.Properties.Items.Add(cbDisplayMask.Text);
end;

procedure TfrmTokenEdit.cbGlyphPositionPropertiesEditValueChanged(Sender: TObject);
begin
  dxTokenEdit.Properties.GlyphPosition := TdxTokenEditElementPosition(cbGlyphPosition.ItemIndex);
end;

procedure TfrmTokenEdit.cbLookupFilterModePropertiesEditValueChanged(Sender: TObject);
begin
  dxTokenEdit.Properties.Lookup.FilterMode := TdxTokenEditLookupFilterMode(cbLookupFilterMode.ItemIndex);
end;

procedure TfrmTokenEdit.acAllowCustomTokensExecute(Sender: TObject);
begin
  dxTokenEdit.Properties.AllowAddCustomTokens := acAllowCustomTokens.Checked;
  dxTokenEdit.ValidateEdit;
end;

procedure TfrmTokenEdit.cbLookupSortedPropertiesChange(Sender: TObject);
begin
  dxTokenEdit.Properties.Lookup.Sorted := cbLookupSorted.Checked;
end;

procedure TfrmTokenEdit.acPostOnFocusLeaveExecute(Sender: TObject);
begin
  dxTokenEdit.Properties.PostEditValueOnFocusLeave := acPostOnFocusLeave.Checked;
end;

procedure TfrmTokenEdit.acReadOnlyExecute(Sender: TObject);
begin
  dxTokenEdit.Properties.ReadOnly := acReadOnly.Checked;
end;

procedure TfrmTokenEdit.chcbLookupFilterSourcesPropertiesEditValueChanged(Sender: TObject);
var
  AFilterSources: TdxTokenEditLookupFilterSources;
begin
  AFilterSources := [];
  if chcbLookupFilterSources.States[0] = cbsChecked then
    Include(AFilterSources, tefsText);
  if chcbLookupFilterSources.States[1] = cbsChecked then
    Include(AFilterSources, tefsDisplayText);
  dxTokenEdit.Properties.Lookup.FilterSources := AFilterSources;
end;

procedure TfrmTokenEdit.chgbLookupPropertiesEditValueChanged(Sender: TObject);
begin
  dxTokenEdit.Properties.Lookup.Active := chgbLookup.ButtonOptions.CheckBox.Checked;
end;

procedure TfrmTokenEdit.dxTokenEditPropertiesEditValueChanged(Sender: TObject);
var
  ACaption: string;
begin
  ACaption := 'Edit Value: ';
  if dxTokenEdit.Text <> '' then
    ACaption := ACaption + TdxStringHelper.Replace(dxTokenEdit.Text, teEditValueDelimiter.Text,
      teEditValueDelimiter.Text + ' ')
  else
    ACaption := ACaption + '(empty)';
  lliTokenValue.Caption := ACaption;
end;

procedure TfrmTokenEdit.dxTokenEditPropertiesTokenClick(Sender: TObject; const ATokenText: string;
  AToken: TdxTokenEditToken);
begin
  dxMessageDlg('Clicked token: ' + ATokenText, TMsgDlgType.mtInformation, [mbOK]);
end;

procedure TfrmTokenEdit.dxTokenEditPropertiesTokenDelete(Sender: TObject; const ATokenText: string;
  AToken: TdxTokenEditToken; var AAllow: Boolean);
begin
  AAllow := not acConfirmTokenDeletion.Checked or
    (dxMessageDlg('Do you want to delete token: ' + ATokenText + '?', mtConfirmation, mbYesNo) = mrYes);
end;

procedure TfrmTokenEdit.dxTokenEditPropertiesTokenGlyphClick(Sender: TObject; const ATokenText: string;
  AToken: TdxTokenEditToken);
begin
  dxMessageDlg('Clicked glyph of token: ' + ATokenText, TMsgDlgType.mtInformation, [mbOK]);
end;

procedure TfrmTokenEdit.dxTokenEditPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
var
  AError: Boolean;
begin
  AError := (VarToStr(DisplayValue) <> '') and not acAllowCustomTokens.Checked and
    (dxTokenEdit.Properties.Tokens.FindByText(DisplayValue) = nil);
  Error := Error or AError;
  if AError then
  begin
    if ErrorText <> '' then
      ErrorText := ErrorText + #13#10;
    ErrorText := ErrorText + 'Custom tokens are not allowed: ' + DisplayValue;
  end;
end;

procedure TfrmTokenEdit.seLookupDropDownRowsPropertiesChange(Sender: TObject);
begin
  if (seLookupDropDownRows.Value <> Null) and (seLookupDropDownRows.Value >= 0) then
    dxTokenEdit.Properties.Lookup.DropDownRows := seLookupDropDownRows.Value
  else
    seLookupDropDownRows.Value := 0;
end;

procedure TfrmTokenEdit.seMaxLineCountPropertiesChange(Sender: TObject);
begin
  if (seMaxLineCount.Value <> Null) and (seMaxLineCount.Value >= 0) then
    dxTokenEdit.Properties.MaxLineCount := seMaxLineCount.Value
  else
    seMaxLineCount.Value := 0;
end;

procedure TfrmTokenEdit.teEditValueDelimiterPropertiesEditValueChanged(Sender: TObject);
begin
  if teEditValueDelimiter.Text <> '' then
    dxTokenEdit.Properties.EditValueDelimiter := teEditValueDelimiter.Text[1]
  else
    teEditValueDelimiter.Text := dxTokenEditDefaultEditValueDelimiter;
  dxTokenEdit.ValidateEdit;
end;

procedure TfrmTokenEdit.teInputDelimitersPropertiesEditValueChanged(Sender: TObject);
begin
  if teInputDelimiters.Text <> '' then
    dxTokenEdit.Properties.InputDelimiters := teInputDelimiters.Text
  else
    teInputDelimiters.Text := dxTokenEditDefaultInputDelimiters;
end;

initialization
  dxFrameManager.RegisterFrame(TokenEditFrameID, TfrmTokenEdit, TokenEditFrameName, -1,
    EditorsWithTextBoxesGroupIndex, -1, -1);

end.
