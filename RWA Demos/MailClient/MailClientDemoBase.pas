unit MailClientDemoBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Data.DB, System.Types,
  Vcl.Dialogs, dxPSCore, dxDemoUtils, System.Contnrs, dxCoreClasses, cxClasses, dxBar, dxRibbon,
  Vcl.ActnList, dxPScxEditorProducers, dxPScxExtEditorProducers, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPScxPageControlProducer, dxSkinsCore, dxSkinsdxBarPainter, dxMessageDialog,
  dxSkinscxPCPainter, dxPSPrVwAdv, dxPSPrVwRibbon, dxSkinsdxRibbonPainter, dxShellDialogs,
  MailClientDemoData, dxPScxExtComCtrlsLnk, dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxSchedulerLnk, System.Actions,
  dxLayoutLookAndFeels;

const
  IDMails = 0;
  IDCalendar = 1;
  IDContacts = 2;
  IDTasks = 3;
  IDFirst = IDMails;
  IDLast = IDTasks;

type
  TMailClientDemoBaseFrame = class(TFrame)
    bmFrame: TdxBarManager;
    alFrame: TActionList;
    ComponentPrinter: TdxComponentPrinter;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    lslfMain: TdxLayoutSkinLookAndFeel;
    procedure ComponentPrinterBeforePreview(Sender: TObject; AReportLink: TBasedxReportLink);
  private
    FOnUpdateContentZoomState: TNotifyEvent;
    procedure InternalAssignRibbonMenu(ATab: TdxRibbonTab; AIsContextMenu: Boolean);
    function GetRibbonTab: TdxRibbonTab;
  protected
    FFirstActivate: Boolean;
    procedure BeforeActivate; virtual;
    procedure AfterActivate; virtual;
    procedure BeforeDeactivate; virtual;
    procedure AfterDeactivate; virtual;

    procedure AssignRibbonMenu;
    procedure DoExport(AExportType: TSupportedExportType; const AFileName: string);
    procedure DoUpdateContentZoomState;
    procedure ExportToPDF(const AFileName: string);
    procedure ExportToHTML(const AFileName: string); virtual; abstract;
    procedure ExportToTXT(const AFileName: string); virtual; abstract;
    procedure ExportToXLS(const AFileName: string); virtual; abstract;
    procedure ExportToXLSX(const AFileName: string); virtual; abstract;
    procedure ExportToXML(const AFileName: string); virtual; abstract;
    function GetCaption: string; virtual;
    function GetContextRibbonTab: TdxRibbonTab; virtual;
    function GetContentZoomPosition: Integer; virtual;
    function GetDataSet: TDataSet; virtual;
    class function GetFrameID: Integer; virtual; abstract;
    function GetParentBarManager: TdxBarManager;
    function GetViewStyleNormal: Boolean; virtual;
    procedure RefreshMenu; virtual;
    procedure SetContentZoomPosition(Value: Integer); virtual;
    procedure SetViewStyleNormal(const Value: Boolean); virtual;
  public
    constructor Create(AOwner: TComponent); override;

    function GetItemCountInfo: string; virtual;
    function IsActive: Boolean;
    function IsContentZoomSupport: Boolean; virtual;
    procedure BeginFiltering; virtual; abstract;
    procedure EndFiltering; virtual; abstract;
    procedure ExportTo(AExportType: TSupportedExportType);
    procedure RibbonLayoutChanged; virtual;
    procedure SkinChanged(ASkinName: string); virtual;
    procedure Translate; virtual;

    property Caption: string read GetCaption;
    property ContentZoomPosition: Integer read GetContentZoomPosition write SetContentZoomPosition;
    property ContextRibbonTab: TdxRibbonTab read GetContextRibbonTab;
    property DataSet: TDataSet read GetDataSet;
    property RibbonTab: TdxRibbonTab read GetRibbonTab;
    property OnUpdateContentZoomState: TNotifyEvent read FOnUpdateContentZoomState write FOnUpdateContentZoomState;
    property ViewStyleNormal: Boolean read GetViewStyleNormal write SetViewStyleNormal;
  end;

  TMailClientDemoBaseFrameClass = class of TMailClientDemoBaseFrame;

  TMailClientDemoFrameManager = class
  private
    FActiveFrame: TMailClientDemoBaseFrame;
    FFrameClasses: TClassList;
    FFrames: TComponentList;
    function GetFrameClass(AIndex: Integer): TMailClientDemoBaseFrameClass;
    function GetFrameClassCount: Integer;
    function GetFrameCount: Integer;
    function GetFrame(AIndex: Integer): TMailClientDemoBaseFrame;
    procedure DestroyFrames;
  protected
    function CreateFrame(AFrameID: Integer): TMailClientDemoBaseFrame;
    procedure SetActiveFrame(AFrame: TMailClientDemoBaseFrame; AParent: TWinControl);
    function FindFrame(AFrameID: Integer): TMailClientDemoBaseFrame;
    function FindFrameClass(AFrameID: Integer): TMailClientDemoBaseFrameClass;
  public
    constructor Create;
    destructor Destroy; override;

    procedure RegisterFrame(AFrameClass: TMailClientDemoBaseFrameClass);
    procedure UnregisterFrame(AFrameClass: TMailClientDemoBaseFrameClass);

    procedure ShowFrame(AFrameID: Integer; AParent: TWinControl);
    procedure Translate;

    property ActiveFrame: TMailClientDemoBaseFrame read FActiveFrame;
    property FrameClassCount: Integer read GetFrameClassCount;
    property FrameClasses[AIndex: Integer]: TMailClientDemoBaseFrameClass read GetFrameClass;
    property FrameCount: Integer read GetFrameCount;
    property Frames[AIndex: Integer]: TMailClientDemoBaseFrame read GetFrame; default;
  end;

