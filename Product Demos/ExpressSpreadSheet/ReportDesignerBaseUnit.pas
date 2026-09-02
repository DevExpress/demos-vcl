unit ReportDesignerBaseUnit;

{$I cxVer.inc}

interface

uses
{$IFDEF DELPHI16}
  System.UITypes,
{$ENDIF}
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxSpreadSheetCustomFormUnit, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSpreadSheetReportDesignerActions, cxContainer, cxEdit, Vcl.Menus, dxLayoutControlAdapters, dxLayoutcxEditAdapters,
  dxSpreadSheetCore, dxSpreadSheetReportDesigner, dxLayoutContainer, cxClasses, Vcl.StdCtrls, cxButtons, cxMemo, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, Vcl.ExtCtrls, dxLayoutControl, Data.DB, cxCustomData, dxmdaset, ReportPreviewFormUnit, System.Types,
  dxCore, dxCoreClasses, dxHashUtils, dxSpreadSheetCoreHistory, dxSpreadSheetCoreStyles, dxSpreadSheetCoreStrs,
  dxSpreadSheetConditionalFormatting, dxSpreadSheetConditionalFormattingRules, dxSpreadSheetClasses,
  dxSpreadSheetContainers, dxSpreadSheetFormulas, dxSpreadSheetHyperlinks, dxSpreadSheetFunctions, dxSpreadSheetStyles,
  dxSpreadSheetGraphics, dxSpreadSheetPrinting, dxSpreadSheetTypes, dxSpreadSheetUtils, dxSpreadSheetFormulaBar, 
  cxSplitter;

type
  TdxSpreadSheetReportBaseForm = class(TdxSpreadSheetDemoCustomForm)
    ReportDesigner: TdxSpreadSheetReportDesigner;
    pnlFieldChooserSite: TPanel;
    liFieldChooserSite: TdxLayoutItem;
    lsFieldChooser: TdxLayoutSplitterItem;
    procedure ReportDesignerNewDocument(Sender: TdxSpreadSheetReportDesigner;
      var ADestination: TdxCustomSpreadSheet);
  protected
    Filters: TStringList;
    Previews: TList;
    function GetSpreadSheet: TdxCustomSpreadSheet; override;
    procedure LoadDataset(ADataSet: TdxMemData; const AFileName: string);
    procedure LoadFilter(ADataController: TcxCustomDataController; const AFileName: string);
    procedure Notification(AComponent: TComponent; Operation: TOperation); override;
    procedure SaveFilter(ADataController: TcxCustomDataController; const AFileName: string);

    procedure NewReportSheetHandler(Sender: TdxSpreadSheetReportDesigner; ASheet: TdxSpreadSheetTableView); virtual;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure FrameActivated; override;
    procedure SetFieldChooserVisibility(AVisible: Boolean);
    function ShowExtendedMenu: Boolean; override;
  end;

implementation

{$R *.dfm}

uses
  dxCustomSpreadSheetBaseFormUnit;

type
  TdxSpreadSheetReportDesignerAccess = class(TdxSpreadSheetReportDesigner);

{ TdxSpreadSheetReportBaseForm }

constructor TdxSpreadSheetReportBaseForm.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  Filters := TStringList.Create;
  Previews := TList.Create;
  TdxSpreadSheetReportDesignerAccess(ReportDesigner).OnNewReportSheet := NewReportSheetHandler;
  ReportDesigner.FieldChooser.Site := pnlFieldChooserSite;
end;

destructor TdxSpreadSheetReportBaseForm.Destroy;
var
  I: Integer;
begin
  try
    for I := Previews.Count - 1 downto 0 do
    begin
      TfrmPreview(Previews[I]).RemoveFreeNotification(Self);
      TfrmPreview(Previews[I]).Release;
    end;
    FreeAndNil(Previews);
    for I := 0 to Filters.Count - 1 do
      SaveFilter(TcxCustomDataController(Filters.Objects[I]), Filters[I]);
  finally
    FreeAndNil(Filters);
    inherited Destroy;
  end;
end;

