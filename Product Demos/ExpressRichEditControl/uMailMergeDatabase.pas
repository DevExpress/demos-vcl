unit uMailMergeDatabase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxRichEditFrame, cxGraphics, cxControls, cxLookAndFeels, dxRibbon,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxCore, dxCoreClasses,
  dxGDIPlusAPI, dxGDIPlusClasses, dxRichEdit.Types, dxRichEdit.Options,
  dxRichEdit.Control, dxHttpIndyRequest, dxBarBuiltInMenu,
  dxRichEdit.Platform.Win.Control, cxLabel, Vcl.ExtCtrls, Data.DB, Datasnap.DBClient, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, MidasLib;

type
  TfrmRichEditMailMergeDataBase = class(TfrmRichEditFrame)
    dsMails: TDataSource;
    cdsMail: TClientDataSet;
    cdsEmployeesPhotos: TClientDataSet;
    Grid: TcxGrid;
    tvEmployees: TcxGridDBTableView;
    tvEmployeesLastName: TcxGridDBColumn;
    tvEmployeesContactName: TcxGridDBColumn;
    GridLevel: TcxGridLevel;
    procedure RichEditControlMailMergeGetTargetDocument(Sender: TObject;
      const Args: TdxMailMergeGetTargetDocumentEventArgs);
  protected
    function GetDatabaseName: string;
    function GetDescription: string; override;
    function GetPhotosDatabaseName: string;
    function GetStartDocumentName: string; override;
    procedure InitDataBase;
    procedure InitUriService;
  public
    constructor Create(AOwner: TComponent; ARibbon: TdxRibbon); override;
  end;

var
  frmRichEditMailMergeDataBase: TfrmRichEditMailMergeDataBase;

implementation

{$R *.dfm}

uses
  dxFrames, FrameIDs, uStrsConst, dxRichEdit.Utils.UriStreamService,
  DBUriStreamProvider, RibbonRichEditForm;

{ TfrmRichEditMailMergeDataBase }

constructor TfrmRichEditMailMergeDataBase.Create(AOwner: TComponent; ARibbon: TdxRibbon);
begin
  inherited Create(AOwner, ARibbon);
  InitDataBase;
  InitUriService;
  tvEmployees.Controller.FocusedRowIndex := 0;
  tvEmployees.Controller.FocusedRow.Expand(True);
end;

function TfrmRichEditMailMergeDataBase.GetDatabaseName: string;
begin
  Result := GetStartDocumentPrefix + sdxMailMergeDatabaseBaseName;
end;

function TfrmRichEditMailMergeDataBase.GetDescription: string;
begin
  Result := sdxFrameMailMergeDatabase;
end;

function TfrmRichEditMailMergeDataBase.GetPhotosDatabaseName: string;
begin
  Result := GetStartDocumentPrefix + sdxMailMergePhotosDatabaseBaseName;
end;

function TfrmRichEditMailMergeDataBase.GetStartDocumentName: string;
begin
  Result := sdxMailMergeDatabaseStartDocumentName;
end;

procedure TfrmRichEditMailMergeDataBase.InitDataBase;
begin
  if FileExists(GetDatabaseName) then
    cdsMail.LoadFromFile(GetDatabaseName);
  if FileExists(GetPhotosDatabaseName) then
    cdsEmployeesPhotos.LoadFromFile(GetPhotosDatabaseName);
end;

procedure TfrmRichEditMailMergeDataBase.InitUriService;
var
  AService: IdxUriStreamService;
  AProvider: TdxDBUriStreamProvider;
begin
  AProvider := TdxDBUriStreamProvider.Create(cdsEmployeesPhotos, 'EmployeeID', 'Photo', 'dbimg://');
  AService := RichEditControl.InnerControl.GetService<IdxUriStreamService>;
  AService.RegisterProvider(AProvider);
end;

procedure TfrmRichEditMailMergeDataBase.RichEditControlMailMergeGetTargetDocument(
  Sender: TObject; const Args: TdxMailMergeGetTargetDocumentEventArgs);
var
  AForm: TfrmRibbonRichEditForm;
begin
  AForm := TfrmRibbonRichEditForm.Create(Self);
  Args.TargetDocument := AForm.RichEditControl.Document;
  AForm.Show;
end;

initialization
  dxFrameManager.RegisterFrame(RichEditMailMergeDatabaseID, TfrmRichEditMailMergeDataBase,
    RichEditMailMergeDatabaseFrameName, MailMergeGroupIndex, -1, -1);

finalization

end.
