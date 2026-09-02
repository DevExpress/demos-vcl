unit uSaveDialog;

{$I cxVer.inc}

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  dxCore, dxX509Certificate, cxTextEdit, Vcl.StdCtrls, cxControls, cxContainer, cxEdit, cxLabel, cxClasses,
  cxLookAndFeelPainters, cxGroupBox, cxPC, cxCheckBox, cxButtons, cxGraphics, cxMaskEdit,
  cxDropDownEdit, cxLookAndFeels, dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxLayoutLookAndFeels,
  dxLayoutContainer, dxLayoutControl, cxCustomListBox, cxMCListBox, Vcl.ComCtrls, cxListView,
  Vcl.Menus, dxForms, dxPDFDocument, dxPDFSignature, dxShellDialogs;

type
  { TfrmSaveDialogForm }

  TfrmSaveDialogForm = class(TdxForm)
    btnCancel: TcxButton;
    btnOk: TcxButton;
    edUserPassword: TcxTextEdit;
    edOwnerPassword: TcxTextEdit;
    cbxMethod: TcxComboBox;
    lcMainGroup_Root: TdxLayoutGroup;
    lcMain: TdxLayoutControl;
    dxLayoutGroup2: TdxLayoutGroup;
    tbsSecurity: TdxLayoutGroup;
    gbSecuritySettings: TdxLayoutGroup;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutGroup17: TdxLayoutGroup;
    lbUserPassword: TdxLayoutItem;
    lbOwnerPassword: TdxLayoutItem;
    lbMethod: TdxLayoutItem;
    dxLayoutGroup18: TdxLayoutGroup;
    dxLayoutItem28: TdxLayoutItem;
    dxLayoutItem29: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutCxLookAndFeel1: TdxLayoutCxLookAndFeel;
    tbsSignature: TdxLayoutGroup;
    lgSignatureSettings: TdxLayoutGroup;
    teSignatureReason: TcxTextEdit;
    liteSignatureReason: TdxLayoutItem;
    teSignatureLocation: TcxTextEdit;
    liteSignatureLocation: TdxLayoutItem;
    teSignatureContactInfo: TcxTextEdit;
    liteSignatureContactInfo: TdxLayoutItem;
    tbsSignatureDetails: TdxLayoutGroup;
    tbsSignatureCertificate: TdxLayoutGroup;
    lrbSignatureUseCertificateFromSystemStore: TdxLayoutRadioButtonItem;
    lrbSignatureUseCertificateFromFile: TdxLayoutRadioButtonItem;
    lgSignatureSystemStorage: TdxLayoutGroup;
    dxLayoutItem12: TdxLayoutItem;
    btnSignatureViewCertificate: TcxButton;
    peSystemStorage: TcxPopupEdit;
    lipeSystemStorage: TdxLayoutItem;
    teSignatureCertificateFileName: TcxTextEdit;
    liteSignatureCertificateFileName: TdxLayoutItem;
    lvSystemStorage: TcxListView;
    liPrintingAllowed: TdxLayoutItem;
    cbPrintingAllowed: TcxComboBox;
    liChangesAllowed: TdxLayoutItem;
    cbChangesAllowed: TcxComboBox;
    dxLayoutGroup1: TdxLayoutGroup;
    cbEnableTextAccess40: TdxLayoutCheckBoxItem;
    cbEnableTextAccess128: TdxLayoutCheckBoxItem;
    procedure cbxMethodPropertiesChange(Sender: TObject);
    procedure lrbSignatureUseCertificateFromSystemStoreClick(Sender: TObject);
    procedure lrbSignatureUseCertificateFromFileClick(Sender: TObject);

    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);

    procedure OnSecuritySettingsChangeHandler(Sender: TObject);
    procedure btnSignatureViewCertificateClick(Sender: TObject);
    procedure lbSystemStorageClick(Sender: TObject);
    procedure peSystemStoragePropertiesCloseUp(Sender: TObject);
    procedure peSystemStorageMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure peSystemStorageMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure lcMainClick(Sender: TObject);

    procedure OnSignatureFileNameBrowseButtonClockHandler(Sender: TObject; AButtonIndex: Integer);
    procedure teSignatureCertificateFileNamePropertiesEditValueChanged(Sender: TObject);
    procedure lvSystemStorageClick(Sender: TObject);
    procedure ValidateSignatureInfo;
    procedure teSignatureReasonPropertiesChange(Sender: TObject);
    procedure lgSignatureSettingsCheckBoxStateChanged(Sender: TObject);
    procedure teSignatureLocationPropertiesChange(Sender: TObject);
    procedure teSignatureContactInfoPropertiesChange(Sender: TObject);
    procedure cbEnableTextAccess40Click(Sender: TObject);
  private
    FDocument: TdxPDFDocument;

    FCertificateVerificationLockCount: Integer;
    FFileCertificate: TdxX509Certificate;
    FSignatureFileNameBrowseButton: TcxEditButton;
    FUserCertificate: TdxX509Certificate;

    FSystemCertificate: TdxX509Certificate;
    FCertificateList: TdxX509CertificateList;
    FIsSystemStoragePopupClosed: Boolean;

    function GetActualCertificate: TdxX509Certificate;
    procedure SetFileCertificate(AValue: TdxX509Certificate);
    procedure SetUserCertificate(AValue: TdxX509Certificate);
    procedure SetSystemCertificate(AValue: TdxX509Certificate);

    function CheckUserInput: Boolean;
    function IsCertificateVerificationLocked: Boolean;
    procedure CheckCertificatePassword(const AFileName: string);
    procedure LockCertificateChecking;
    procedure PopulateCertificateList;
    procedure ShowInvalidFileNameMessage(const AFileName: string);
    procedure UnlockCertificateChecking;
    procedure UpdatePermissions;
    procedure UpdateSignatureButtons;
    procedure UpdateSystemStorageCertificateCaption;

    function GetChangesAllowedIndex: Integer;
    function GetPrintingAllowedIndex: Integer;
    function IsSupportedCertificate(ACertificate: TdxX509Certificate): Boolean;
    procedure LoadTranslation;
    procedure LoadOptions;
    procedure LoadSecurityOptions(AOptions: TdxPDFSecurityOptions);
    procedure LoadSignatureOptions(ASignature: TdxPDFSignatureFieldInfo);
    procedure SaveOptions;
    procedure SaveSecurityOptions(AOptions: TdxPDFSecurityOptions);
    procedure SaveSignatureOptions(ASignature: TdxPDFSignatureFieldInfo);

    property ActualCertificate: TdxX509Certificate read GetActualCertificate;
    property FileCertificate: TdxX509Certificate read FFileCertificate write SetFileCertificate;
    property UserCertificate: TdxX509Certificate read FUserCertificate write SetUserCertificate;
    property SystemCertificate: TdxX509Certificate read FSystemCertificate write SetSystemCertificate;
  protected
    procedure Load(ADocument: TdxPDFDocument);
  public
    class function Execute(ADocument: TdxPDFDocument): Boolean; static;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

