unit dxSpreadSheetCustomFormUnit;

{$I cxVer.inc}

interface

uses
{$IFDEF DELPHI16}
  System.UITypes,
{$ENDIF}
  System.Types, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxCustomSpreadSheetBaseFormUnit, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSpreadSheetCore, dxSpreadSheetStrs,
  dxSpreadSheetClasses, dxSpreadSheetTypes, dxSpreadSheet, dxBarBuiltInMenu,
  dxSpreadSheetFunctions, dxSpreadSheetGraphics, dxLayoutContainer,
  dxLayoutControl, dxSpreadSheetFormulas, dxLayoutcxEditAdapters, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, dxLayoutControlAdapters,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, cxMemo, dxCore, dxCoreClasses, dxHashUtils, dxSpreadSheetCoreHistory,
  dxSpreadSheetConditionalFormatting, Vcl.ExtCtrls, cxClasses, dxSpreadSheetCoreHelpers, cxRichEdit,
  dxSpreadSheetFormattedTextUtils, dxSpreadSheetUtils, dxSpreadSheetStyles, dxSpreadSheetCoreStyles,
  dxSpreadSheetCoreStrs, dxSpreadSheetConditionalFormattingRules, dxSpreadSheetContainers, dxSpreadSheetHyperlinks,
  dxSpreadSheetPrinting, dxSpreadSheetFormulaBar, cxSplitter, dxSpreadSheetCoreFormulas;

type
  TdxSpreadSheetDemoCustomForm = class(TdxCustomSpreadSheetDemoUnitForm)
    lgSpreadSheet: TdxLayoutGroup;
    liSpreadSheet: TdxLayoutItem;
    pnlSite: TPanel;
    ssFormulaBar: TdxSpreadSheetFormulaBar;
    Splitter: TcxSplitter;

    procedure SpreadSheetDocumentSelectionChanged(Sender: TObject);
    procedure SpreadSheetDocumentEdited(Sender: TdxSpreadSheetCustomView);
    procedure SpreadSheetDocumentLayoutChanged(Sender: TObject);
  private
    function GetActiveSheet: TdxSpreadSheetTableView;
  protected
    procedure InitializeControl; override;
    procedure DoSpreadSheetEdited; virtual;
    procedure DoSpreadSheetLayoutChanged; virtual;
    procedure DoSpreadSheetSelectionChanged; virtual;
  public
    property ActiveSheet: TdxSpreadSheetTableView read GetActiveSheet;
  end;

implementation

{$R *.dfm}

uses
  cxGeometry, System.Math;

type
  TdxSpreadSheetAccess = class(TdxCustomSpreadSheet);
  TdxSpreadSheetTableViewAccess = class(TdxSpreadSheetTableView);
  
{ TdxSpreadSheetDemoUnitForm }

procedure TdxSpreadSheetDemoCustomForm.DoSpreadSheetEdited;
begin
  if Assigned(OnSpreadSheetEdited) then
    OnSpreadSheetEdited(ActiveSheet);
end;

procedure TdxSpreadSheetDemoCustomForm.DoSpreadSheetLayoutChanged;
begin
  dxCallNotify(OnSpreadSheetLayoutChanged, Self);
end;

procedure TdxSpreadSheetDemoCustomForm.DoSpreadSheetSelectionChanged;
begin
  dxCallNotify(OnSpreadSheetSelectionChanged, Self);
end;

function TdxSpreadSheetDemoCustomForm.GetActiveSheet: TdxSpreadSheetTableView;
begin
  Result := SpreadSheet.ActiveSheetAsTable;
end;

procedure TdxSpreadSheetDemoCustomForm.InitializeControl;
begin
  inherited InitializeControl;
  ssFormulaBar.SpreadSheet := SpreadSheet;
  TdxSpreadSheetAccess(SpreadSheet).OnEdited := SpreadSheetDocumentEdited;
  TdxSpreadSheetAccess(SpreadSheet).OnLayoutChanged := SpreadSheetDocumentLayoutChanged;
  TdxSpreadSheetAccess(SpreadSheet).OnSelectionChanged := SpreadSheetDocumentSelectionChanged;
end;

procedure TdxSpreadSheetDemoCustomForm.SpreadSheetDocumentEdited(Sender: TdxSpreadSheetCustomView);
begin
  DoSpreadSheetEdited;
end;

procedure TdxSpreadSheetDemoCustomForm.SpreadSheetDocumentLayoutChanged(Sender: TObject);
begin
  DoSpreadSheetLayoutChanged;
end;

procedure TdxSpreadSheetDemoCustomForm.SpreadSheetDocumentSelectionChanged(Sender: TObject);
begin
  DoSpreadSheetSelectionChanged;
end;

end.
