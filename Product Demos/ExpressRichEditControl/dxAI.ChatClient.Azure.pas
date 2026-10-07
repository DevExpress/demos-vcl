unit dxAI.ChatClient.Azure;

{$I cxVer.inc}

interface

uses
  System.SysUtils, System.Classes, System.Generics.Collections, System.Threading, System.Net.HttpClient, System.JSON,
  dxAI;

type
  TdxAIJsonConverter = class
  public
    class function ChatMessageToJson(AChatMessage: TdxAIChatMessage): TJSONValue;
    class function ChatMessagesToJson(AChatMessages: IEnumerable<TdxAIChatMessage>): TJSONValue;
    class procedure ChatOptionsToJson(AChatMessage: TJSONValue; AChatOptions: TdxAIChatOptions);
  end;

  TdxAIAzureChatClient = class(TdxAIChatClient)
  private
    FApiToken: string;
    FEndPointURI: string;
    FDeploymentName: string;
    FApiVersion: string;
    FFuture: IFuture<TdxAIChatResponse>;
    function GetFullyQualifiedURI: string;
    procedure DataEvent(const Sender: TObject; AContentLength: Int64; ACount: Int64; var Abort: Boolean);
  protected
    function IsCancelled: Boolean;
  public
    constructor Create(const AApiToken, AEndPointURI, ADeploymentName, AApiVersion: string); reintroduce;
    function GetResponseAsync(const Messages: IEnumerable<TdxAIChatMessage>; const Options: TdxAIChatOptions;
      const CancellationToken: TObject = nil): IFuture<TdxAIChatResponse>; override;
  end;

implementation

{ TdxAIJsonConverter }

class function TdxAIJsonConverter.ChatMessagesToJson(AChatMessages: IEnumerable<TdxAIChatMessage>): TJSONValue;
var 
  AChatMessage: TdxAIChatMessage;
begin
  if not Assigned(AChatMessages) then
  begin
    Result := TJSONNull.Create;
    Exit;
  end;
  Result := TJSONArray.Create;
  try
    for AChatMessage in AChatMessages do
      TJSONArray(Result).AddElement(ChatMessageToJson(AChatMessage));
  except
    FreeAndNil(Result);
    raise;
  end;
end;

class function TdxAIJsonConverter.ChatMessageToJson(AChatMessage: TdxAIChatMessage): TJSONValue;
var
  AAllContent: string;
  AContent: TdxAIContent;
begin
  if not Assigned(AChatMessage) then
  begin
    Result := TJSONNull.Create;
    Exit;
  end;
  Result := TJSONObject.Create;
  try
    TJSONObject(Result).AddPair('role', AChatMessage.Role.Value);
    AAllContent := '';
    for AContent in AChatMessage.Contents do
      if AContent is TdxAITextContent then
        AAllContent := AAllContent + TdxAITextContent(AContent).Text;
    if AAllContent <> '' then
      TJSONObject(Result).AddPair('content', AAllContent);
    if AChatMessage.AuthorName <> '' then
      TJSONObject(Result).AddPair('name', AChatMessage.AuthorName);
  except
    FreeAndNil(Result);
    raise;
  end;
end;

class procedure TdxAIJsonConverter.ChatOptionsToJson(AChatMessage: TJSONValue; AChatOptions: TdxAIChatOptions);
begin
  if Assigned(AChatMessage) and Assigned(AChatOptions) then
    TJSONObject(AChatMessage).AddPair('max_tokens', TJSONNumber.Create(AChatOptions.MaxTokens));
end;

{ TdxAIAzureChatClient }

constructor TdxAIAzureChatClient.Create(const AApiToken, AEndPointURI, ADeploymentName, AApiVersion: string);
begin
  inherited Create;
  FApiToken := AApiToken;
  FEndPointURI := AEndPointURI;
  FDeploymentName := ADeploymentName;
  FApiVersion := AApiVersion;
  FFuture := nil;
end;

function TdxAIAzureChatClient.GetFullyQualifiedURI: string;
begin
  Result := FEndPointURI + '/openai/deployments/' + FDeploymentName + '/chat/completions?api-version=' + FApiVersion;
end;