implementation

{$R *.dfm}

uses
  System.Math, cxDateUtils, cxGeometry, dxX509CertificatePasswordDialog, dxPSUtl, dxPSRes, dxPDFEncryption,
  dxPDFViewerDialogsStrs;

const
  ContentPermissionsMap1: array[0..3] of TdxPDFDocumentPermissions =
  (
    [],
    [pdpAllowAddOrModifyTextAnnotations, pdpAllowFillFields],
    [pdpAllowEditContent, pdpAllowAssembleDocument],
    [pdpAllowEditContent, pdpAllowAddOrModifyTextAnnotations, pdpAllowFillFields, pdpAllowAssembleDocument]
  );

  ContentPermissionsMap2: array[0..4] of TdxPDFDocumentPermissions =
  (
    [],
    [pdpAllowAssembleDocument],
    [pdpAllowFillFields],
    [pdpAllowAddOrModifyTextAnnotations, pdpAllowFillFields],
    [pdpAllowEditContent, pdpAllowAddOrModifyTextAnnotations, pdpAllowFillFields]
  );


type
  TcxPopupEditPropertiesAccess = class(TcxPopupEditProperties);


{ TfrmSaveDialogForm }

constructor TfrmSaveDialogForm.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  dxLayoutGroup2.ItemIndex := tbsSecurity.Index;
  LoadTranslation;

  UpdatePermissions;
  cbPrintingAllowed.ItemIndex := 0;
  cbChangesAllowed.ItemIndex := 0;

  gbSecuritySettings.ButtonOptions.CheckBox.Checked := False;
  lgSignatureSettings.OnCheckBoxStateChanged := OnSecuritySettingsChangeHandler;
  teSignatureCertificateFileName.Text := '';
  peSystemStorage.Text := '';
  FIsSystemStoragePopupClosed := True;

  FFileCertificate := nil;
  FSystemCertificate := nil;

  FCertificateList := TdxX509CertificateList.Create;

  lvSystemStorage.ReadOnly := True;
  lvSystemStorage.Style.BorderStyle := cbsNone;
  lvSystemStorage.StyleDisabled.BorderStyle := cbsNone;
  lvSystemStorage.StyleHot.BorderStyle := cbsNone;
  lvSystemStorage.StyleFocused.BorderStyle := cbsNone;
  lvSystemStorage.MultiSelect := False;
  lvSystemStorage.ViewStyle := vsReport;
  lvSystemStorage.Width := peSystemStorage.Width - ScaleFactor.Apply(2);
  lvSystemStorage.RowSelect := True;
