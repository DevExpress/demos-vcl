unit uMasterDetailMailMerge;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxCustomFrame, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxLabel, Vcl.ExtCtrls, dxCore,
  dxCoreClasses, dxGDIPlusAPI, dxGDIPlusClasses, dxRichEdit.Types,
  dxRichEdit.Options, dxRichEdit.Control, dxHttpIndyRequest, dxBarBuiltInMenu,
  dxLayoutContainer, dxLayoutLookAndFeels, cxClasses, dxRichEdit.Platform.Win.Control,
  dxLayoutControl, Data.DB, Datasnap.DBClient, dxRibbon, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPSRichEditControlLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxPSCore, dxRichEdit.NativeApi, MidasLib, dxRichEdit.Control.SpellChecker, dxRichEdit.Dialogs.EventArgs,
  dxRichEdit.Control.Core;

type
  TfrmRichEditMasterDetailMailMerge = class(TfrmCustomFrame)
    LayoutControl: TdxLayoutControl;
    recTemplate: TdxRichEditControl;
    recMaster: TdxRichEditControl;
    recDetail: TdxRichEditControl;
    recResultingDocument: TdxRichEditControl;
    LayoutControlGroup_Root: TdxLayoutGroup;
    liTemplate: TdxLayoutItem;
    lgTemplate: TdxLayoutGroup;
    lgResultingDocument: TdxLayoutGroup;
    lgDetail: TdxLayoutGroup;
    lgMaster: TdxLayoutGroup;
    liMaster: TdxLayoutItem;
    liDetail: TdxLayoutItem;
    liResultingDocument: TdxLayoutItem;
    LayoutLookAndFeels: TdxLayoutLookAndFeelList;
    LayoutCxLookAndFeel: TdxLayoutCxLookAndFeel;
    cdsCategories: TClientDataSet;
    cdsDetail: TClientDataSet;
    cdsMaster: TClientDataSet;
    cdsTemplate: TClientDataSet;
    cdsTemplateFake: TIntegerField;
    dsDetail: TDataSource;
    dsMaster: TDataSource;
    dsTemplate: TDataSource;
    Printer: TdxComponentPrinter;
    cplMasterLink: TdxRichEditControlReportLink;
    cplDetailLink: TdxRichEditControlReportLink;
    cplResultLink: TdxRichEditControlReportLink;
    cplTemplateLink: TdxRichEditControlReportLink;
    procedure ResultingDocumentCalculateDocumentVariable(Sender: TObject;
      E: TdxCalculateDocumentVariableEventArgs);
    procedure TemplateMailMergeStarted(Sender: TObject;
      const Args: TdxMailMergeStartedEventArgs);
    procedure LayoutControlGroup_RootTabChanged(Sender: TObject);
    procedure ModifiedChanged(Sender: TObject);
  private
    function GetCategoriesDatabaseName: string;
    function GetDetailDocumentName: string;
    function GetMasterDatabaseName: string;
    function GetMasterDocumentName: string;
    function GetProductsDatabaseName: string;
    function GetStartDocumentPrefix: string;
    function GetTemplateDocumentName: string;
  protected
    procedure CalculateMaxAndMin(out AMax, AMin: Double);
    procedure DoMergeToNewDocument; virtual;
    function GetActiveRichEdit: TdxRichEditControl; override;
    function GetDescription: string; override;
    function GetID(const AValue: string): Integer;
    function GetReportLink: TBasedxReportLink; override;
    procedure DetailDocumentServerCalculateDocumentVariable(Sender: TObject;
      E: TdxCalculateDocumentVariableEventArgs);
    procedure FillTemplate;
    procedure InitDataBases;
    procedure InitDocuments;
    function LookUp(ASource: TClientDataSet; AKeyField, AField: string; AKeyValue: Variant): Variant;
    procedure MasterDocumentServerCalculateDocumentVariable(Sender: TObject;
      E: TdxCalculateDocumentVariableEventArgs);
    procedure MergeToNewDocument;
    function NeedMerge: Boolean; virtual;
  public
    constructor Create(AOwner: TComponent; ARibbon: TdxRibbon); override;

    procedure AfterShow; override;
  end;

