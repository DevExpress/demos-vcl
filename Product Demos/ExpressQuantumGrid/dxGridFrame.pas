unit dxGridFrame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Classes, Vcl.Controls, Vcl.Forms, Vcl.ExtCtrls, Vcl.Buttons, Vcl.Menus,
  Data.DB, Vcl.StdCtrls, dxBar, dxBarDBNav, cxLookAndFeels, cxGridLevel,
  cxControls, dxCustomDemoFrameUnit, cxGrid, cxGridCustomView,
  cxGridUIHelper, cxGridPopUpMenu, cxStyles, cxGraphics, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxLabel, dxDemoUtils, cxImage, cxGroupBox, dxGDIPlusClasses, cxSplitter, cxButtons,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxLayoutContainer, cxClasses, dxLayoutControl, Vcl.ActnList,
  dxLayoutLookAndFeels, System.Actions, dxCore,
  dxPanel, cxGeometry, dxFramedControl;

type
  TdxGridFrame = class(TdxCustomDemoFrame)
    Grid: TcxGrid;
  private
    FIsNodeFooter: Boolean;
    FGridOperationHelper: TcxGridOperationHelper;

    procedure DoUpdateOperations(Sender: TObject);
  protected
    FGridPopupMenu: TcxGridPopUpMenu;
    FScaleFactor: TdxScaleFactor;

  protected
    procedure ChangeScale(M, D: Integer; isDpiChange: Boolean); override;
    procedure DoGridPopupMenuPopup(ASenderMenu: TComponent; AHitTest: TcxCustomGridHitTest;
      X,Y: Integer; var AllowPopup: Boolean); virtual;
    function GetHint: string; override;
    function GetInspectedObject: TPersistent; override;
    function GetPrintableComponent: TComponent; override;
    function IsFooterEnabled(AView: TcxCustomGridView): Boolean; virtual;
    function IsFooterMenuEnabled: Boolean; virtual;
    function IsSupportGridsChanging: Boolean; virtual;
    function IsSupportGrouping: Boolean; virtual;
    procedure ResetOddEvenStyle; virtual;

    procedure DoInsert; virtual;
    procedure DoDelete; virtual;
    procedure DoFirst; virtual;
    procedure DoLast; virtual;
    procedure DoNext; virtual;
    procedure DoPrior; virtual;

    function GetActiveGrid: TcxGrid; virtual;
    function GetFocusedView: TcxCustomGridView; virtual;

    procedure DoFullCollapse;
    procedure DoFullExpand;

    property IsNodeFooter: Boolean read FIsNodeFooter write FIsNodeFooter;
    property GridOperationHelper: TcxGridOperationHelper read FGridOperationHelper;
  public
    constructor Create(AOwner: TComponent); override;
    procedure AfterConstruction; override;
    destructor Destroy; override;
    procedure BeginUpdate; override;
    procedure EndUpdate; override;
    function CanDeactivate: Boolean; override;
    function CanUseOddEvenStyle: Boolean; override;
    procedure DoExport(AExportType: TSupportedExportType; const AFileName: string; AHandler: TObject; ADataOnly: Boolean); override;
    function ExportFileName: string; override;
    function IsSupportExport: Boolean; override;

    property ActiveGrid: TcxGrid read GetActiveGrid;
    property FocusedView: TcxCustomGridView read GetFocusedView;
    property GridPopupMenu: TcxGridPopUpMenu read FGridPopupMenu;
    property FrameScaleFactor: TdxScaleFactor read FScaleFactor;
  end;

implementation

{$R *.DFM}

uses
  cxGridCustomTableView, cxGridTableView, cxGridCardView, cxGridUITableHelper, uStrsConst, cxGridExportLink, Main;

{ TdxGridFrame }

constructor TdxGridFrame.Create(AOwner: TComponent);
var
  I: Integer;
begin
  inherited Create(AOwner);
  Grid.BeginUpdate;
  ResetOddEvenStyle;

  FGridOperationHelper := TcxGridOperationHelper.Create(self);
  FGridOperationHelper.Grid := Grid;
  FGridOperationHelper.OnUpdateOperations := DoUpdateOperations;

  FGridPopupMenu := TcxGridPopUpMenu.Create(self);
  FGridPopupMenu.Grid := Grid;
  FGridPopupMenu.OnPopup := DoGridPopupMenuPopup;

  for I := 0 to Grid.ViewCount - 1 do
    if Grid.Views[I] is TcxGridTableView then
      TcxGridTableView(Grid.Views[I]).OptionsView.IndicatorWidth := 20;
  FScaleFactor := TdxScaleFactor.Create;
end;

destructor TdxGridFrame.Destroy;
begin
  inherited Destroy;
  FScaleFactor.Free;
end;

procedure TdxGridFrame.AfterConstruction;
begin
  inherited AfterConstruction;
  Grid.EndUpdate;
end;

procedure TdxGridFrame.DoUpdateOperations(Sender: TObject);
begin
  frmMain.UpdateInspectedObject;
end;

procedure TdxGridFrame.DoGridPopupMenuPopup(ASenderMenu: TComponent;
  AHitTest: TcxCustomGridHitTest; X,Y: Integer; var AllowPopup: Boolean);
begin
  AllowPopup := not(AHitTest.HitTestCode in [htFooter, htFooterCell]) or IsFooterMenuEnabled;
end;

function TdxGridFrame.GetHint: string;
begin
  if IsFooterMenuEnabled then
    Result := sdxGridFrameHint1
  else
    Result := sdxGridFrameHint2;
end;

function TdxGridFrame.GetInspectedObject: TPersistent;
begin
  Result := FocusedView;