end;

destructor TfrmSaveDialogForm.Destroy;
begin
  FreeAndNil(FCertificateList);
  FreeAndNil(FSystemCertificate);
  FreeAndNil(FFileCertificate);
  inherited Destroy;
end;

procedure TfrmSaveDialogForm.cbEnableTextAccess40Click(Sender: TObject);
begin
  cbEnableTextAccess128.Checked := cbEnableTextAccess40.Enabled;
  cbEnableTextAccess128.Enabled := not cbEnableTextAccess40.Checked;
end;

procedure TfrmSaveDialogForm.cbxMethodPropertiesChange(Sender: TObject);
begin
  UpdatePermissions;
end;

procedure TfrmSaveDialogForm.lrbSignatureUseCertificateFromSystemStoreClick(Sender: TObject);
begin
  liteSignatureCertificateFileName.Enabled := not lrbSignatureUseCertificateFromSystemStore.Checked;
  lgSignatureSystemStorage.Enabled := not liteSignatureCertificateFileName.Enabled;
  ValidateSignatureInfo;
end;

procedure TfrmSaveDialogForm.lrbSignatureUseCertificateFromFileClick(Sender: TObject);
begin
  lgSignatureSystemStorage.Enabled := not lrbSignatureUseCertificateFromFile.Checked;
  liteSignatureCertificateFileName.Enabled := not lgSignatureSystemStorage.Enabled;
  ValidateSignatureInfo;
end;

procedure TfrmSaveDialogForm.Load(ADocument: TdxPDFDocument);
begin
  FDocument := ADocument;
  LoadOptions;
end;

procedure TfrmSaveDialogForm.LoadOptions;
begin
  LoadSecurityOptions(FDocument.SecurityOptions);
  LoadSignatureOptions(FDocument.SignatureOptions.Signature);
end;

function TfrmSaveDialogForm.CheckUserInput: Boolean;
begin
  Result := True;
  if lgSignatureSettings.ButtonOptions.CheckBox.Checked then
  begin
    if lrbSignatureUseCertificateFromFile.Checked then
    begin
      Result := FFileCertificate <> nil;
      if not Result then
        ShowInvalidFileNameMessage(teSignatureCertificateFileName.Text);
    end;

    if lrbSignatureUseCertificateFromSystemStore.Checked then
    begin
      Result := FSystemCertificate <> nil;
      if not Result then
         MessageWarning(cxGetResourceString(@sdxPDFDialogSignatureRequiredDigitalID));
    end;
  end;
end;

function TfrmSaveDialogForm.IsCertificateVerificationLocked: Boolean;
begin
  Result := FCertificateVerificationLockCount <> 0;
end;

procedure TfrmSaveDialogForm.lbSystemStorageClick(Sender: TObject);
begin
  UpdateSystemStorageCertificateCaption;
end;

procedure TfrmSaveDialogForm.lcMainClick(Sender: TObject);
begin
  FIsSystemStoragePopupClosed := True;
end;