var
  frmRichEditMasterDetailMailMerge: TfrmRichEditMasterDetailMailMerge;

implementation

{$R *.dfm}

uses
  System.Math, System.Variants, dxFrames, FrameIDs, uStrsConst, System.Rtti, dxRichEdit.Utils.UriStreamService,
  dxRichEdit.DocumentModel.RichEditDocumentServer, DBUriStreamProvider;

{ TfrmRichEditMasterDetailMailMerge }

constructor TfrmRichEditMasterDetailMailMerge.Create(AOwner: TComponent; ARibbon: TdxRibbon);
begin
  inherited Create(AOwner, ARibbon);
  InitDocuments;
  InitDataBases;
  FillTemplate;
end;

function TfrmRichEditMasterDetailMailMerge.GetCategoriesDatabaseName: string;
begin
  Result := GetStartDocumentPrefix + sdxMailMergeCategoriesDatabaseName;
end;

function TfrmRichEditMasterDetailMailMerge.GetDescription: string;
begin
  Result := sdxFrameMailMergeMasterDetail;
end;

function TfrmRichEditMasterDetailMailMerge.GetDetailDocumentName: string;
begin
  Result := GetStartDocumentPrefix + sdxMailMergeDetailStartDocumentName;
end;

function TfrmRichEditMasterDetailMailMerge.GetProductsDatabaseName: string;
begin
  Result := GetStartDocumentPrefix + sdxMailMergeProductsDatabaseName;
end;

function TfrmRichEditMasterDetailMailMerge.GetStartDocumentPrefix: string;
begin
  Result := ExtractFilePath(ParamStr(0)) + sdxStartDocumentPrefix;
end;

function TfrmRichEditMasterDetailMailMerge.GetMasterDatabaseName: string;
begin
  Result := GetStartDocumentPrefix + sdxMailMergeMasterDatabaseName;
end;

function TfrmRichEditMasterDetailMailMerge.GetMasterDocumentName: string;
begin
  Result := GetStartDocumentPrefix + sdxMailMergeMasterStartDocumentName;
end;

function TfrmRichEditMasterDetailMailMerge.GetTemplateDocumentName: string;
begin
  Result := GetStartDocumentPrefix + sdxMailMergeTemplateStartDocumentName;
end;

procedure TfrmRichEditMasterDetailMailMerge.AfterShow;
begin
  DoMergeToNewDocument;
end;

function TfrmRichEditMasterDetailMailMerge.GetActiveRichEdit: TdxRichEditControl;
begin
  if LayoutControlGroup_Root.ItemIndex = lgTemplate.Index then
    Result := recTemplate
  else
    if LayoutControlGroup_Root.ItemIndex = lgMaster.Index then
      Result := recMaster
    else
      if LayoutControlGroup_Root.ItemIndex = lgDetail.Index then
        Result := recDetail
      else
        Result := recResultingDocument;
end;

procedure TfrmRichEditMasterDetailMailMerge.CalculateMaxAndMin(out AMax, AMin: Double);
var
  ADataSet: TClientDataSet;
  AValue: Variant;
begin
  ADataSet := TClientDataSet.Create(nil);
  try
    ADataSet.CloneCursor(cdsDetail, False);
    ADataSet.First;
    AValue := ADataSet.FieldValues['UnitPrice'];
    AMax := AValue;
    AMin := AValue;
    while not ADataSet.Eof do
    begin
      ADataSet.Next;
      AValue := ADataSet.FieldValues['UnitPrice'];
      AMax := Max(AMax, AValue);
      AMin := Min(AMin, AValue);
    end;
  finally
    ADataSet.Free;
  end;
end;

procedure TfrmRichEditMasterDetailMailMerge.DoMergeToNewDocument;
begin
  recTemplate.MailMerge(recResultingDocument.Document);
  recTemplate.DocumentModelModified := False;
  recMaster.DocumentModelModified := False;
  recDetail.DocumentModelModified := False;