function dxMailClientDemoFrameManager: TMailClientDemoFrameManager;

implementation

{$R *.dfm}
uses
  Winapi.ShellAPI, dxPScxExtCommon, dxMailClientDemoUtils, dxRibbonSkins,
  MailClientDemoMain, cxControls;

type
  TdxBarAccess = class(TdxBar);

var
  FMailClientDemoFrameManager: TMailClientDemoFrameManager;

function dxMailClientDemoFrameManager: TMailClientDemoFrameManager;
begin
  if FMailClientDemoFrameManager = nil then
    FMailClientDemoFrameManager := TMailClientDemoFrameManager.Create;
  Result := FMailClientDemoFrameManager;
end;

{ TMailClientDemoBaseFrame }

constructor TMailClientDemoBaseFrame.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  Align := alClient;
  dxPSEngine.PreviewDialogStyle := 'Ribbon2013';
  Translate;
  FFirstActivate := True;
end;

procedure TMailClientDemoBaseFrame.BeforeActivate;
begin
  RibbonTab.Ribbon.BeginUpdate;
  Visible := False;
  ViewStyleNormal := fmMailClientDemoMain.ViewStyleNormal;
end;

procedure TMailClientDemoBaseFrame.AfterActivate;
begin
  Visible := True;
  RefreshMenu;
  RibbonTab.Active := True;
  RibbonTab.Ribbon.EndUpdate;
end;

procedure TMailClientDemoBaseFrame.BeforeDeactivate;
begin
  RibbonTab.Ribbon.BeginUpdate;
  if ContextRibbonTab <> nil then
    ContextRibbonTab.Context.Visible := False;
  Visible := False;
  GetParentBarManager.Unmerge(bmFrame);
end;

procedure TMailClientDemoBaseFrame.AfterDeactivate;
begin
  RibbonTab.Ribbon.EndUpdate;
end;

procedure TMailClientDemoBaseFrame.AssignRibbonMenu;
begin
  GetParentBarManager.BeginUpdate;
  try
    GetParentBarManager.Merge(bmFrame);
    InternalAssignRibbonMenu(RibbonTab, False);
    if ContextRibbonTab <> nil then
      InternalAssignRibbonMenu(ContextRibbonTab, True);
  finally
    GetParentBarManager.EndUpdate;
  end;
end;

procedure TMailClientDemoBaseFrame.ExportTo(AExportType: TSupportedExportType);

  function GetFileName(out AFileName: string): Boolean;
  var
    ASaveDialog: TdxSaveFileDialog;
    AExt: string;
  begin
    ASaveDialog := TdxSaveFileDialog.Create(nil);
    try
      AExt := SupportedExportExtensions[AExportType];
      if dxMailClientDefaultExportPath = '' then
        dxMailClientDefaultExportPath := GetProgramPath;
      ASaveDialog.Filter := SupportedExportSaveDialogFilters[AExportType];
      ASaveDialog.InitialDir := dxMailClientDefaultExportPath;
      ASaveDialog.FileName := GetCaption;
      ASaveDialog.Options := ASaveDialog.Options + [ofOverwritePrompt];
      ASaveDialog.DefaultExt := AExt;
      Result := ASaveDialog.Execute;
      if Result then
      begin
        AFileName := ChangeFileExt(ASaveDialog.FileName, AExt);
        dxMailClientDefaultExportPath := ExtractFilePath(AFileName);
      end;
    finally
      ASaveDialog.Free;
    end;
  end;

