unit uVertGridInplaceEditorsValidation;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Forms, Vcl.Controls,
  Vcl.Dialogs, dxVertGridFrame, Vcl.StdCtrls, Vcl.ExtCtrls, cxStyles, cxGraphics,
  cxEdit, cxControls, cxInplaceContainer, cxVGrid,
  cxExtEditRepositoryItems, cxShellEditRepositoryItems,
  cxEditRepositoryItems, cxDBEditRepository, PropertiesPopup,
  cxLookAndFeels, cxLookAndFeelPainters, cxClasses, cxTextEdit, cxDropDownEdit, dxSkinsCore, dxSkinDevExpressStyle,
  dxScreenTip, dxCustomHint, cxHint, cxDBVGrid, Data.DB, dxmdaset, cxContainer, cxLabel, cxCheckBox, cxGroupBox,
  dxLayoutContainer, dxLayoutControl, dxLayoutcxEditAdapters, Vcl.ActnList, dxScrollbarAnnotations, System.Actions,
  dxLayoutLookAndFeels, cxFilter, dxGDIPlusClasses;

type
  TfrmVertGridInplaceEditorsValidation = class(TVerticalGridFrame)
    dxScreenTipRepository: TdxScreenTipRepository;
    stGrid: TdxScreenTip;
    cxHintStyleController: TcxHintStyleController;
    icCustomIconList: TcxImageCollection;
    icCustomIcon1: TcxImageCollectionItem;
    dxMemData1: TdxMemData;
    dxMemData1FirstName: TStringField;
    dxMemData1LastName: TStringField;
    dxMemData1Address: TStringField;
    dxMemData1PhoneNumber: TStringField;
    dxMemData1Email: TStringField;
    DataSource: TDataSource;
    dxLayoutItem1: TdxLayoutItem;
    VerticalGrid: TcxDBVerticalGrid;
    VerticalGridFirstName: TcxDBEditorRow;
    VerticalGridLastName: TcxDBEditorRow;
    VerticalGridAddress: TcxDBEditorRow;
    VerticalGridPhoneNumber: TcxDBEditorRow;
    VerticalGridEmail: TcxDBEditorRow;
    ActionList1: TActionList;
    acValidationRaiseException: TAction;
    acValidationShowErrorIcons: TAction;
    acValidationAllowLoseFocus: TAction;
    cbValidationRaiseException: TdxLayoutCheckBoxItem;
    cbValidationShowErrorIcons: TdxLayoutCheckBoxItem;
    cbValidationAllowLoseFocus: TdxLayoutCheckBoxItem;
    procedure cxHintStyleControllerShowHintEx(Sender: TObject; var Caption, HintStr: string; var CanShow: Boolean;
      var HintInfo: THintInfo);
    procedure VerticalGridFirstNamePropertiesValidateDrawValue(Sender: TcxCustomEditorRowProperties;
      ARecordIndex: Integer; const AValue: Variant; AData: TcxEditValidateInfo);
    procedure VerticalGridFirstNameEditPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
      var ErrorText: TCaption; var Error: Boolean);
    procedure VerticalGridLastNamePropertiesValidateDrawValue(Sender: TcxCustomEditorRowProperties;
      ARecordIndex: Integer; const AValue: Variant; AData: TcxEditValidateInfo);
    procedure VerticalGridLastNameEditPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
      var ErrorText: TCaption; var Error: Boolean);
    procedure VerticalGridAddressPropertiesValidateDrawValue(Sender: TcxCustomEditorRowProperties;
      ARecordIndex: Integer; const AValue: Variant; AData: TcxEditValidateInfo);
    procedure VerticalGridAddressEditPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
      var ErrorText: TCaption; var Error: Boolean);
    procedure VerticalGridPhoneNumberPropertiesValidateDrawValue(Sender: TcxCustomEditorRowProperties;
      ARecordIndex: Integer; const AValue: Variant; AData: TcxEditValidateInfo);
    procedure VerticalGridPhoneNumberEditPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
      var ErrorText: TCaption; var Error: Boolean);
    procedure VerticalGridEmailPropertiesValidateDrawValue(Sender: TcxCustomEditorRowProperties; ARecordIndex: Integer;
      const AValue: Variant; AData: TcxEditValidateInfo);
    procedure VerticalGridEmailEditPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
      var ErrorText: TCaption; var Error: Boolean);
  private
    function DoAddressValidate(const AValue: Variant; var AErrorText: TCaption): Boolean;
    function DoEmailValidate(const AValue: Variant; var AErrorText: TCaption): Boolean;
    function DoFirstNameValidate(const AValue: Variant; var AErrorText: TCaption): Boolean;
    function DoLastNameValidate(const AValue: Variant; var AErrorText: TCaption): Boolean;
    function DoPhoneNumberValidate(const AValue: Variant; var AErrorText: TCaption): Boolean;
    function GetPersonFullName(AEditorRowProperties: TcxCustomEditorRowProperties; ARecordIndex: Integer): string;
  protected
    function GetDescription: string; override;
  public
    constructor Create(AOwner: TComponent); override;
  published
    procedure InitializeEditors(Sender: TObject);
  end;