end;

function TfrmRichEditMasterDetailMailMerge.GetID(const AValue: string): Integer;
begin
  if TryStrToInt(AValue, Result) then
    Exit(Result);
  Result := -1;
end;

function TfrmRichEditMasterDetailMailMerge.GetReportLink: TBasedxReportLink;
begin
  if LayoutControlGroup_Root.ItemIndex = lgTemplate.Index then
    Result := cplTemplateLink
  else
    if LayoutControlGroup_Root.ItemIndex = lgMaster.Index then
      Result := cplMasterLink
    else
      if LayoutControlGroup_Root.ItemIndex = lgDetail.Index then
        Result := cplDetailLink
      else
        Result := cplResultLink;
end;

procedure TfrmRichEditMasterDetailMailMerge.DetailDocumentServerCalculateDocumentVariable(
  Sender: TObject; E: TdxCalculateDocumentVariableEventArgs);
var
  AProductId: Integer;
  AValue: Variant;
begin
  if E.Arguments.Count = 0 then
    Exit;
  AProductId := GetID(E.Arguments[0].Value);
  if AProductId = -1 then
    Exit;
  if E.VariableName = 'UnitPrice' then
  begin
    AValue := LookUp(cdsDetail, 'ProductID', 'UnitPrice', AProductId);
    E.Value := CurrToStrF(AValue, ffCurrency, 2);
    E.Handled := True;
  end;
end;

procedure TfrmRichEditMasterDetailMailMerge.FillTemplate;
begin
  cdsTemplate.Append;
  cdsTemplate.Fields[0].Value := 0;
  cdsTemplate.Post;
end;

procedure TfrmRichEditMasterDetailMailMerge.InitDataBases;
begin
  if FileExists(GetCategoriesDatabaseName) then
    cdsCategories.LoadFromFile(GetCategoriesDatabaseName);
  if FileExists(GetMasterDatabaseName) then
    cdsMaster.LoadFromFile(GetMasterDatabaseName);
  if FileExists(GetProductsDatabaseName) then
    cdsDetail.LoadFromFile(GetProductsDatabaseName);
  cdsTemplate.DisableControls;
  cdsMaster.DisableControls;
  cdsDetail.DisableControls;
  cdsCategories.DisableControls;
end;

procedure TfrmRichEditMasterDetailMailMerge.InitDocuments;
begin
  if FileExists(GetTemplateDocumentName) then
    recTemplate.Document.LoadDocument(GetTemplateDocumentName, TdxRichEditDocumentFormat.Undefined);
  if FileExists(GetMasterDocumentName) then
    recMaster.Document.LoadDocument(GetMasterDocumentName, TdxRichEditDocumentFormat.Undefined);
  if FileExists(GetDetailDocumentName) then
    recDetail.Document.LoadDocument(GetDetailDocumentName, TdxRichEditDocumentFormat.Undefined);
end;

procedure TfrmRichEditMasterDetailMailMerge.LayoutControlGroup_RootTabChanged(
  Sender: TObject);
var
  AIsResultDocument: Boolean;
begin
  AIsResultDocument := LayoutControlGroup_Root.ItemIndex = lgResultingDocument.Index;
  if AIsResultDocument then
    MergeToNewDocument;
end;

function TfrmRichEditMasterDetailMailMerge.LookUp(ASource: TClientDataSet;
  AKeyField, AField: string; AKeyValue: Variant): Variant;
var
  ADataSet: TClientDataSet;
begin
  ADataSet := TClientDataSet.Create(nil);
  try
    ADataSet.CloneCursor(ASource, True);
    Result := ADataSet.Lookup(AKeyField, AKeyValue, AField);
  finally
    ADataSet.Free;
  end;
end;

procedure TfrmRichEditMasterDetailMailMerge.MasterDocumentServerCalculateDocumentVariable(
  Sender: TObject; E: TdxCalculateDocumentVariableEventArgs);
var
  ACurrentCategoryID: Integer;
  AOptions: IdxRichEditMailMergeOptions;
  ADocumentServer: IdxRichEditDocumentServer;
  AMax, AMin: Double;
  AValue: Variant;
