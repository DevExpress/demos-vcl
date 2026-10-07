unit uGridWinMiner;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxCustomDemoFrameUnit, cxStyles, cxControls, cxGrid, Vcl.StdCtrls, Vcl.ExtCtrls,
  dxGridFrame, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxImageComboBox, Vcl.ImgList, UnboundModeDemoMain, dxOperationTypes;

type
  TfrmGridWinMiner = class(TdxCustomDemoFrame)
    pnlTop: TPanel;
    Label1: TcxLabel;
    icbGameType: TcxImageComboBox;
    pnlClient: TPanel;
    icbScheme: TcxImageComboBox;
    Label2: TcxLabel;
    Panel1: TPanel;
    Label3: TcxLabel;
    Label4: TcxLabel;
    Label5: TcxLabel;
    Label6: TcxLabel;
    Panel2: TPanel;
    Label7: TcxLabel;
    Label8: TcxLabel;
    Label9: TcxLabel;
    Label10: TcxLabel;
    Label11: TcxLabel;
    procedure icbGameTypeClick(Sender: TObject);
    procedure icbSchemeClick(Sender: TObject);
    procedure pnlClientResize(Sender: TObject);
  private
    FForm: TUnboundModeDemoMainForm;
    procedure DoFormResize(Sender: TObject);
  protected
//    procedure AddBars; override;
//    procedure AddOperations; override;
//    procedure UpdateOperations; override;
  public
    constructor Create(AOwner: TComponent); override;
  end;


implementation

{$R *.dfm}

uses
  dxFrames, FrameIDs;

{ TfrmGridWinMiner }
(*
procedure TfrmGridWinMiner.AddBars;
begin
  inherited;
  BarList.AddBar(btStandard);
  BarList.AddBar(btFormat);
end;

procedure TfrmGridWinMiner.AddOperations;
  procedure AddFileOperations;
  begin
    with Operations do
    begin
      AddOperation(otExportTo, nil);
      AddOperation(otExportToHTML, nil);
      AddOperation(otExportToXML, nil);
      AddOperation(otExportToExcel, nil);
      AddOperation(otExportToText, nil);
      AddOperation(otPageSetup, nil);
      AddOperation(otPrintStyles, nil);
      AddOperation(otDefinePrintStyles, nil);
      AddOperation(otPrintPreview, nil);
      AddOperation(otPrint, nil);
      AddOperation(otShowInspector, nil);
    end;
  end;

  procedure AddViewOperations;
  begin
    with Operations do
    begin
      AddOperation(otGridView, nil);
      AddOperation(otAutoPreview, nil);
      AddOperation(otAutoWidth, nil);
      AddOperation(otCustomization, nil);
      AddOperation(otFullCollapse, nil);
      AddOperation(otFullExpand, nil);
      AddOperation(otGrouping, nil);
      AddOperation(otInvertSelected, nil);
      AddOperation(otShowBands, nil);
      AddOperation(otShowButtonsAlways, nil);
      AddOperation(otShowGrid, nil);
      AddOperation(otShowHeaders, nil);
      AddOperation(otShowIndicator, nil);
      AddOperation(otShowSummaryFooter, nil);
    end;
  end;

begin
  inherited;
  AddFileOperations;
  AddViewOperations;
end;

procedure TfrmGridWinMiner.UpdateOperations;
begin
  inherited UpdateOperations;
  Operations[otShowInspector].Enabled := False;
  Operations[otAutoPreview].Enabled := False;
  Operations[otAutoWidth].Enabled := False;
  Operations[otCustomization].Enabled := False;
  Operations[otFullCollapse].Enabled := False;
  Operations[otFullExpand].Enabled := False;
  Operations[otGrouping].Enabled := False;
  Operations[otInvertSelected].Enabled := False;
  Operations[otShowBands].Enabled := False;
  Operations[otShowButtonsAlways].Enabled := False;
  Operations[otShowGrid].Enabled := False;
  Operations[otShowHeaders].Enabled := False;
  Operations[otShowIndicator].Enabled := False;
  Operations[otShowSummaryFooter].Enabled := False;
end;
*)
constructor TfrmGridWinMiner.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  icbGameType.ItemIndex := 1;
  icbScheme.ItemIndex := 1;
  FForm := TUnboundModeDemoMainForm.Create(self);
  FForm.Parent := pnlClient;
  FForm.Left := 0;
  FForm.Top := 0;
  FForm.actIntermediateExecute(nil);
  FForm.OnResize := DoFormResize;
  FForm.Visible := True;
end;

procedure TfrmGridWinMiner.DoFormResize(Sender: TObject);
begin
  if FForm.Width >= pnlClient.ClientWidth then
    FForm.Left := 0
  else FForm.Left := (pnlClient.ClientWidth - FForm.Width) div 2;
  if FForm.Height >= pnlClient.ClientHeight then
    FForm.Top := 0
  else FForm.Top := (pnlClient.ClientHeight - FForm.Height) div 2;
end;


procedure TfrmGridWinMiner.icbGameTypeClick(Sender: TObject);
begin
  if FForm = nil then exit;
  case icbGameType.ItemIndex of
     0: FForm.actBeginnerExecute(nil);
     1: FForm.actIntermediateExecute(nil);
     2: FForm.actExpertExecute(nil);
  end;
end;

procedure TfrmGridWinMiner.icbSchemeClick(Sender: TObject);
begin
  if FForm = nil then exit;
  case icbScheme.ItemIndex of
     0: FForm.actGreenColorSchemeExecute(nil);
     1: FForm.actBlueColorSchemeExecute(nil);
     2: FForm.actSystemColorSchemeExecute(nil);
     3: FForm.actGoldColorSchemeExecute(nil);
  end;
end;


procedure TfrmGridWinMiner.pnlClientResize(Sender: TObject);
begin
  DoFormResize(Sender);
end;


initialization
//  dxFrameManager.RegisterFrame(GridWinMinerFrameID, TfrmGridWinMiner,
//        GridWinMinerFrameName, GridWinMinerImageIndex, GridWinMinerImageIndex, Grid4SideBarGroupIndex);


end.