implementation

uses
  maindata, dxFrames, FrameIDs, uStrsConst, cxRegExpr;

{$R *.dfm}

{ TfrmVertGridInplaceEditorsValidation }

constructor TfrmVertGridInplaceEditorsValidation.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  InitializeEditors(Self);
end;

procedure TfrmVertGridInplaceEditorsValidation.cxHintStyleControllerShowHintEx(Sender: TObject; var Caption,
  HintStr: string; var CanShow: Boolean; var HintInfo: THintInfo);
begin
  stGrid.Header.Glyph.Assign(nil);
  if acValidationShowErrorIcons.Checked and (TObject(HintInfo.HintData) is TcxRowValueInfo) then
    case TcxRowValueInfo(HintInfo.HintData).EditViewInfo.ErrorData.ErrorType of
      eetError:
        stGrid.Header.Glyph.Assign(cxEditErrorIcon);
      eetWarning:
        stGrid.Header.Glyph.Assign(cxEditWarningIcon);
      eetInfo:
        stGrid.Header.Glyph.Assign(cxEditInfoIcon);
      eetCustom:
        stGrid.Header.Glyph.Assign(icCustomIcon1.Picture.Bitmap);
    end;
end;

procedure TfrmVertGridInplaceEditorsValidation.InitializeEditors(Sender: TObject);
var
  AValidationOptions: TcxEditValidationOptions;
begin
  AValidationOptions := [];
  if acValidationRaiseException.Checked then
    Include(AValidationOptions, evoRaiseException);
  if acValidationShowErrorIcons.Checked then
    Include(AValidationOptions, evoShowErrorIcon);
  if acValidationAllowLoseFocus.Checked then
    Include(AValidationOptions, evoAllowLoseFocus);

  VerticalGridFirstName.Properties.EditProperties.ValidationOptions := AValidationOptions;
  VerticalGridLastName.Properties.EditProperties.ValidationOptions := AValidationOptions;
  VerticalGridAddress.Properties.EditProperties.ValidationOptions := AValidationOptions;
  VerticalGridPhoneNumber.Properties.EditProperties.ValidationOptions := AValidationOptions;
  VerticalGridEmail.Properties.EditProperties.ValidationOptions := AValidationOptions;
end;

procedure TfrmVertGridInplaceEditorsValidation.VerticalGridAddressEditPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  Error := DoAddressValidate(DisplayValue, ErrorText);
end;

procedure TfrmVertGridInplaceEditorsValidation.VerticalGridAddressPropertiesValidateDrawValue(
  Sender: TcxCustomEditorRowProperties; ARecordIndex: Integer; const AValue: Variant; AData: TcxEditValidateInfo);
var
  AErrorText: TCaption;
begin
  if DoAddressValidate(AValue, AErrorText) then
  begin
    AData.ErrorType := eetInfo;
    AData.ErrorText := AErrorText;
  end;
end;

procedure TfrmVertGridInplaceEditorsValidation.VerticalGridEmailEditPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  Error := DoEmailValidate(DisplayValue, ErrorText);
end;

procedure TfrmVertGridInplaceEditorsValidation.VerticalGridEmailPropertiesValidateDrawValue(
  Sender: TcxCustomEditorRowProperties; ARecordIndex: Integer; const AValue: Variant; AData: TcxEditValidateInfo);
var
  AErrorText: TCaption;
begin
  if DoEmailValidate(AValue, AErrorText) then
  begin
    AData.ErrorType := eetCustom;
    AData.ErrorIcon.Assign(icCustomIcon1.Picture.Graphic);
    AData.ErrorText := AErrorText;
  end;
end;

procedure TfrmVertGridInplaceEditorsValidation.VerticalGridFirstNameEditPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  Error := DoFirstNameValidate(DisplayValue, ErrorText);
end;

procedure TfrmVertGridInplaceEditorsValidation.VerticalGridFirstNamePropertiesValidateDrawValue(
  Sender: TcxCustomEditorRowProperties; ARecordIndex: Integer; const AValue: Variant; AData: TcxEditValidateInfo);
var
  AErrorText: TCaption;