var
  ADestFileName: string;
begin
  if not GetFileName(ADestFileName) then Exit;
  DoExport(AExportType, ADestFileName);
  if FileExists(ADestFileName) and
    (dxMessageDlg('Do you want to open this file?', 'Export', mtConfirmation, mbYesNo) = mrYes)
  then
    ShellExecute(0, 'open', PChar(ADestFileName), '', '', SW_SHOW);
end;

function TMailClientDemoBaseFrame.GetItemCountInfo: string;
begin
  Result := '';
end;

function TMailClientDemoBaseFrame.IsActive: Boolean;
begin
  Result := dxMailClientDemoFrameManager.ActiveFrame = Self;
end;

function TMailClientDemoBaseFrame.IsContentZoomSupport: Boolean;
begin
  Result := True;
end;

procedure TMailClientDemoBaseFrame.RefreshMenu;
begin
end;

procedure TMailClientDemoBaseFrame.RibbonLayoutChanged;
begin
end;

procedure TMailClientDemoBaseFrame.SetContentZoomPosition(Value: Integer);
begin
end;

procedure TMailClientDemoBaseFrame.SetViewStyleNormal(const Value: Boolean);
begin
end;

procedure TMailClientDemoBaseFrame.SkinChanged(ASkinName: string);
begin
end;

procedure TMailClientDemoBaseFrame.Translate;
begin
end;

procedure TMailClientDemoBaseFrame.DoExport(AExportType: TSupportedExportType;
  const AFileName: string);
begin
  case AExportType of
    exHTML:
      ExportToHTML(AFileName);
    exXML:
      ExportToXML(AFileName);
    exExcel97:
      ExportToXLS(AFileName);
    exExcel:
      ExportToXLSX(AFileName);
    exPDF:
      ExportToPDF(AFileName);
    exText:
      ExportToTXT(AFileName);
  end;
end;

procedure TMailClientDemoBaseFrame.DoUpdateContentZoomState;
begin
  CallNotify(FOnUpdateContentZoomState, Self);
end;

procedure TMailClientDemoBaseFrame.ExportToPDF(const AFileName: string);
begin
  dxPSExportToPDFFile(AFileName, ComponentPrinter.CurrentLink);
end;

function TMailClientDemoBaseFrame.GetCaption: string;
begin
  Result := '';
end;

procedure TMailClientDemoBaseFrame.ComponentPrinterBeforePreview(Sender: TObject; AReportLink: TBasedxReportLink);
var
  AForm: TCustomForm;
begin
  AForm := GetParentForm(AReportLink.PreviewWindow);
  if AForm is TdxRibbonPrintPreviewForm then
    TdxRibbonPrintPreviewForm(AForm).dxRibbon.ColorSchemeAccent := rcsaBlue;
end;

{ TMailClientDemoFrameManager }

constructor TMailClientDemoFrameManager.Create;
begin
  inherited Create;
  FFrameClasses := TClassList.Create;
  FFrames := TComponentList.Create;
end;

destructor TMailClientDemoFrameManager.Destroy;
begin
  DestroyFrames;
  FreeAndNil(FFrames);
  FreeAndNil(FFrameClasses);
  inherited Destroy;
end;

procedure TMailClientDemoFrameManager.RegisterFrame(AFrameClass: TMailClientDemoBaseFrameClass);
begin
  FFrameClasses.Add(AFrameClass);
end;

procedure TMailClientDemoFrameManager.UnregisterFrame(AFrameClass: TMailClientDemoBaseFrameClass);
begin
  FFrameClasses.Remove(AFrameClass);
end;

procedure TMailClientDemoFrameManager.ShowFrame(AFrameID: Integer; AParent: TWinControl);
var
  AFrame: TMailClientDemoBaseFrame;
begin
  ShowHourglassCursor;
  try
    AFrame := FindFrame(AFrameID);
    if AFrame = nil then
      AFrame := CreateFrame(AFrameID);
    if (AFrame <> nil) and not AFrame.IsActive then
    begin
      SendMessage(AParent.Handle, WM_SETREDRAW, 0, 0);
      try
        SetActiveFrame(AFrame, AParent);
      finally
        SendMessage(AParent.Handle, WM_SETREDRAW, 1, 0);
        RedrawWindow(AParent.Handle, nil, 0, RDW_FRAME or RDW_INVALIDATE or RDW_ALLCHILDREN or RDW_ERASE);
      end;
    end
    else
      if AFrame = nil then
        SetActiveFrame(nil, nil);
  finally
    HideHourglassCursor;
  end;
end;

