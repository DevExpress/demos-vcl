program ReportsFeaturesDemo;

{$I cxVer.inc}

uses
  System.SysUtils,
  System.UITypes,
  System.Win.Registry,
  System.IOUtils,
  Vcl.Forms,
  dxUIAClasses,
  dxPrnPg,
  dxPrnDev,
  dxMessageDialog,
  dxBackend,
  dxBackend.AI,
  dxSplashForms,
  Winapi.Windows,
  dxSkinsDefaultPainters,
  dxBackend.Utils.EdgeBrowserAdapter,
  uMainForm in 'uMainForm.pas' {MainForm},
  uDemoDataModule in 'uDemoDataModule.pas' {DemoDataModule: TDataModule},
  dxDemoBaseMainForm in '..\Common\dxDemoBaseMainForm.pas' {frmMainBase},
  dxDemoUtils in '..\Common\dxDemoUtils.pas',
  dxDemoObjectInspector in '..\Common\dxDemoObjectInspector.pas' {frmInspector: TdxForm},
  dxDemoPrintFrame in '..\Common\dxDemoPrintFrame.pas' {frmPrinting: TFrame},
  dxAboutDemo in '..\Common\dxAboutDemo.pas' {dxAboutDemoForm: TdxForm},
  dxExportProgressDialog in '..\Common\dxExportProgressDialog.pas' {frmExportProgress: TdxForm};

{$R *.res}
{$R ReportsFeaturesIcon.res}
{$R ..\Common\dxDPIAwareManifestPM2.res}
{$R '..\Common\Demo_dxSplashResource.res'}

function GetPlatformInstallPath(const ABDSVersion: string): string;
const
  SPlatformRootDirRegistryValue = 'RootDir';
var
  ARegistry: TRegistry;
  APlatformRegistryPath: string;
begin
  Result := '';
  ARegistry := TRegistry.Create;
  try
    ARegistry.RootKey := HKEY_LOCAL_MACHINE;
  {$IFDEF CPUX64}
    ARegistry.Access := KEY_WOW64_32KEY;
  {$ENDIF CPUX64}
    APlatformRegistryPath := '\SOFTWARE\Embarcadero\BDS\' + ABDSVersion + '\';
    if ARegistry.OpenKeyReadOnly(APlatformRegistryPath) then
    begin
      if ARegistry.ValueExists(SPlatformRootDirRegistryValue) then
        Result := IncludeTrailingPathDelimiter(ARegistry.ReadString(SPlatformRootDirRegistryValue));
      ARegistry.CloseKey;
    end;
  finally
    ARegistry.Free;
  end;
end;

function CheckBrowserLib: Boolean;
const
  LibName = '\WebView2Loader.dll'; // Do not localize

  function TryCopyFromBDSVersion(const ABDSVersion, ARequiredFileName: string; var ADelphiPaths: string): Boolean;
  var
    ADelphiPath: string;
    APath: string;
  begin
    ADelphiPath := GetPlatformInstallPath(ABDSVersion);
    if ADelphiPath = '' then
      Exit(False);

    ADelphiPath := ADelphiPath + 'Redist\win' + {$IFDEF WIN32}'32'{$ELSE}'64'{$ENDIF}; // Do not localize

    APath := ADelphiPath + LibName;
    if FileExists(APath) then
    begin
      if not CopyFile(PChar(APath), PChar(ARequiredFileName), True) then
        RaiseLastOSError(GetLastError, Format(sLineBreak + 'Copying "%s" to "%s".', [APath, ARequiredFileName]))
      else
        Exit(True);
    end;

    if ADelphiPaths <> '' then
      ADelphiPaths := ADelphiPaths + ' or ';
    ADelphiPaths := ADelphiPaths + '"' + ADelphiPath + '"';
    Result := False;
  end;

var
  ARequiredFileName: string;
  ADelphiPaths: string;
begin
  Result := True;
  ARequiredFileName := TPath.GetAppPath + LibName;
  ADelphiPaths := '';
  if not FileExists(ARequiredFileName) then
  begin
    if not TryCopyFromBDSVersion('37.0', ARequiredFileName, ADelphiPaths) then // Delphi 13.x
      TryCopyFromBDSVersion('23.0', ARequiredFileName, ADelphiPaths); // Delphi 12.x
  end;

  if not FileExists(ARequiredFileName) then
    begin
      dxMessageDlg('This demo needs [b]WebView2Loader.dll[/b] in the EXE folder "' + TPath.GetAppPath + '". ' +
        'To continue, install the [b]EdgeView2 SDK[/b] from [b]RAD Studio > Tools > GetIt Package Manager[/b], ' +
        'then restart the demo. The DLL is automatically copied to the EXE folder from ' + ADelphiPaths + '.',
        TMsgDlgType.mtInformation,
        [TMsgDlgBtn.mbOK]
      );
      Result := False;
    end;
end;

procedure Cleanup;
begin
  if Application <> nil then
  begin
    Application.ShowHint := False;
    Application.Destroying;
    Application.DestroyComponents;
  end;
end;

begin
  dxUIAutomationEnabled := True;
  Application.Title := 'ExpressReports Features Demo';
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TdxSkinsUserSkinLoader.LoadUserSkin(GetSkinResFileName, 'WXI');
  var ASplashForm := TdxSplashFormManager.SplashForm;
  ASplashForm.Show;
  Application.CreateForm(TDemoDataModule, DemoDataModule);
  try
    if not CheckBrowserLib then
      Abort;

    Application.CreateForm(TMainForm, MainForm);

    TdxBackendAISettings.AIClientSettingsClass := TdxBackendAzureOpenAIClientSettings;
    TdxBackendAzureOpenAIClientSettings.Endpoint := 'https://public-api.devexpress.com/demo-openai'; 
    TdxBackendAzureOpenAIClientSettings.APIKey := 'DEMO';
    TdxBackendAzureOpenAIClientSettings.DeploymentName := 'demo-mini';

    TdxBackend.Instance.Start;

    RereadDefaultPrinterPage;
    dxInitPrintDevice(False);

    MainForm.dxReportControl.Active := True;
    while not MainForm.dxReportControl.BrowserDisplayed do
    begin
      Application.ProcessMessages;
      if not MainForm.dxReportControl.Active then
        Abort;
    end;
    MainForm.UpdateBaseMenuOptions;
  except
    ASplashForm.Hide;
    Application.HandleException(nil);
    Cleanup;
    Exit;
  end;

  Application.Run;
end.
