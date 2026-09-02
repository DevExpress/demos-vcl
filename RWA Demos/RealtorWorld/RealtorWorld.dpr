program RealtorWorld;

{$SETPEOSVERSION 5.0}
{$SETPESUBSYSVERSION 5.0}

{$I cxVer.inc}

uses
  MidasLib,
  Vcl.Forms,
  dxUIAClasses,
  RealtorWorldMain in 'RealtorWorldMain.pas' {frmRealtorWorld},
  RealtorWorldDM in 'RealtorWorldDM.pas' {DMRealtorWorld: TDataModule},
  RealtorWorldListing in 'RealtorWorldListing.pas' {frmListing: TFrame},
  RealtorWorldAgents in 'RealtorWorldAgents.pas' {frmAgents: TFrame},
  RealtorWorldResearch in 'RealtorWorldResearch.pas' {frmResearch: TFrame},
  RealtorWorldUnderConstruction in 'RealtorWorldUnderConstruction.pas' {frmUnderConstruction: TFrame},
  RealtorWorldLoanCalculator in 'RealtorWorldLoanCalculator.pas' {frmLoanCalculator: TFrame},
  RealtorWorldMortgageRate in 'RealtorWorldMortgageRate.pas' {frmMortgageRate: TFrame},
  RealtorWorldSystemInformation in 'RealtorWorldSystemInformation.pas' {frmSystemInformation: TfrmSystemInformation},
  RealtorWorldStatistic in 'RealtorWorldStatistic.pas' {frmStatistic: TFrame},
  RealtorWorldBaseFrame in 'RealtorWorldBaseFrame.pas' {frmBase: TFrame},
  RealtorWorldHomePhotosBase in 'RealtorWorldHomePhotosBase.pas' {frmHomePhotosBase: TFrame},
  RealtorWorldDataPath in 'RealtorWorldDataPath.pas';

{$R *.res}
{$R RealtorWorldIcon.res}
{$R '..\..\Product Demos\Common\dxDPIAwareManifestPM2.res'}
{$R '..\..\Product Demos\Common\Demo_dxSplashResource.res'}

begin
  dxUIAutomationEnabled := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDMRealtorWorld, DMRealtorWorld);
  Application.CreateForm(TfrmRealtorWorld, frmRealtorWorld);
  Application.Run;
end.
