unit uValidation;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Forms, Vcl.Controls,
  Vcl.Dialogs, dxFrameCustomControl, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, Vcl.Menus, Vcl.StdCtrls, cxButtons, dxToggleSwitch, cxCheckBox, cxTextEdit,
  cxSpinEdit, cxLabel, cxMaskEdit, cxDropDownEdit, dxLayoutContainer, Vcl.ExtCtrls, Vcl.ActnList, cxClasses, dxLayoutControl,
  Main, dxScreenTip, Vcl.ImgList, dxMessageDialog, cxImageList, dxCustomHint, cxHint, cxRegExpr, dxUIAdorners;

type
  TfrmValidation = class(TfrmCustomControl)
    dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem;
    dxLayoutItem2: TdxLayoutItem;
    cbValidationRaiseException: TcxCheckBox;
    dxLayoutItem3: TdxLayoutItem;
    cbValidationShowErrorIcons: TcxCheckBox;
    dxLayoutItem4: TdxLayoutItem;
    cbValidationAllowLoseFocus: TcxCheckBox;
    dxLayoutItem5: TdxLayoutItem;
    tgsErrorIconPosition: TdxToggleSwitch;
    dxLayoutItem6: TdxLayoutItem;
    btValidate: TcxButton;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutItem7: TdxLayoutItem;
    edNotEmpty: TcxTextEdit;
    dxLayoutItem8: TdxLayoutItem;
    cxSpinEdit: TcxSpinEdit;
    dxLayoutItem9: TdxLayoutItem;
    edEMail: TcxTextEdit;
    dxLayoutItem10: TdxLayoutItem;
    cbAddress: TcxComboBox;
    dxLayoutItem11: TdxLayoutItem;
    edPerson: TcxTextEdit;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutEmptySpaceItem3: TdxLayoutEmptySpaceItem;
    cxHintStyleController: TcxHintStyleController;
    dxScreenTipRepository: TdxScreenTipRepository;
    stError: TdxScreenTip;
    stWarning: TdxScreenTip;
    stInfo: TdxScreenTip;
    stCustom: TdxScreenTip;
    acValidationRaiseException: TAction;
    acValidationShowErrorIcons: TAction;
    acValidationAllowLoseFocus: TAction;
    amValidation: TdxUIAdornerManager;
    bdgNotEmpty: TdxBadge;
    bdgSpinEdit: TdxBadge;
    bdgEMail: TdxBadge;
    bdgAddress: TdxBadge;
    bdgPerson: TdxBadge;
    cbShowBadges: TcxCheckBox;
    dxLayoutItem1: TdxLayoutItem;
    acValidationShowBadges: TAction;
    CustomIconList: TcxImageList;
    procedure edNotEmptyPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure cxSpinEditPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure edEMailPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure cbAddressPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure edPersonPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure cxHintStyleControllerShowHintEx(Sender: TObject; var Caption, HintStr: string; var CanShow: Boolean;
      var HintInfo: THintInfo);
    procedure acValidationRaiseExceptionExecute(Sender: TObject);
    procedure dxToggleSwitch1PropertiesChange(Sender: TObject);
    procedure btValidateClick(Sender: TObject);
    procedure acValidationShowBadgesExecute(Sender: TObject);
    procedure acValidationShowErrorIconsExecute(Sender: TObject);
    procedure amValidationAdornerClick(AManager: TdxUIAdornerManager; AAdorner: TdxCustomAdorner);
  private
    function GetValidationDlgType(AAdorner: TdxCustomAdorner): TMsgDlgType;
    function GetValidationMessage(AAdorner: TdxCustomAdorner): string;
    procedure InitializeEditors;
    procedure ShowValidationInfo(AAdorner: TdxCustomAdorner);
    procedure Validation;
  protected
    procedure CheckControlStartProperties; override;
    function GetDescription: string; override;
  end;

var
  frmValidation: TfrmValidation;

implementation

uses
  System.UITypes, uStrsConst, dxFrames, FrameIDs, dxGDIPlusClasses;

{$R *.dfm}

const
  cxNotEmptyErrorText = 'Please enter a value';
  cxSpinEditErrorText = 'Please enter a value between 1 and 100';
  cxEMailErrorText = 'Please enter a valid email address';
  cxAddressErrorText = 'Please select an address from the list';
  cxPersonErrorText = 'Please enter a valid person name';

procedure TfrmValidation.CheckControlStartProperties;
begin
  InitializeEditors;
  Validation;
end;

function TfrmValidation.GetDescription: string;
begin
  Result := sdxFrameValidationDemoDescription;
end;

procedure TfrmValidation.edNotEmptyPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  Error := VarToStr(DisplayValue) = '';
  ErrorText := cxNotEmptyErrorText;
  bdgNotEmpty.Visible := Error;
end;

procedure TfrmValidation.cxHintStyleControllerShowHintEx(Sender: TObject; var Caption, HintStr: string;
  var CanShow: Boolean; var HintInfo: THintInfo);
begin
  CanShow := HintInfo.HintStr > ' ';
end;

procedure TfrmValidation.cxSpinEditPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
var
  AValue: Integer;
begin
  AValue := StrToIntDef(VarToStr(DisplayValue), 0);
  Error := (AValue < 1) or (AValue > 100);
  ErrorText := cxSpinEditErrorText;
  bdgSpinEdit.Visible := Error;
end;