procedure TMailClientDemoFrameManager.Translate;
begin
  if FActiveFrame <> nil then
    FActiveFrame.Translate;
end;

function TMailClientDemoFrameManager.CreateFrame(AFrameID: Integer): TMailClientDemoBaseFrame;
var
  AFrameClass: TMailClientDemoBaseFrameClass;
begin
  AFrameClass := FindFrameClass(AFrameID);
  if AFrameClass <> nil then
  begin
    Result := AFrameClass.Create(Application);
    FFrames.Add(Result);
  end
  else
    Result := nil;
end;

procedure TMailClientDemoFrameManager.SetActiveFrame(AFrame: TMailClientDemoBaseFrame; AParent: TWinControl);
var
  APrevActiveFrame: TMailClientDemoBaseFrame;
begin
  APrevActiveFrame := ActiveFrame;
  if APrevActiveFrame <> nil then
    APrevActiveFrame.BeforeDeactivate;
  FActiveFrame := nil;
  if AFrame <> nil then
  begin
    AFrame.HandleNeeded;
    AFrame.AssignRibbonMenu;
    AFrame.BeforeActivate;
    AFrame.Parent := AParent;
  end;
  if APrevActiveFrame <> nil then
    APrevActiveFrame.AfterDeactivate;
  FActiveFrame := AFrame;
  if ActiveFrame <> nil then
  begin
    FActiveFrame.AfterActivate;
    FActiveFrame.FFirstActivate := False;
  end;
end;

function TMailClientDemoFrameManager.FindFrame(AFrameID: Integer): TMailClientDemoBaseFrame;
var
  I: Integer;
begin
  Result := nil;
  for I := 0 to FrameCount - 1 do
    if Frames[I].GetFrameID = AFrameID then
    begin
      Result := Frames[I];
      Break;
    end;
end;

function TMailClientDemoFrameManager.FindFrameClass(AFrameID: Integer): TMailClientDemoBaseFrameClass;
var
  I: Integer;
begin
  Result := nil;
  for I := 0 to FrameClassCount - 1 do
    if FrameClasses[I].GetFrameID = AFrameID then
    begin
      Result := FrameClasses[I];
      Break;
    end;
end;

procedure TMailClientDemoFrameManager.DestroyFrames;
begin
  FFrames.Clear;
end;

function TMailClientDemoFrameManager.GetFrameClass(
  AIndex: Integer): TMailClientDemoBaseFrameClass;
begin
  Result := TMailClientDemoBaseFrameClass(FFrameClasses[AIndex]);
end;

function TMailClientDemoFrameManager.GetFrameClassCount: Integer;
begin
  Result := FFrameClasses.Count;
end;

function TMailClientDemoFrameManager.GetFrameCount: Integer;
begin
  Result := FFrames.Count;
end;

function TMailClientDemoFrameManager.GetFrame(AIndex: Integer): TMailClientDemoBaseFrame;
begin
  Result := TMailClientDemoBaseFrame(FFrames[AIndex]);
end;

function TMailClientDemoBaseFrame.GetContextRibbonTab: TdxRibbonTab;
begin
  Result := nil;
end;

function TMailClientDemoBaseFrame.GetContentZoomPosition: Integer;
begin
  Result := 100;
end;

function TMailClientDemoBaseFrame.GetDataSet: TDataSet;
begin
  Result := nil;
end;

function TMailClientDemoBaseFrame.GetParentBarManager: TdxBarManager;
begin
  Result := fmMailClientDemoMain.bmMain;
end;

procedure TMailClientDemoBaseFrame.InternalAssignRibbonMenu(ATab: TdxRibbonTab; AIsContextMenu: Boolean);
var
  I: Integer;
  AGroup: TdxRibbonTabGroup;
begin
  ATab.Ribbon.BeginUpdate;
  try
    ATab.Groups.Clear;
    ATab.Caption := GetCaption;
    for I := 0 to bmFrame.Bars.Count - 1 do
    begin
      if AIsContextMenu <> (bmFrame.Bars[I].Tag = 1) then
        Continue;
      AGroup := ATab.Groups.Add;
      AGroup.ToolBar := TdxBarAccess(bmFrame.Bars[I]).MergeData.MergedWith;
    end;
  finally
    ATab.Ribbon.EndUpdate;
  end;
end;

function TMailClientDemoBaseFrame.GetRibbonTab: TdxRibbonTab;
begin
  Result := fmMailClientDemoMain.rtFrame;
end;

function TMailClientDemoBaseFrame.GetViewStyleNormal: Boolean;
begin
  Result := True;
end;

initialization

finalization
  FreeAndNil(FMailClientDemoFrameManager);

end.