procedure TfrmSaveDialogForm.lgSignatureSettingsCheckBoxStateChanged(Sender: TObject);
begin
  ValidateSignatureInfo;
end;

procedure TfrmSaveDialogForm.OnSignatureFileNameBrowseButtonClockHandler(Sender: TObject; AButtonIndex: Integer);
var
  AOpenDialog: TdxOpenFileDialog;
begin
  if FSignatureFileNameBrowseButton.Index = AButtonIndex then
  begin
    AOpenDialog := TdxOpenFileDialog.Create(nil);
    try
      AOpenDialog.Title := cxGetResourceString(@sdxPDFDialogSignatureOpenDlgTitle);
      AOpenDialog.Filter := Format('%s (*.pfx)|*.PFX', [cxGetResourceString(@sdxPDFDialogSignatureOpenDlgDigitalIDFile)]);
      AOpenDialog.FilterIndex := 1;
      AOpenDialog.DefaultExt := 'pfx';
      AOpenDialog.FileName := teSignatureCertificateFileName.Text;
      if AOpenDialog.Execute then
        CheckCertificatePassword(AOpenDialog.FileName);
    finally
      AOpenDialog.Free;
      ValidateSignatureInfo;
    end;
  end;
end;

procedure TfrmSaveDialogForm.lvSystemStorageClick(Sender: TObject);
begin
  UpdateSystemStorageCertificateCaption;
end;

procedure TfrmSaveDialogForm.SaveOptions;
begin
  SaveSecurityOptions(FDocument.SecurityOptions);
  SaveSignatureOptions(FDocument.SignatureOptions.Signature);
end;

procedure TfrmSaveDialogForm.LoadSecurityOptions(AOptions: TdxPDFSecurityOptions);
begin
  cbxMethod.ItemIndex := Min(Ord(AOptions.Algorithm), 1);
  edOwnerPassword.Text := FDocument.SecurityOptions.OwnerPassword;
  edUserPassword.Text := FDocument.SecurityOptions.UserPassword;
  gbSecuritySettings.ButtonOptions.CheckBox.Checked := FDocument.SecurityOptions.Enabled;
  cbPrintingAllowed.ItemIndex := GetPrintingAllowedIndex;
  cbChangesAllowed.ItemIndex := GetChangesAllowedIndex;
end;

procedure TfrmSaveDialogForm.LoadSignatureOptions(ASignature: TdxPDFSignatureFieldInfo);
begin
  teSignatureLocation.Text := ASignature.Location;
  teSignatureReason.Text := ASignature.Reason;
  teSignatureContactInfo.Text := ASignature.ContactInfo;
  UserCertificate := ASignature.Certificate;
  if (FUserCertificate <> nil) and (FUserCertificate.FileName <> '') then
  begin
    LockCertificateChecking;
    FileCertificate := ASignature.Certificate;
    teSignatureCertificateFileName.Text := FUserCertificate.FileName;
    UnlockCertificateChecking;
  end;
  FSignatureFileNameBrowseButton := teSignatureCertificateFileName.Properties.Buttons.Add;
  FSignatureFileNameBrowseButton.Kind := bkEllipsis;
  FSignatureFileNameBrowseButton.Visible := True;
  teSignatureCertificateFileName.Properties.OnButtonClick := OnSignatureFileNameBrowseButtonClockHandler;

  PopulateCertificateList;
  lgSignatureSettings.ButtonOptions.CheckBox.Checked := FDocument.SignatureOptions.Enabled;
  lrbSignatureUseCertificateFromFile.Checked := teSignatureCertificateFileName.Text <> '';
  lrbSignatureUseCertificateFromSystemStore.Checked := not lrbSignatureUseCertificateFromFile.Checked;
  TcxPopupEditPropertiesAccess(peSystemStorage.Properties).HideCursor := True;
  ValidateSignatureInfo;
end;

procedure TfrmSaveDialogForm.SaveSecurityOptions(AOptions: TdxPDFSecurityOptions);

  function GetPrintingAllowed: TdxPDFDocumentPermissions;
  begin
    Result := [];
    if  cbPrintingAllowed.ItemIndex > 0 then
      Include(Result, pdpAllowPrint);
    if  cbPrintingAllowed.ItemIndex = 2 then
      Include(Result, pdpAllowPrintHighResolution);
  end;

