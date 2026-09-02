unit uDocumentEditor;

{$I cxVer.inc}

interface

uses
{$IFDEF DELPHI16}
  System.UITypes,
{$ENDIF}
  Vcl.Forms, System.Generics.Defaults, System.Generics.Collections,
  dxRibbon, dxRibbonForm, dxCloudStorage, System.Classes, cxControls, cxClasses, cxLookAndFeels, dxMessageDialog;

type
  TDocumentEditorOnAfterSaveDocumentEvent = procedure(Sender: TObject; const AFileName: string; AStream: TStream; var AHandled: Boolean) of object;

  TEditorInfo = record
   FileName: string;
   Stream: TStream;
   WindowState: TWindowState;
  end;

  { TDocumentEditor }

  TDocumentEditorClass = class of TDocumentEditor;
  TDocumentEditor = class(TdxRibbonForm)
  strict private
    FFileName: string;
    FOnAfterSaveDocumentEvent: TDocumentEditorOnAfterSaveDocumentEvent;

    function GetFileExtension: string;
  protected
    procedure DoClose(var Action: TCloseAction); override;
    procedure LookAndFeelChanged; override;

    function HasChanges: Boolean; virtual;
    procedure DoSave(AStream: TStream); virtual;
    procedure Load(AStream: TStream); virtual; abstract;
    procedure Save;
    procedure AfterSaveDocument(const AFileName: string; AStream: TStream);

    property FileExtension: string read GetFileExtension;
  public
    constructor CreateEx(AOwner: TComponent; const AInfo: TEditorInfo);
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    function CloseQuery: Boolean; override;
    procedure SaveStreamToFile(const AFileName: string; AStream: TStream);

    property OnAfterSaveDocumentEvent: TDocumentEditorOnAfterSaveDocumentEvent read FOnAfterSaveDocumentEvent write FOnAfterSaveDocumentEvent;
  end;

  { TDocumentEditorFactory }

  TDocumentEditorFactory = class
  strict private
    FEditors: TDictionary<string, TDocumentEditorClass>;
  public
    constructor Create;
    destructor Destroy; override;

    function TryGetEditor(const AExtension: string; out AClass: TDocumentEditorClass): Boolean;
    procedure RegisterEditor(const AExtension: string; AClass: TDocumentEditorClass);
    procedure UnregisterEditor(const AExtension: string);
  end;

function DocumentEditorFactory: TDocumentEditorFactory;

implementation

uses
  System.IOUtils, Vcl.Dialogs, System.SysUtils, Vcl.Controls;

var
  FDocumentEditorRepository: TDocumentEditorFactory = nil;

function DocumentEditorFactory: TDocumentEditorFactory;
begin
  if FDocumentEditorRepository = nil then
    FDocumentEditorRepository := TDocumentEditorFactory.Create;
  Result := FDocumentEditorRepository;
end;

{ TDocumentEditor }

constructor TDocumentEditor.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  RootLookAndFeel.AddChangeListener(Self);
  LookAndFeelChanged;
end;

constructor TDocumentEditor.CreateEx(AOwner: TComponent; const AInfo: TEditorInfo);
begin
  Create(AOwner);
  FFileName := AInfo.FileName;
  Caption := FFileName;
  AInfo.Stream.Position := 0;
  Load(AInfo.Stream);
  DisableAero := True;
  Width := 1024;
  Position := poOwnerFormCenter;
  WindowState := AInfo.WindowState;
  Show;
end;

destructor TDocumentEditor.Destroy;
begin
  if RootLookAndFeel <> nil then
    RootLookAndFeel.RemoveChangeListener(Self);
  inherited Destroy;
end;

procedure TDocumentEditor.DoClose(var Action: TCloseAction);
begin
  Action := caFree;
  inherited DoClose(Action);
end;

function TDocumentEditor.HasChanges: Boolean;
begin
  Result := False;
end;

procedure TDocumentEditor.DoSave(AStream: TStream);
begin
// do nothing
end;

procedure TDocumentEditor.Save;
var
  AStream: TMemoryStream;
begin
  AStream := TMemoryStream.Create;
  try
    DoSave(AStream);
    AStream.Position := 0;
    AfterSaveDocument(FFileName, AStream);
  finally
    AStream.Free;
  end;
end;

procedure TDocumentEditor.AfterSaveDocument(const AFileName: string; AStream: TStream);
var
  AHandled: Boolean;
begin
  AHandled := False;
  if Assigned(FOnAfterSaveDocumentEvent) then
    FOnAfterSaveDocumentEvent(Self, AFileName, AStream, AHandled);
  if not AHandled then
    SaveStreamToFile(AFileName, AStream);
end;

procedure TDocumentEditor.SaveStreamToFile(const AFileName: string; AStream: TStream);
var
  AFileStream: TFileStream;
begin
  AFileStream := TFileStream.Create(AFileName, fmCreate);
  try
    AFileStream.CopyFrom(AStream, -1);
  finally
    AFileStream.Free;
  end;
end;

function TDocumentEditor.CloseQuery: Boolean;
begin
  Result := True;
  if HasChanges then
    case dxMessageDlg(Format('Want to save your changes to %s?', [FFileName]), mtConfirmation, mbYesNoCancel) of
      mrYes:
        begin
          Save;
          Result := True;
        end;
      mrNo:
        Result := True;
    else
      Result := False;
    end;
end;

function TDocumentEditor.GetFileExtension: string;
begin
  Result := TPath.GetExtension(FFileName);
end;

procedure TDocumentEditor.LookAndFeelChanged;
begin
  inherited LookAndFeelChanged;
  TdxRibbon(RibbonControl).ColorSchemeName := RootLookAndFeel.SkinName;
end;

{ TDocumentEditorFactory }

constructor TDocumentEditorFactory.Create;
begin
  inherited Create;
  FEditors := TDictionary<string, TDocumentEditorClass>.Create;
end;

destructor TDocumentEditorFactory.Destroy;
begin
  FreeAndNil(FEditors);
  inherited Destroy;
end;

function TDocumentEditorFactory.TryGetEditor(const AExtension: string; out AClass: TDocumentEditorClass): Boolean;
begin
  Result := FEditors.TryGetValue(AExtension, AClass);
end;

procedure TDocumentEditorFactory.RegisterEditor(const AExtension: string; AClass: TDocumentEditorClass);
begin
  FEditors.AddOrSetValue(AExtension, AClass);
end;

procedure TDocumentEditorFactory.UnregisterEditor(const AExtension: string);
begin
  FEditors.Remove(AExtension);
end;

initialization

finalization
  FreeAndNil(FDocumentEditorRepository);

end.