begin
  if DoFirstNameValidate(AValue, AErrorText) then
  begin
    AData.ErrorType := eetError;
    AData.ErrorText := AErrorText;
  end;
end;

procedure TfrmVertGridInplaceEditorsValidation.VerticalGridLastNameEditPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  Error := DoLastNameValidate(DisplayValue, ErrorText);
end;

procedure TfrmVertGridInplaceEditorsValidation.VerticalGridLastNamePropertiesValidateDrawValue(
  Sender: TcxCustomEditorRowProperties; ARecordIndex: Integer; const AValue: Variant; AData: TcxEditValidateInfo);
var
  AErrorText: TCaption;
begin
  if DoLastNameValidate(AValue, AErrorText) then
  begin
    AData.ErrorType := eetError;
    AData.ErrorText := AErrorText;
  end;
end;

procedure TfrmVertGridInplaceEditorsValidation.VerticalGridPhoneNumberEditPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  Error := DoPhoneNumberValidate(DisplayValue, ErrorText);
end;

procedure TfrmVertGridInplaceEditorsValidation.VerticalGridPhoneNumberPropertiesValidateDrawValue(
  Sender: TcxCustomEditorRowProperties; ARecordIndex: Integer; const AValue: Variant; AData: TcxEditValidateInfo);
var
  AFullName: string;
  AErrorText: TCaption;
begin
  if DoPhoneNumberValidate(AValue, AErrorText) then
  begin
    AData.ErrorType := eetWarning;
    AFullName := GetPersonFullName(Sender, ARecordIndex);
    if Trim(AFullName) > '' then
      AData.ErrorText := AErrorText + ' for ' + AFullName
    else
      AData.ErrorText := AErrorText;
  end;
end;

function TfrmVertGridInplaceEditorsValidation.GetDescription: string;
begin
  Result := sdxFrameVerticalGridInplaceEditorsValidation;
end;

function TfrmVertGridInplaceEditorsValidation.DoAddressValidate(const AValue: Variant;
  var AErrorText: TCaption): Boolean;
begin
  Result := (VerticalGridAddress.Properties.EditProperties as TcxComboBoxProperties).Items.IndexOf(VarToStr(AValue)) = -1;
  if Result then
    AErrorText := 'Please select an address from the list';
end;

function TfrmVertGridInplaceEditorsValidation.DoEmailValidate(const AValue: Variant; var AErrorText: TCaption): Boolean;
var
  S: string;
begin
  S := VarToStr(AValue);
  Result := (S <> '') and not IsTextFullValid(S, '[A-z0-9_-]+@[A-z0-9_-]+\.[A-z0-9_-]+(\.[A-z]+)*');
  if Result then
    AErrorText := 'Please enter a valid email address';
end;

function TfrmVertGridInplaceEditorsValidation.DoFirstNameValidate(const AValue: Variant;
  var AErrorText: TCaption): Boolean;
begin
  Result := VarToStr(AValue) = '';
  if Result then
    AErrorText := 'Please enter a value';
end;

function TfrmVertGridInplaceEditorsValidation.DoLastNameValidate(const AValue: Variant;
  var AErrorText: TCaption): Boolean;
begin
  Result := VarToStr(AValue) = '';
  if Result then
    AErrorText := 'Please enter a value';
end;

function TfrmVertGridInplaceEditorsValidation.DoPhoneNumberValidate(const AValue: Variant;
  var AErrorText: TCaption): Boolean;
var
  S: string;
begin
  S := VarToStr(AValue);
  Result := (S = '') or not IsTextValid(S, '(\(\d\d\d\)'' '')?\d\d\d-\d\d\d\d');
  if Result then
    AErrorText := 'Please enter a valid phone number';
end;

function TfrmVertGridInplaceEditorsValidation.GetPersonFullName(AEditorRowProperties: TcxCustomEditorRowProperties;
  ARecordIndex: Integer): string;
var
  AFirstName, ALastName: string;
begin
  AFirstName := VarToStr(VerticalGridFirstName.Properties.Values[ARecordIndex]);
  ALastName := VarToStr(VerticalGridLastName.Properties.Values[ARecordIndex]);
  if (Trim(AFirstName) > '') and (Trim(ALastName) > '') then
    Result := Format('%s %s', [AFirstName, ALastName])
  else
    Result := AFirstName + ALastName;
end;

initialization
  dxFrameManager.RegisterFrame(VerticalGridInplaceEditorsValidationFrameID, TfrmVertGridInplaceEditorsValidation,
    VerticalGridInplaceEditorsValidationName, VerticalGridInplaceEditorsValidationImageIndex,
    -1, VerticalGridSideBarGroupIndex);


end.