const
  PrintingAllowedMap: array[1..2] of TdxPDFDocumentPermission = (pdpAllowPrint, pdpAllowPrintHighResolution);
var
  APermissions: TdxPDFDocumentPermissions;
begin
  AOptions.Enabled := gbSecuritySettings.ButtonOptions.CheckBox.Checked;
  AOptions.Algorithm := TdxPDFEncryptionAlgorithmType(cbxMethod.ItemIndex);

  APermissions := GetPrintingAllowed;
  if cbEnableTextAccess128.Checked then
    Include(APermissions, pdpAllowExtractContent);
  if cbEnableTextAccess40.Checked then
    Include(APermissions, pdpAllowCopyContent);
  if cbxMethod.ItemIndex = 0 then
    APermissions := APermissions + ContentPermissionsMap1[cbChangesAllowed.ItemIndex]
  else
    APermissions := APermissions + ContentPermissionsMap2[cbChangesAllowed.ItemIndex];
  AOptions.Permissions := APermissions;
  AOptions.OwnerPassword := edOwnerPassword.Text;
  AOptions.UserPassword := edUserPassword.Text;
end;

procedure TfrmSaveDialogForm.SaveSignatureOptions(ASignature: TdxPDFSignatureFieldInfo);
begin
  FDocument.SignatureOptions.Enabled := lgSignatureSettings.ButtonOptions.CheckBox.Checked;
  ASignature.Location := teSignatureLocation.Text;
  ASignature.Reason := teSignatureReason.Text;
  ASignature.ContactInfo := teSignatureContactInfo.Text;
  ASignature.Certificate := ActualCertificate;
end;

function TfrmSaveDialogForm.GetActualCertificate: TdxX509Certificate;
begin
  if lrbSignatureUseCertificateFromSystemStore.Checked then
    Result := SystemCertificate
  else
    Result := FileCertificate;
end;

procedure TfrmSaveDialogForm.SetFileCertificate(AValue: TdxX509Certificate);
begin
  if FFileCertificate <> AValue then
  begin
    FreeAndNil(FFileCertificate);
    FFileCertificate := TdxX509Certificate.Create(AValue);
  end;
end;

procedure TfrmSaveDialogForm.SetUserCertificate(AValue: TdxX509Certificate);
begin
  if FUserCertificate <> AValue then
  begin
    FreeAndNil(FUserCertificate);
    FUserCertificate := TdxX509Certificate.Create(AValue);
  end;
end;

procedure TfrmSaveDialogForm.SetSystemCertificate(AValue: TdxX509Certificate);
begin
  if FSystemCertificate <> AValue then
  begin
    FreeAndNil(FSystemCertificate);
    FSystemCertificate := TdxX509Certificate.Create(AValue);
  end;
end;

procedure TfrmSaveDialogForm.teSignatureCertificateFileNamePropertiesEditValueChanged(Sender: TObject);
begin
  if (FFileCertificate <> nil) and (FFileCertificate.FileName <> teSignatureCertificateFileName.Text) then
    FreeAndNil(FFileCertificate);
  CheckCertificatePassword(teSignatureCertificateFileName.Text);
  ValidateSignatureInfo;
end;

procedure TfrmSaveDialogForm.teSignatureContactInfoPropertiesChange(
  Sender: TObject);
begin
  ValidateSignatureInfo;
end;

procedure TfrmSaveDialogForm.teSignatureLocationPropertiesChange(
  Sender: TObject);
begin
  ValidateSignatureInfo;
end;

procedure TfrmSaveDialogForm.teSignatureReasonPropertiesChange(Sender: TObject);
begin
  ValidateSignatureInfo;
end;

procedure TfrmSaveDialogForm.ValidateSignatureInfo;
begin
  UpdateSignatureButtons;
  btnOk.Enabled := not lgSignatureSettings.ButtonOptions.CheckBox.Checked or
    (teSignatureReason.Text <> '') and
    (teSignatureLocation.Text <> '') and
    (teSignatureContactInfo.Text <> '') and (ActualCertificate <> nil);
end;

