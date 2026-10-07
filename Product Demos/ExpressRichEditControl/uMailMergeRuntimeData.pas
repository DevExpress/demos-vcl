unit uMailMergeRuntimeData;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxRichEditFrame, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxCore, dxCoreClasses,
  dxGDIPlusAPI, dxGDIPlusClasses, dxRichEdit.Types, dxRichEdit.Options,
  dxRichEdit.Control, dxHttpIndyRequest, dxBarBuiltInMenu,
  dxRichEdit.Platform.Win.Control, cxLabel, Vcl.ExtCtrls, cxNavigator, cxDBNavigator,
  Data.DB, Datasnap.DBClient, dxRibbon, MidasLib, dxRichEdit.NativeApi, dxRichEdit.Control.SpellChecker, dxRichEdit.Dialogs.EventArgs,
  dxRichEdit.Control.Core, dxLayoutContainer, cxClasses, dxLayoutControl;

type
  TfrmRichEditMailMergeRuntimeData = class(TfrmRichEditFrame)
    NavigatorPanel: TPanel;
    DBNavigator: TcxDBNavigator;
    cdsEmployees: TClientDataSet;
    dsEmployees: TDataSource;
    procedure RichEditControlMailMergeGetTargetDocument(Sender: TObject;
      const Args: TdxMailMergeGetTargetDocumentEventArgs);
  protected
    function GetDatabaseName: string;
    function GetDescription: string; override;
    function GetStartDocumentName: string; override;
    procedure InitDataBase;
  public
    constructor Create(AOwner: TComponent; ARibbon: TdxRibbon); override;
  end;

var
  frmRichEditMailMergeRuntimeData: TfrmRichEditMailMergeRuntimeData;

implementation

{$R *.dfm}

uses
  dxFrames, FrameIDs, uStrsConst, RibbonRichEditForm;

{ TfrmRichEditMailMergeRuntimeData }

constructor TfrmRichEditMailMergeRuntimeData.Create(AOwner: TComponent; ARibbon: TdxRibbon);
begin
  inherited Create(AOwner, ARibbon);
  InitDataBase;
  RichEditControl.Options.MailMerge.ViewMergedData := True;
end;

function TfrmRichEditMailMergeRuntimeData.GetDatabaseName: string;
begin
  Result := GetStartDocumentPrefix + sdxMailMergeRuntimeDataBaseName;
end;

function TfrmRichEditMailMergeRuntimeData.GetDescription: string;
begin
  Result := sdxFrameMailMergeRuntimeData;
end;

function TfrmRichEditMailMergeRuntimeData.GetStartDocumentName: string;
begin
  Result := sdxMailMergeRuntimeDataStartDocumentName;
end;

procedure TfrmRichEditMailMergeRuntimeData.InitDataBase;
begin
  if FileExists(GetDatabaseName) then
    cdsEmployees.LoadFromFile(GetDatabaseName);
end;

procedure TfrmRichEditMailMergeRuntimeData.RichEditControlMailMergeGetTargetDocument(
  Sender: TObject; const Args: TdxMailMergeGetTargetDocumentEventArgs);
var
  AForm: TfrmRibbonRichEditForm;
begin
  AForm := TfrmRibbonRichEditForm.Create(Self);
  Args.TargetDocument := AForm.RichEditControl.Document;
  AForm.Show;
end;

initialization
  dxFrameManager.RegisterFrame(RichEditMailMergeRuntimeDataID, TfrmRichEditMailMergeRuntimeData,
    RichEditMailMergeRuntimeDataFrameName, MailMergeGroupIndex, -1, -1);

finalization

end.
