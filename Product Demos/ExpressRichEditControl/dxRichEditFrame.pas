unit dxRichEditFrame;

interface

uses
  dxCustomFrame, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxCoreClasses, dxGDIPlusAPI, dxGDIPlusClasses,
  dxRichEdit.Types, dxRichEdit.Options, dxRichEdit.Control, dxHttpIndyRequest,
  dxBarBuiltInMenu, dxRichEdit.Platform.Win.Control, cxLabel, System.Classes, Vcl.Controls,
  Vcl.ExtCtrls, dxRibbon, dxRichEdit.OpenXML, dxRichEdit.HTML, dxRichEdit.NativeApi, dxRichEdit.DOC, dxCore,
  dxRichEdit.Control.SpellChecker, dxRichEdit.Dialogs.EventArgs, dxRichEdit.Control.Core, dxLayoutContainer, cxClasses,
  dxLayoutControl, dxLayoutLookAndFeels;

type
  TfrmRichEditFrame = class(TfrmCustomFrame)
    RichEditControl: TdxRichEditControl;
    procedure RichEditControlSelectionChanged(Sender: TObject);
  protected
    function GetActiveRichEdit: TdxRichEditControl; override;
    function GetPrintableComponent: TComponent; override;
    function GetStartDocumentName: string; virtual;
    function GetStartDocumentPrefix: string; virtual;
    procedure ReloadDocument;
    procedure UpdateFloatingPictureContext;
    procedure UpdateHeaderAndFooterContext;
    procedure UpdateRibbonContextsStates;
    procedure UpdateTableContext;
  public
    constructor Create(AOwner: TComponent; ARibbon: TdxRibbon); override;

    procedure AfterShow; override;
  end;

var
  frmRichEditFrame: TfrmRichEditFrame;

implementation

{$R *.dfm}

uses
  Winapi.Windows, System.SysUtils, Winapi.ShellAPI, uStrsConst;

{ TfrmRichEditFrame }

constructor TfrmRichEditFrame.Create(AOwner: TComponent; ARibbon: TdxRibbon);
var
  ADocumentName: string;
begin
  inherited Create(AOwner, ARibbon);
  ADocumentName := GetStartDocumentPrefix + GetStartDocumentName;
  if FileExists(ADocumentName) then
    RichEditControl.Document.LoadDocument(ADocumentName, TdxRichEditDocumentFormat.Undefined);
end;

procedure TfrmRichEditFrame.AfterShow;
begin
  inherited AfterShow;
  UpdateRibbonContextsStates;
end;

function TfrmRichEditFrame.GetActiveRichEdit: TdxRichEditControl;
begin
  Result := RichEditControl;
end;

function TfrmRichEditFrame.GetPrintableComponent: TComponent;
begin
  Result := RichEditControl;
end;

function TfrmRichEditFrame.GetStartDocumentName: string;
begin
  Result := '';
end;

function TfrmRichEditFrame.GetStartDocumentPrefix: string;
begin
  Result := ExtractFilePath(ParamStr(0)) + sdxStartDocumentPrefix;
end;

procedure TfrmRichEditFrame.ReloadDocument;
var
  ADocumentName: string;
begin
  ADocumentName := RichEditControl.Options.DocumentSaveOptions.CurrentFileName;
  if FileExists(ADocumentName) then
    RichEditControl.Document.LoadDocument(ADocumentName, TdxRichEditDocumentFormat.Undefined);
end;

procedure TfrmRichEditFrame.UpdateFloatingPictureContext;
var
  APictureContext: TdxRibbonContext;
begin
  APictureContext := Ribbon.Contexts.Find('Picture Tools');
  APictureContext.Visible := RichEditControl.IsFloatingObjectSelected;
end;

procedure TfrmRichEditFrame.UpdateHeaderAndFooterContext;
var
  AHeaderAndFooterContext: TdxRibbonContext;
begin
  AHeaderAndFooterContext := Ribbon.Contexts.Find('Header & Footer Tools');
  AHeaderAndFooterContext.Visible := RichEditControl.IsSelectionInHeaderOrFooter;
end;

procedure TfrmRichEditFrame.UpdateRibbonContextsStates;
begin
  UpdateFloatingPictureContext;
  UpdateHeaderAndFooterContext;
  UpdateTableContext;
end;

procedure TfrmRichEditFrame.UpdateTableContext;
var
  ATableToolsContext: TdxRibbonContext;
begin
  ATableToolsContext := Ribbon.Contexts.Find('Table Tools');
  ATableToolsContext.Visible := RichEditControl.IsSelectionInTable;
end;

procedure TfrmRichEditFrame.RichEditControlSelectionChanged(Sender: TObject);
begin
  UpdateRibbonContextsStates;
end;

end.