procedure TfrmSaveDialogForm.CheckCertificatePassword(const AFileName: string);

  function CheckFileName: Boolean;
  begin
    Result := AFileName <> '';
    if Result then
    begin
      Result := dxPSUtl.ValidateFileName(AFileName) and FileExists(AFileName);
      if not Result then
        ShowInvalidFileNameMessage(AFileName);
    end;
  end;

var
  ACertificateToVerify: TdxX509Certificate;
  APassword: string;
begin
  if not IsCertificateVerificationLocked and CheckFileName and
    TdxX509CertificatePasswordDialogForm.Execute(Self, nil, APassword) then
    try
      LockCertificateChecking;
      try
        ACertificateToVerify := nil;
        ACertificateToVerify := TdxX509Certificate.Create(AFileName, APassword);
        teSignatureCertificateFileName.Text := AFileName;
        FileCertificate := ACertificateToVerify;
      except
        FreeAndNil(ACertificateToVerify);
        MessageWarning(cxGetResourceString(@sdxPDFDialogSignatureRequiredDigitalIDPassword));
      end;
    finally
      FreeAndNil(ACertificateToVerify);
      UnlockCertificateChecking;
      UpdateSignatureButtons;
    end;
end;

procedure TfrmSaveDialogForm.LockCertificateChecking;
begin
  Inc(FCertificateVerificationLockCount);
end;

procedure TfrmSaveDialogForm.PopulateCertificateList;

  procedure LoadCertificateFromStorage(AName: TdxX509StoreName; ALocation: TdxX509StoreLocation);
  var
    AStorage: TdxX509Store;
  begin
    FCertificateList.Clear;
    AStorage := TdxX509Store.Create(AName, ALocation);
    try
      AStorage.Open;
      AStorage.Certificates.CopyTo(FCertificateList);
    finally
      AStorage.Free;
    end;
  end;

  procedure AddUserCertificate(out AUserCertificateIndex: Integer);
  var
    I: Integer;
  begin
    AUserCertificateIndex := -1;
    if FUserCertificate <> nil then
    begin
      for I := 0 to FCertificateList.Count - 1 do
       if SameText(FCertificateList[I].SerialNumber, FUserCertificate.SerialNumber) then
       begin
         AUserCertificateIndex := I;
         Break;
       end;
      if AUserCertificateIndex = -1 then
      begin
        FCertificateList.Insert(0, FUserCertificate);;
        AUserCertificateIndex := 0;
      end;
    end;
  end;

  procedure RemoveUnsupportedCertificates(var AUserCertificateIndex: Integer);
  var
    ACertificate: TdxX509Certificate;
    AList: TdxX509CertificateList;
    I: Integer;
  begin
    AList := TdxX509CertificateList.Create;
    try
      FCertificateList.CopyTo(AList);
      FCertificateList.Clear;
      for I := 0 to AList.Count - 1 do
      begin
        ACertificate := AList[I];
        if IsSupportedCertificate(ACertificate) then
        begin
          FCertificateList.Add(TdxX509Certificate.Create(ACertificate));
          if (I = AUserCertificateIndex) and (ACertificate.SerialNumber = FUserCertificate.SerialNumber) then
            AUserCertificateIndex := FCertificateList.Count - 1;
        end;
      end;
    finally
      AList.Free;
    end;
  end;

var
  AUserCertificateIndex: Integer;
  ACertificate: TdxX509Certificate;
  AItem: TListItem;
begin
  FCertificateList.Clear;
  LoadCertificateFromStorage(snMy, slCurrentUser);
  AddUserCertificate(AUserCertificateIndex);
  RemoveUnsupportedCertificates(AUserCertificateIndex);

  for ACertificate in FCertificateList do
  begin
    AItem := lvSystemStorage.Items.Add;
    AItem.Caption := ACertificate.IssuedBy;
    AItem.SubItems.Add(cxDateToStr(ACertificate.ValidTo));
    AItem.Data := Pointer(ACertificate);
  end;
  lvSystemStorage.ItemIndex := IfThen(lvSystemStorage.Items.Count > 0,
    IfThen(AUserCertificateIndex <> -1, AUserCertificateIndex), -1);
  UpdateSystemStorageCertificateCaption;
end;