function TdxAIAzureChatClient.GetResponseAsync(const Messages: IEnumerable<TdxAIChatMessage>;
  const Options: TdxAIChatOptions; const CancellationToken: TObject = nil): IFuture<TdxAIChatResponse>;
var
  ARequestJson: TJSONValue;
begin
  ARequestJson := TJSONObject.Create;
  TJSONObject(ARequestJson).AddPair('messages', TdxAIJsonConverter.ChatMessagesToJson(Messages));
  TdxAIJsonConverter.ChatOptionsToJson(ARequestJson, Options);
  FFuture := TTask.Future<TdxAIChatResponse>(
    function: TdxAIChatResponse
    var
      ARequest: IHttpRequest;
      AResponse: IHttpResponse;
      AClient: THttpClient;
      ASourceStream: TStringStream;
      AContent: TBytesStream;
      AResponseJson: TJSONObject;
      AChoiceJson: TJsonValue;
      AChoicesJson: TJSONArray;
      AMessageJson: TJSONValue;
      AResponseMessage: TdxAIChatMessage;
    begin
      Result := nil;
      AClient := THttpClient.Create;
      try
        AClient.OnSendData := DataEvent;
        AClient.OnReceiveData := DataEvent;
        ARequest := AClient.GetRequest('POST', GetFullyQualifiedURI);
        ARequest.SetHeaderValue('User-Agent', 'x-ms-client-request-id');
        ARequest.SetHeaderValue('Content-Type', 'application/json');
        ARequest.SetHeaderValue('Authorization','Bearer ' + FApiToken);
{$IFDEF DELPHI101BERLIN}
        ASourceStream := TStringStream.Create(ARequestJson.ToString, TEncoding.UTF8, False);
{$ELSE}
        ASourceStream := TStringStream.Create(StringReplace(ARequestJson.ToString, #13#10, '\r\n', [rfReplaceAll]), TEncoding.UTF8, False); 
{$ENDIF}
        try
          ARequest.SourceStream := ASourceStream;
          AContent := TBytesStream.Create;
          try
            AResponse := AClient.Execute(ARequest, AContent);
            if IsCancelled then
              Exit;
            if AResponse.StatusCode = 429 then
            begin
              AResponseMessage := TdxAIChatMessage.Create(TdxAIChatRole.Assistant,
                'You have reached demo request limit. Further requests are temporarily suspended.'
                + #13#10'Please try again in a few minutes. Thank you for your patience and understanding.'
                + #13#10#13#10'HTTP request failed with status code: 429');
              Result := TdxAIChatResponse.Create(AResponseMessage, TdxAIChatFinishReason.Error);
              Exit;
            end;
            if AResponse.StatusCode <> 200 then
            begin
              AResponseMessage := TdxAIChatMessage.Create(TdxAIChatRole.Assistant,
                'HTTP request failed with status code: ' + IntToStr(AResponse.StatusCode));
              Result := TdxAIChatResponse.Create(AResponseMessage, TdxAIChatFinishReason.Error);
              Exit;
            end;
            AResponseJson := TJSONObject.Create;
            try
              AResponseJson.Parse(AContent.Bytes, 0, AContent.Size);
              AChoicesJson := TJSONArray(AResponseJson.Values['choices']);
              for AChoiceJson in AChoicesJson do                                                        
              begin
                AMessageJson := AChoiceJson.GetValue<TJsonValue>('message');
                AResponseMessage := TdxAIChatMessage.Create(TdxAIChatRole.Assistant, AMessageJson.GetValue<string>('content')); 
                Result := TdxAIChatResponse.Create(AResponseMessage, TdxAIChatFinishReason.Stop);                               
              end;
            finally
              FreeAndNil(AResponseJson);
            end;
          finally
            FreeAndNil(AContent);
          end;
        finally
          FreeAndNil(ASourceStream);
        end;
      finally
        FreeAndNil(AClient);
        FreeAndNil(ARequestJson);
      end;
    end
  );
  Result := FFuture;
end;

function TdxAIAzureChatClient.IsCancelled: Boolean;
begin
  Result := (FFuture = nil) or (FFuture.Status = TTaskStatus.Canceled);
end;

procedure TdxAIAzureChatClient.DataEvent(const Sender: TObject; AContentLength: Int64; ACount: Int64; var Abort: Boolean);
begin
  Abort := IsCancelled;
end;

end.
