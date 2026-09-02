unit uTableOfContents;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxRichEditFrame, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxCore, dxCoreClasses, dxGDIPlusAPI, dxGDIPlusClasses,
  dxRichEdit.Types, dxRichEdit.Options, dxRichEdit.Control, dxRibbon,
  dxRichEdit.Control.SpellChecker, dxRichEdit.Platform.Win.Control, cxLabel,
  Vcl.ExtCtrls, dxLayoutContainer, cxClasses, dxLayoutControl, dxCustomFrame,
  dxLayoutLookAndFeels, Data.DB, Datasnap.DBClient, cxNavigator, cxDBNavigator, MidasLib, dxRichEdit.NativeApi;

type
  TfrmRichEditTableOfContents = class(TfrmCustomFrame)
    lcMainGroup_Root: TdxLayoutGroup;
    lcMain: TdxLayoutControl;
    recTemplate: TdxRichEditControl;
    liTemplate: TdxLayoutItem;
    recTOC: TdxRichEditControl;
    liTOC: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutCxLookAndFeel1: TdxLayoutCxLookAndFeel;
    lgTemplate: TdxLayoutGroup;
    cdsEmployees: TClientDataSet;
    dsEmployees: TDataSource;
    dxLayoutItem1: TdxLayoutItem;
    DBNavigator: TcxDBNavigator;
    procedure lcMainGroup_RootTabChanged(Sender: TObject);
  private
    function GetDatabaseName: string;
    function GetStartDocumentPrefix: string;
    function GetTemplateDocumentName: string;
    procedure InitDataBase;
    procedure InitDocuments;
    procedure InitUriService;
    procedure InsertContentHeading;
    procedure MergeToNewDocument(AForce: Boolean = False);
  protected
    procedure DoMergeToNewDocument; virtual;
    function GetActiveRichEdit: TdxRichEditControl; override;
    function GetDescription: string; override;
    function NeedMerge: Boolean; virtual;
  public
    procedure AfterConstruction; override;
    procedure AfterShow; override;
  end;

var
  frmRichEditTableOfContents: TfrmRichEditTableOfContents;

implementation

uses
  dxFrames, dxCoreGraphics, FrameIDs, uStrsConst, DBUriStreamProvider,
  dxRichEdit.Utils.UriStreamService;

{$R *.dfm}

{ TfrmRichEditTableOfContents }

procedure TfrmRichEditTableOfContents.AfterShow;
begin
  inherited AfterShow;
  DoMergeToNewDocument;
end;

procedure TfrmRichEditTableOfContents.AfterConstruction;
begin
  InitDataBase;
  InitUriService;
  InitDocuments;
end;

procedure TfrmRichEditTableOfContents.DoMergeToNewDocument;
var
  AOptions: IdxRichEditMailMergeOptions;
  AField: IdxRichEditField;
  AParagraphStyle: IdxRichEditParagraphStyle;
begin
  recTOC.CreateNewDocument;
  recTOC.Document.BeginUpdate;
  try
    AOptions := recTemplate.CreateMailMergeOptions;
    AOptions.MergeMode := TdxRichEditMergeMode.NewSection;
    recTemplate.MailMerge(AOptions, recTOC.Document);
    recTemplate.DocumentModelModified := False;
    InsertContentHeading;

    AField := recTOC.Document.Fields.CreateField(recTOC.Document.Paragraphs[1].Range.Start, 'TOC \h');
    recTOC.Document.InsertSection(AField.Range.&End);
    AField.Update;

    AParagraphStyle := recTOC.Document.ParagraphStyles['TOC 1'];
    AParagraphStyle.CharacterProperties.Bold := True;

    recTOC.Document.CaretPosition := recTOC.Document.Range.Start;
  finally
    recTOC.Document.EndUpdate;
  end;
  recTemplate.DocumentModelModified := False;
  recTOC.DocumentModelModified := False;
end;

function TfrmRichEditTableOfContents.GetActiveRichEdit: TdxRichEditControl;
begin
  if lcMainGroup_Root.ItemIndex = lgTemplate.Index then
    Result := recTemplate
  else
    Result := recTOC;
end;

function TfrmRichEditTableOfContents.NeedMerge: Boolean;
begin
  Result := recTemplate.DocumentModelModified or recTOC.DocumentModelModified;
end;

function TfrmRichEditTableOfContents.GetDatabaseName: string;
begin
  Result := GetStartDocumentPrefix + sdxTOCEmployeesDatabaseName;
end;

function TfrmRichEditTableOfContents.GetDescription: string;
begin
  Result := sdxFrameTableOfContents;
end;

function TfrmRichEditTableOfContents.GetStartDocumentPrefix: string;
begin
  Result := ExtractFilePath(ParamStr(0)) + sdxStartDocumentPrefix;
end;

function TfrmRichEditTableOfContents.GetTemplateDocumentName: string;
begin
  Result := GetStartDocumentPrefix + sdxTableOfContentsTemplateStartDocumentName;
end;

procedure TfrmRichEditTableOfContents.InitDataBase;
begin
  if FileExists(GetDatabaseName) then
    cdsEmployees.LoadFromFile(GetDatabaseName);
end;

procedure TfrmRichEditTableOfContents.InitDocuments;
begin
  if FileExists(GetTemplateDocumentName) then
    recTemplate.Document.LoadDocument(GetTemplateDocumentName, TdxRichEditDocumentFormat.Undefined);
end;

procedure TfrmRichEditTableOfContents.InitUriService;
var
  AService: IdxUriStreamService;
  AProvider: TdxDBUriStreamProvider;
begin
  AProvider := TdxDBUriStreamProvider.Create(cdsEmployees, 'EmployeeID', 'Photo', 'dbimg://');
  AService := recTemplate.InnerControl.GetService<IdxUriStreamService>;
  AService.RegisterProvider(AProvider);
end;

procedure TfrmRichEditTableOfContents.InsertContentHeading;
var
  AHRange: IdxRichEditDocumentRange;
  ACharProperties: IdxRichEditCharacterProperties;
  ATargetDocument: IdxRichEditDocument;
begin
  ATargetDocument := recTOC.Document;
  AHRange := ATargetDocument.InsertText(ATargetDocument.Range.Start, 'Contents'#13#10);
  ACharProperties := ATargetDocument.BeginUpdateCharacters(AHRange);
  try
    ACharProperties.FontSize := 16;
    ACharProperties.ForeColor := TdxAlphaColors.SteelBlue;
  finally
    ATargetDocument.EndUpdateCharacters(ACharProperties);
  end;
  ATargetDocument.Paragraphs[0].Style := ATargetDocument.ParagraphStyles[0];
  ATargetDocument.Paragraphs[0].Alignment := TdxRichEditParagraphAlignment.Center;
end;

procedure TfrmRichEditTableOfContents.lcMainGroup_RootTabChanged(
  Sender: TObject);
var
  AIsResultDocument: Boolean;
begin
  AIsResultDocument := lcMainGroup_Root.ItemIndex = liTOC.Index;
  if AIsResultDocument then
    MergeToNewDocument;
end;

procedure TfrmRichEditTableOfContents.MergeToNewDocument(AForce: Boolean = False);
begin
  if NeedMerge then
    DoMergeToNewDocument;
end;

initialization
  dxFrameManager.RegisterFrame(RichEditTableOfContentsID, TfrmRichEditTableOfContents,
    RichEditTableOfContentsFrameName, HighlightFeaturesGroupIndex, MailMergeGroupIndex, -1);

end.