procedure TfrmSaveDialogForm.ShowInvalidFileNameMessage(const AFileName: string);
begin
  MessageWarning(Format(cxGetResourceString(@sdxInvalidFileName), [AFileName]))
end;

procedure TfrmSaveDialogForm.UnlockCertificateChecking;
begin
  Dec(FCertificateVerificationLockCount);
end;

procedure TfrmSaveDialogForm.UpdatePermissions;
begin
  cbPrintingAllowed.Properties.Items.BeginUpdate;
  try
    cbPrintingAllowed.Properties.Items.Clear;
    cbPrintingAllowed.Properties.Items.Add('None');
    if cbxMethod.ItemIndex = 1 then
      cbPrintingAllowed.Properties.Items.Add('Low Resolution');
    cbPrintingAllowed.Properties.Items.Add('High Resolution');
    cbPrintingAllowed.ItemIndex := Min(cbPrintingAllowed.ItemIndex, cbPrintingAllowed.Properties.Items.Count - 1);
  finally
    cbPrintingAllowed.Properties.Items.EndUpdate;
  end;

  cbChangesAllowed.Properties.Items.BeginUpdate;
  try
    cbChangesAllowed.Properties.Items.Clear;
    cbChangesAllowed.Properties.Items.Add('None');
    if cbxMethod.ItemIndex = 1 then
    begin
      cbChangesAllowed.Properties.Items.Add('Insert, Delete, and Rotate Pages');
      cbChangesAllowed.Properties.Items.Add('Fill in Form Fields and Sign Existing Signature Fields');
    end;
    cbChangesAllowed.Properties.Items.Add('Comment, Fill in Form Fields, and Sign Existing Signature Fields');
    if cbxMethod.ItemIndex = 0 then
      cbChangesAllowed.Properties.Items.Add('Set the Page Layout, Fill in Form Fields, and Sign Existing Signature Fields');
    cbChangesAllowed.Properties.Items.Add('Any Except Extract Pages');
    cbChangesAllowed.ItemIndex := Min(cbChangesAllowed.ItemIndex, cbChangesAllowed.Properties.Items.Count - 1);
  finally
    cbChangesAllowed.Properties.Items.EndUpdate;
  end;

  if cbxMethod.ItemIndex = 0 then
  begin
    cbEnableTextAccess40.Caption := 'Allow Copy Operations with Text, Images, and Other Content, and Access for the Visually Impaired';
    cbEnableTextAccess128.Visible := False;
  end
  else
  begin
    cbEnableTextAccess40.Caption := 'Allow Copy Operations with Text, Images, and Other Content';
    cbEnableTextAccess128.Visible := True;
  end;
end;

procedure TfrmSaveDialogForm.UpdateSignatureButtons;
begin
  btnSignatureViewCertificate.Enabled := lrbSignatureUseCertificateFromSystemStore.Checked and (FCertificateList.Count > 0) or
     lrbSignatureUseCertificateFromFile.Checked and (teSignatureCertificateFileName.Text <> '');
end;

procedure TfrmSaveDialogForm.UpdateSystemStorageCertificateCaption;
begin
  if lvSystemStorage.ItemIndex > -1 then
  begin
    SystemCertificate := TdxX509Certificate(lvSystemStorage.Items[lvSystemStorage.ItemIndex].Data);
    peSystemStorage.Text := SystemCertificate.IssuedTo;
  end;
  peSystemStorage.DroppedDown := False;
end;

function TfrmSaveDialogForm.GetChangesAllowedIndex: Integer;

  function TestPermissions(APermissions, ASourcePermissions: TdxPDFDocumentPermissions): Boolean;
  begin
    Result := APermissions * ASourcePermissions = APermissions;
  end;

  function GetIndex(const AMap: array of TdxPDFDocumentPermissions; APermissions: TdxPDFDocumentPermissions): Integer;
  var
    I: Integer;
  begin
    Result := 0;
    for I := High(AMap) downto Low(AMap) do
      if TestPermissions(AMap[I], APermissions) then
      begin
        Result := I;
        Break;
      end;
  end;

var
  APermissions: TdxPDFDocumentPermissions;