procedure TfrmValidation.edEMailPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  Error := Pos('@', VarToStr(DisplayValue)) = 0;
  ErrorText := cxEMailErrorText;
  bdgEMail.Visible := Error;
end;

procedure TfrmValidation.cbAddressPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  Error := cbAddress.ItemIndex < 0;
  ErrorText := cxAddressErrorText;
  bdgAddress.Visible := Error;
end;

procedure TfrmValidation.edPersonPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  Error := (VarToStr(DisplayValue) = '') or not IsTextValid(VarToStr(DisplayValue), '(Dr\. | Mr\. | Mrs\. | Miss | Ms\.) '' '' .+');
  ErrorText := cxPersonErrorText;
  bdgPerson.Visible := Error;
end;

procedure TfrmValidation.acValidationRaiseExceptionExecute(Sender: TObject);
begin
  InitializeEditors;
end;

procedure TfrmValidation.dxToggleSwitch1PropertiesChange(Sender: TObject);
const
  AAlignment: array[Boolean] of TLeftRight = (taLeftJustify, taRightJustify);
begin
  cbAddress.Properties.ValidationErrorIconAlignment := AAlignment[tgsErrorIconPosition.Checked];
  cxSpinEdit.Properties.ValidationErrorIconAlignment := AAlignment[tgsErrorIconPosition.Checked];
  edEMail.Properties.ValidationErrorIconAlignment := AAlignment[tgsErrorIconPosition.Checked];
  edNotEmpty.Properties.ValidationErrorIconAlignment := AAlignment[tgsErrorIconPosition.Checked];
  edPerson.Properties.ValidationErrorIconAlignment := AAlignment[tgsErrorIconPosition.Checked];
end;

procedure TfrmValidation.acValidationShowBadgesExecute(Sender: TObject);
begin
  acValidationShowErrorIcons.Checked := acValidationShowErrorIcons.Checked and not acValidationShowBadges.Checked;
  InitializeEditors;
end;

procedure TfrmValidation.acValidationShowErrorIconsExecute(Sender: TObject);
begin
  acValidationShowBadges.Checked := acValidationShowBadges.Checked and not acValidationShowErrorIcons.Checked;
  InitializeEditors;
end;

procedure TfrmValidation.amValidationAdornerClick(AManager: TdxUIAdornerManager; AAdorner: TdxCustomAdorner);
begin
  ShowValidationInfo(AAdorner);
end;

procedure TfrmValidation.btValidateClick(Sender: TObject);
begin
  Validation;
end;

function TfrmValidation.GetValidationDlgType(AAdorner: TdxCustomAdorner): TMsgDlgType;
begin
  case AAdorner.Tag of
    1, 2:
      Result := mtError;
    3, 5:
      Result := mtWarning;
    else
      Result := mtInformation;
  end;
end;

function TfrmValidation.GetValidationMessage(AAdorner: TdxCustomAdorner): string;
begin
  case AAdorner.Tag of
    1:
      Result := cxNotEmptyErrorText;
    2:
      Result := cxSpinEditErrorText;
    3:
      Result := cxEMailErrorText;
    4:
      Result := cxAddressErrorText;
    else
      Result := cxPersonErrorText;
  end;
end;

procedure TfrmValidation.InitializeEditors;
var
  AGlyph: TdxSmartImage;
  AValidationOptions: TcxEditValidationOptions;
begin
  bdgNotEmpty.Background.Glyph.Assign(cxEditErrorIcon);
  edEMail.Properties.ErrorIcon.Assign(cxEditWarningIcon);
  bdgEMail.Background.Glyph.Assign(cxEditWarningIcon);
  cbAddress.Properties.ErrorIcon.Assign(cxEditInfoIcon);
  bdgAddress.Background.Glyph.Assign(cxEditInfoIcon);

  AGlyph := TdxSmartImage.Create;
  try
    CustomIconList.GetImage(0, AGlyph);
    edPerson.Properties.ErrorIcon.Assign(AGlyph);
  finally
    AGlyph.Free;
  end;

  AValidationOptions := [];
  if acValidationRaiseException.Checked then
    Include(AValidationOptions, evoRaiseException);
  if acValidationShowErrorIcons.Checked then
    Include(AValidationOptions, evoShowErrorIcon);
  if acValidationAllowLoseFocus.Checked then
    Include(AValidationOptions, evoAllowLoseFocus);

  cbAddress.Properties.ValidationOptions := AValidationOptions;
  cxSpinEdit.Properties.ValidationOptions := AValidationOptions;
  edEMail.Properties.ValidationOptions := AValidationOptions;
  edNotEmpty.Properties.ValidationOptions := AValidationOptions;
  edPerson.Properties.ValidationOptions := AValidationOptions;

  amValidation.Badges.Active := acValidationShowBadges.Checked;
end;

procedure TfrmValidation.ShowValidationInfo(AAdorner: TdxCustomAdorner);
begin
  dxMessageDlg(GetValidationMessage(AAdorner), GetValidationDlgType(AAdorner), [mbOK]);
end;

procedure TfrmValidation.Validation;
begin
  edNotEmpty.ValidateEdit;
  cxSpinEdit.ValidateEdit;
  edEMail.ValidateEdit;
  cbAddress.ValidateEdit;
  edPerson.ValidateEdit;
end;

initialization
  dxFrameManager.RegisterFrame(ValidationDemoFrameID, TfrmValidation, ValidationDemoFrameName, -1,
    MultiPurposeGroupIndex, -1, -1);

end.