begin
  if E.Arguments.Count = 0 then
    Exit;
  ACurrentCategoryID := GetID(E.Arguments[0].Value);
  if ACurrentCategoryID = -1 then
    Exit;
  cdsDetail.Filter := 'CategoryID = ' + IntToStr(ACurrentCategoryID);
  cdsDetail.Filtered := True;
  if E.VariableName = 'Products' then
  begin
    ADocumentServer := recDetail.CreateDocumentServer;
    AOptions := recDetail.CreateMailMergeOptions;
    AOptions.MergeMode := TdxRichEditMergeMode.JoinTables;
    ADocumentServer.AddCalculateDocumentVariableHandler(DetailDocumentServerCalculateDocumentVariable);
    recDetail.MailMerge(AOptions, ADocumentServer.Document);
    ADocumentServer.RemoveCalculateDocumentVariableHandler(DetailDocumentServerCalculateDocumentVariable);
    E.Value := TValue.From(ADocumentServer);
    E.Handled := True;
  end;
  CalculateMaxAndMin(AMax, AMin);
  if E.VariableName = 'ItemCount' then
  begin
    E.Value := cdsDetail.RecordCount;
    E.Handled := True;
  end;
  if E.VariableName = 'LowestPrice' then
  begin
    E.Value :=  CurrToStrF(AMin, ffCurrency, 2);
    E.Handled := True;
  end;
  if E.VariableName = 'HighestPrice' then
  begin
    E.Value := CurrToStrF(AMax, ffCurrency, 2);
    E.Handled := True;
  end;
  if E.VariableName = 'TotalSales' then
  begin
    AValue := LookUp(cdsMaster, 'CategoryID', 'TotalSales', ACurrentCategoryID);
    E.Value := CurrToStrF(AValue, ffCurrency, 2);
    E.Handled := True;
  end;
end;

procedure TfrmRichEditMasterDetailMailMerge.MergeToNewDocument;
begin
  if NeedMerge then
    DoMergeToNewDocument;
end;

function TfrmRichEditMasterDetailMailMerge.NeedMerge: Boolean;
begin
  Result := recTemplate.DocumentModelModified or recMaster.DocumentModelModified or
    recDetail.DocumentModelModified;
end;

procedure TfrmRichEditMasterDetailMailMerge.ModifiedChanged(
  Sender: TObject);
begin
// do nothing
end;

procedure TfrmRichEditMasterDetailMailMerge.ResultingDocumentCalculateDocumentVariable(
  Sender: TObject; E: TdxCalculateDocumentVariableEventArgs);
var
  ADocumentServer: IdxRichEditDocumentServer;
begin
  if E.VariableName = 'Categories' then
  begin
    ADocumentServer := recMaster.CreateDocumentServer;
    ADocumentServer.AddCalculateDocumentVariableHandler(MasterDocumentServerCalculateDocumentVariable);
    recMaster.MailMerge(ADocumentServer.Document);
    ADocumentServer.RemoveCalculateDocumentVariableHandler(MasterDocumentServerCalculateDocumentVariable);
    E.Value := TValue.From(ADocumentServer);
    E.Handled := True;
  end;
end;

procedure TfrmRichEditMasterDetailMailMerge.TemplateMailMergeStarted(
  Sender: TObject; const Args: TdxMailMergeStartedEventArgs);
var
  AService: IdxUriStreamService;
  AProvider: TdxDBUriStreamProvider;
begin
  AProvider := TdxDBUriStreamProvider.Create(cdsCategories, 'CategoryID', 'Picture', 'dbimg://');
  AService := recMaster.InnerControl.GetService<IdxUriStreamService>;
  AService.RegisterProvider(AProvider);
end;

initialization
  dxFrameManager.RegisterFrame(RichEditMasterDetailMailMergeID, TfrmRichEditMasterDetailMailMerge,
    RichEditMasterDetailMailMergeFrameName, MailMergeGroupIndex, -1, -1);

finalization

end.