begin
  APermissions := FDocument.SecurityOptions.Permissions;

  Exclude(APermissions, pdpAllowPrint);
  Exclude(APermissions, pdpAllowPrintHighResolution);

  cbEnableTextAccess128.Checked := TestPermissions([pdpAllowExtractContent], APermissions);
  Exclude(APermissions, pdpAllowExtractContent);

  cbEnableTextAccess40.Checked := TestPermissions([pdpAllowCopyContent], APermissions);
  Exclude(APermissions, pdpAllowCopyContent);

  if cbxMethod.ItemIndex = 0 then
    Result := GetIndex(ContentPermissionsMap1, APermissions)
  else
    Result := GetIndex(ContentPermissionsMap2, APermissions);
end;

function TfrmSaveDialogForm.GetPrintingAllowedIndex: Integer;
begin
  Result := Min(IfThen(pdpAllowPrintHighResolution in FDocument.SecurityOptions.Permissions, 2,
    IfThen(pdpAllowPrint in FDocument.SecurityOptions.Permissions, 1, 0)),
    cbPrintingAllowed.Properties.Items.Count - 1);
end;

function TfrmSaveDialogForm.IsSupportedCertificate(ACertificate: TdxX509Certificate): Boolean;
begin
  Result := (kufDigitalSignature in ACertificate.KeyUsage) and ACertificate.HasPrivateKey;
end;

procedure TfrmSaveDialogForm.LoadTranslation;
begin
  Caption := 'Save Options';
  gbSecuritySettings.Caption := 'Security Settings';
  btnOk.Caption := '&OK';
  tbsSecurity.Caption := 'Security';
  lbUserPassword.Caption := 'User Password:';
  lbOwnerPassword.Caption := 'Owner Password:';
  lbMethod.Caption := 'Method:';
  tbsSignature.Caption := 'S&ignature';
  lgSignatureSettings.Caption := 'Signature Settings';
  tbsSignatureCertificate.Caption := 'Certificate (Digital ID)';
  lrbSignatureUseCertificateFromSystemStore.Caption := 'Use Certificate from System Store';
  lrbSignatureUseCertificateFromFile.Caption := 'Use Certificate from File';
  lipeSystemStorage.Caption := 'Issuer:';
  liteSignatureCertificateFileName.Caption := 'File Name:';
  tbsSignatureDetails.Caption := 'Details';
  liteSignatureReason.Caption := 'Reason:';
  liteSignatureLocation.Caption := 'Location:';
  liteSignatureContactInfo.Caption := 'Contact Info:';
  btnSignatureViewCertificate.Caption := 'View Certificate...';
end;

procedure TfrmSaveDialogForm.btnSignatureViewCertificateClick(Sender: TObject);
begin
  if lrbSignatureUseCertificateFromFile.Checked and (FileCertificate = nil) then
    CheckCertificatePassword(teSignatureCertificateFileName.Text);
  if ActualCertificate <> nil then
    dxX509DisplayCertificate(ActualCertificate, Handle);
end;

class function TfrmSaveDialogForm.Execute(ADocument: TdxPDFDocument): Boolean;
var
  ADialog: TfrmSaveDialogForm;
begin
  ADialog := TfrmSaveDialogForm.Create(nil);
  try
    ADialog.Load(ADocument);
    Result := ADialog.ShowModal = mrOk;
    if Result then
      ADialog.SaveOptions;
  finally
    ADialog.Free;
  end;
end;

procedure TfrmSaveDialogForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if ModalResult = mrOk then
    CanClose := CheckUserInput;
end;

procedure TfrmSaveDialogForm.OnSecuritySettingsChangeHandler(Sender: TObject);
begin
  lrbSignatureUseCertificateFromSystemStoreClick(nil);
  lrbSignatureUseCertificateFromFileClick(nil);
end;

procedure TfrmSaveDialogForm.peSystemStorageMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState;
  X, Y: Integer);
begin
  if FIsSystemStoragePopupClosed then
    peSystemStorage.DroppedDown := not peSystemStorage.DroppedDown
end;

procedure TfrmSaveDialogForm.peSystemStorageMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
  FIsSystemStoragePopupClosed := True;
end;

procedure TfrmSaveDialogForm.peSystemStoragePropertiesCloseUp(Sender: TObject);
begin
  FIsSystemStoragePopupClosed := False;
  ValidateSignatureInfo;
end;

end.
