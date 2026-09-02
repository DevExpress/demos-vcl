unit dxVertGridFrame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxCustomDemoFrameUnit, Vcl.StdCtrls, Vcl.ExtCtrls, cxStyles, cxVGrid, cxControls, cxDBData,
  cxInplaceContainer, dxPScxVGridLnk, dxPSCore, uStrsConst,
  cxExportVGLink, cxDBVGrid, dxDemoUtils, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxLabel, dxLayoutContainer, cxClasses, dxLayoutControl, dxCore,
  dxLayoutLookAndFeels;

type
  TVerticalGridFrame = class(TdxCustomDemoFrame)
  private
    FVerticalGrid: TcxCustomVerticalGrid;
    procedure DoCustomizationFormVisibleChanged(Sender: TObject);
  protected
    function GetDescription: string; override;
    function GetHint: string; override;
    function GetInspectedObject: TPersistent; override;
    function GetPrintableComponent: TComponent; override;
    procedure Loaded; override;
    function HasButtonEditor: Boolean; virtual;
    function DataController: TcxDBDataController;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure ChangeVisibility(AShow: Boolean); override;
    function VerticalGrid: TcxCustomVerticalGrid; virtual;
    procedure DoExport(AExportType: TSupportedExportType; const AFileName: string; AHandler: TObject); override;
    function ExportFileName: string; override;
    function IsSupportExport: Boolean; override;
  end;

implementation

{$R *.dfm}

type
  TVerticalGridAccess = class(TcxCustomVerticalGrid);

{ TTreeListFrame }
constructor TVerticalGridFrame.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FVerticalGrid := nil;
end;

destructor TVerticalGridFrame.Destroy;
begin
  inherited Destroy;
end;

procedure TVerticalGridFrame.DoCustomizationFormVisibleChanged(Sender: TObject);
begin

end;

procedure TVerticalGridFrame.Loaded;
begin
  inherited Loaded;
  if VerticalGrid <> nil then
  begin
    TVerticalGridAccess(VerticalGrid).OnCustomizationFormVisibleChanged := DoCustomizationFormVisibleChanged;
    TVerticalGridAccess(VerticalGrid).OptionsBehavior.CellHints := True;
    TVerticalGridAccess(VerticalGrid).Styles.UseOddEvenStyles := bFalse;
  end;
end;

function TVerticalGridFrame.GetDescription: string;
begin
  Result := sdxFrameVertGridDescription;
end;

function TVerticalGridFrame.GetHint: string;
begin
  Result := inherited GetHint;
end;

procedure TVerticalGridFrame.ChangeVisibility(AShow: Boolean);
begin
  inherited ChangeVisibility(AShow);
  if not AShow then
    TVerticalGridAccess(VerticalGrid).Customizing.Visible := False;
end;


function TVerticalGridFrame.GetInspectedObject: TPersistent;
begin
  Result := VerticalGrid;
end;

function TVerticalGridFrame.GetPrintableComponent: TComponent;
begin
  Result := VerticalGrid;
end;

function TVerticalGridFrame.VerticalGrid: TcxCustomVerticalGrid;
var
  I: Integer;
begin
  if FVerticalGrid = nil then
  begin
    for I := 0 to ComponentCount - 1 do
      if(Components[I] is TcxCustomVerticalGrid) then
      begin
        FVerticalGrid := Components[I] as TcxCustomVerticalGrid;
        break;
      end;
  end;
  Result := FVerticalGrid;
end;


procedure TVerticalGridFrame.DoExport(AExportType: TSupportedExportType; const AFileName: string; AHandler: TObject);
begin
  case AExportType of
    exHTML:
      cxExportVGToHTML(AFileName, VerticalGrid, True, 8, '', AHandler);
    exXML:
      cxExportVGToXML(AFileName, VerticalGrid, True, 8, '', AHandler);
    exExcel97:
      cxExportVGToExcel(AFileName, VerticalGrid, True, True, 8, '', AHandler);
    exExcel:
      cxExportVGToXLSX(AFileName, VerticalGrid, True, True, 8, '', AHandler);
    exText:
      cxExportVGToText(AFileName, VerticalGrid, True, 8, '', AHandler);
  end;
end;

function TVerticalGridFrame.ExportFileName: string;
begin
  Result := 'VerticalGrid';
end;

function TVerticalGridFrame.IsSupportExport: Boolean;
begin
  Result := True;
end;

function TVerticalGridFrame.HasButtonEditor: Boolean;
begin
  Result := True;
end;

function TVerticalGridFrame.DataController: TcxDBDataController;
begin
  if (VerticalGrid <> nil) and (VerticalGrid is TcxDBVerticalGrid) then
    Result := TcxDBVerticalGrid(VerticalGrid).DataController
  else Result := nil;
end;

end.
