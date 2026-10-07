unit uAIAssistant;

interface

uses
  System.Classes, Vcl.Controls, dxRichEditFrame, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxCore, dxCoreClasses, dxRibbon,
  dxGDIPlusAPI, dxGDIPlusClasses, dxRichEdit.Types, dxRichEdit.Options,
  dxRichEdit.Control, dxHttpIndyRequest, dxBarBuiltInMenu,
  dxRichEdit.Platform.Win.Control, cxLabel, Vcl.ExtCtrls, dxRichEdit.NativeApi, dxRichEdit.Control.SpellChecker,
  dxRichEdit.Dialogs.EventArgs, cxClasses, dxLayoutLookAndFeels, dxRichEdit.Control.Core, dxLayoutContainer,
  dxLayoutControl, dxAI, dxAI.Commands.Text;

type
  TfrmRichEditAIAssistant = class(TfrmRichEditFrame)
  protected
    function GetDescription: string; override;
    function GetStartDocumentName: string; override;
  public
    constructor Create(AOwner: TComponent; ARibbon: TdxRibbon); override;
  end;

var
  frmRichEditAIAssistant: TfrmRichEditAIAssistant;

implementation

{$R *.dfm}

uses
  dxFrames, FrameIDs, uStrsConst, dxAI.Commands.Consts, dxAI.ChatClient.Azure;

{ TfrmRichEditFloatingObject }

constructor TfrmRichEditAIAssistant.Create(AOwner: TComponent; ARibbon: TdxRibbon);
begin
  inherited;
  TdxAIChatClients.AddChatClient(TdxAIAzureChatClient.Create('DEMO', 'https://public-api.devexpress.com/demo-OpenAI', 'demo-mini', '2024-02-01'));
end;

function TfrmRichEditAIAssistant.GetDescription: string;
begin
  Result := sdxFrameAIAssistant;
end;

function TfrmRichEditAIAssistant.GetStartDocumentName: string;
begin
  Result := sdxAIAssistantStartDocumentName;
end;

initialization
  dxFrameManager.RegisterFrame(RichEditAIAssistantID, TfrmRichEditAIAssistant,
    RichEditAIAssistantFrameName, HighlightFeaturesGroupIndex, EditingFeaturesGroupIndex, -1);

finalization

end.