procedure TdxSpreadSheetReportBaseForm.FrameActivated;
begin
  inherited FrameActivated;
  if liFieldChooserSite.Visible then
  begin
    ReportDesigner.FieldChooser.Show;
    ReportDesigner.FieldChooser.Form.Controls[0].Align := alClient;
  end;
end;

procedure TdxSpreadSheetReportBaseForm.LoadDataset(ADataSet: TdxMemData; const AFileName: string);
var
  I: Integer;
  AFileStream: TFileStream;
begin
  AFileStream := TFileStream.Create(DemoFolder + AFileName, fmOpenRead);
  try
    ADataSet.DisableControls;
    try
      for I := ADataSet.Fields.Count - 1 downto 0 do
        if ADataSet.Fields[I].FieldKind = fkData then
          ADataSet.Fields[I].Free;
      ADataSet.CreateFieldsFromStream(AFileStream);
      AFileStream.Position := 0;
      ADataSet.LoadFromStream(AFileStream);
      ADataSet.Active := True;
    finally
      ADataSet.EnableControls;
    end;
  finally
    AFileStream.Free;
  end;
end;

procedure TdxSpreadSheetReportBaseForm.LoadFilter(ADataController: TcxCustomDataController; const AFileName: string);
var
  AStream: TStream;
  AFullFileName: string;
begin
  if ADataController <> nil then
  begin
    AFullFileName := DemoFolder + AFileName;
    Filters.AddObject(AFullFileName, ADataController);
    if FileExists(AFullFileName) then
    begin
      AStream := TFileStream.Create(AFullFileName, fmOpenRead);
      try
        try
          ADataController.Filter.LoadFromStream(AStream);
          ADataController.Filter.Active := ADataController.Filter.FilterText <> '';
        except
          on EReadError do
          begin
            ADataController.Filter.Active := False;
            ADataController.Filter.Clear;
          end
          else
            raise;
        end;
      finally
        AStream.Free;
      end;
    end;
  end;
end;

procedure TdxSpreadSheetReportBaseForm.ReportDesignerNewDocument(
  Sender: TdxSpreadSheetReportDesigner; var ADestination: TdxCustomSpreadSheet);
var
  P: TPoint;
  APreview: TfrmPreview;
begin
  APreview := TfrmPreview.Create(nil);
  APreview.FreeNotification(Self);
  P := GetParentForm(ADestination).ClientToScreen(Point(0, 0));
  APreview.Left := P.X;
  APreview.Top := P.Y;
  APreview.Report.ClearAll;
  ADestination := APreview.Report;
  Previews.Add(APreview);
  APreview.Show;
end;

procedure TdxSpreadSheetReportBaseForm.Notification(
  AComponent: TComponent; Operation: TOperation);
begin
  if (Previews <> nil) and (Operation = opRemove) then
    Previews.Remove(AComponent);
  inherited;
end;

procedure TdxSpreadSheetReportBaseForm.NewReportSheetHandler(
  Sender: TdxSpreadSheetReportDesigner; ASheet: TdxSpreadSheetTableView);
begin
  //
end;

procedure TdxSpreadSheetReportBaseForm.SaveFilter(
  ADataController: TcxCustomDataController; const AFileName: string);
var
  AStream: TStream;
begin
  AStream := TFileStream.Create(AFileName, fmCreate);
  try
    ADataController.Filter.SaveToStream(AStream);
  finally
    AStream.Free;
  end;
end;

procedure TdxSpreadSheetReportBaseForm.SetFieldChooserVisibility(AVisible: Boolean);
begin
  liFieldChooserSite.Visible := AVisible;
  lsFieldChooser.Visible := AVisible;
  if Visible then
    ReportDesigner.FieldChooser.Show
  else
    ReportDesigner.FieldChooser.Hide;
end;

function TdxSpreadSheetReportBaseForm.ShowExtendedMenu: Boolean;
begin
  Result := True;
end;

function TdxSpreadSheetReportBaseForm.GetSpreadSheet: TdxCustomSpreadSheet;
begin
  Result := ReportDesigner;
end;

end.