end;

function TdxGridFrame.GetPrintableComponent: TComponent;
begin
  Result := Grid;
end;

function TdxGridFrame.IsFooterEnabled(AView: TcxCustomGridView): Boolean;
begin
  Result := True;
end;

function TdxGridFrame.IsFooterMenuEnabled: Boolean;
begin
  Result := True;
end;

function TdxGridFrame.IsSupportGridsChanging: Boolean; 
begin
  Result := True;
end;

function TdxGridFrame.IsSupportGrouping: Boolean;
begin
  Result := True;
end;

procedure TdxGridFrame.ResetOddEvenStyle;
var
  I: Integer;
  AGridView: TcxCustomGridView;
  ATableView: TcxCustomGridTableView;
begin
  for I := 0 to Grid.ViewCount - 1 do
  begin
    AGridView := Grid.Views[I];
    if AGridView is TcxCustomGridTableView then
    begin
      ATableView := TcxCustomGridTableView(AGridView);
      if ATableView.Styles.UseOddEvenStyles = bDefault then
        ATableView.Styles.UseOddEvenStyles := bFalse;
    end;
  end;
end;

procedure TdxGridFrame.DoExport(AExportType: TSupportedExportType; const AFileName: string; AHandler: TObject; ADataOnly: Boolean);
begin
  if ADataOnly then
    case AExportType of
      exHTML:
        ExportGridDataToHTML(AFileName, ActiveGrid, True, True, '', AHandler);
      exXML:
        ExportGridDataToXML(AFileName, ActiveGrid, True, True, '', AHandler);
      exExcel97:
        ExportGridDataToExcel(AFileName, ActiveGrid, True, True, True, '', AHandler);
      exExcel:
        ExportGridDataToXLSX(AFileName, ActiveGrid, True, True, True, '', AHandler);
      exText:
        ExportGridDataToText(AFileName, ActiveGrid, True, True, '', AHandler);
    end
  else
    case AExportType of
      exHTML:
        ExportGridToHTML(AFileName, ActiveGrid, True, True, '', AHandler);
      exXML:
        ExportGridToXML(AFileName, ActiveGrid, True, True, '', AHandler);
      exExcel97:
        ExportGridToExcel(AFileName, ActiveGrid, True, True, True, '', AHandler);
      exExcel:
        ExportGridToXLSX(AFileName, ActiveGrid, True, True, True, '', AHandler);
      exText:
        ExportGridToText(AFileName, ActiveGrid, True, True, '', AHandler);
    end;
end;

function TdxGridFrame.ExportFileName: string;
begin
  Result := 'QGridExport';
end;

function TdxGridFrame.IsSupportExport: Boolean;
begin
  Result := True;
end;

procedure TdxGridFrame.DoInsert;
begin
  GridOperationHelper.DoInsert;
end;

procedure TdxGridFrame.DoDelete;
begin
  GridOperationHelper.DoDelete;
end;

procedure TdxGridFrame.DoFirst;
begin
  GridOperationHelper.DoFirst;
end;

procedure TdxGridFrame.DoLast;
begin
  GridOperationHelper.DoLast;
end;

procedure TdxGridFrame.DoNext;
begin
  GridOperationHelper.DoNext;
end;

procedure TdxGridFrame.DoPrior;
begin
  GridOperationHelper.DoPrev;
end;

function TdxGridFrame.GetActiveGrid: TcxGrid;
begin
  Result := Grid;
end;

function TdxGridFrame.GetFocusedView: TcxCustomGridView;
begin
  if ActiveGrid <> nil then
    Result := ActiveGrid.FocusedView
  else Result := nil;
end;

procedure TdxGridFrame.DoFullCollapse;
var
  I: Integer;
begin
  FocusedView.DataController.Groups.FullCollapse;
  if (TcxGridLevel(FocusedView.Level).Count > 0)
    and (FocusedView is TcxGridTableView) then
  begin
      with TcxGridTableView(FocusedView) do
        for I := 0 to ViewData.RowCount - 1 do
          ViewData.Rows[I].Collapse(True);
  end;
  if FocusedView is TcxGridCardView then
    TcxGridCardView(FocusedView).ViewData.Collapse(True);
end;

procedure TdxGridFrame.DoFullExpand;
var
  I: Integer;
begin
  FocusedView.DataController.Groups.FullExpand;
  if (TcxGridLevel(FocusedView.Level).Count > 0)
  and (FocusedView is TcxGridTableView) then
  begin
    with TcxGridTableView(FocusedView) do
      for I := 0 to ViewData.RowCount - 1 do
        ViewData.Rows[I].Expand(True);
  end;
  if FocusedView is TcxGridCardView then
    TcxGridCardView(FocusedView).ViewData.Expand(True);
end;

procedure TdxGridFrame.BeginUpdate;
begin
  ActiveGrid.BeginUpdate;
end;

procedure TdxGridFrame.EndUpdate;
begin
  ActiveGrid.EndUpdate;
end;

function TdxGridFrame.CanDeactivate: Boolean;
begin
  Result := True;
  if (Grid.FocusedView <> nil) then
     try
       Grid.FocusedView.DataController.UpdateData;
     except
       CancelDrag;
       raise;
     end;
end;

function TdxGridFrame.CanUseOddEvenStyle: Boolean;
begin
  Result := (InspectedObject is TcxGridTableView) and not TcxGridTableView(InspectedObject).RowLayout.Active;
end;

procedure TdxGridFrame.ChangeScale(M, D: Integer; isDpiChange: Boolean);
begin
  FScaleFactor.Change(M, D);
  inherited;
end;

end.
