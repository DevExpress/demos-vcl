unit Main;

{$I cxVer.inc}

interface

uses
{$IFDEF DELPHIXE8}
  System.UITypes,
  System.ImageList,
{$ENDIF}
  System.Types, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, dxdborgc, dxorgchr, Vcl.ComCtrls,
  Vcl.Menus, Vcl.StdCtrls, cxGraphics, cxControls, cxLookAndFeels, cxClasses,
  cxLookAndFeelPainters, Vcl.ImgList, cxPC, cxButtons, dxSkinsCore, dxBar, cxStyles,
  dxDemoUtils, dxSkinsForm, dxSkinsdxBarPainter, dxSkinscxPCPainter,
  cxEdit, cxMaskEdit, cxCalendar, cxSpinEdit, cxImageComboBox, cxColorComboBox,
  cxVGrid, cxDBVGrid, cxInplaceContainer, cxTextEdit, cxDropDownEdit, Datasnap.DBClient, MidasLib, dxBarBuiltInMenu,
  cxImageList, dxPScxExtEditorProducers, dxPScxEditorProducers, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPSdxOCLnk, dxPSCore,
  dxPSGraphicLnk, dxPSdxDBOCLnk, dxForms, dxorgcedadv, dxLayoutContainer, dxLayoutControl, dxCore, dxLayoutLookAndFeels,
  cxGeometry;

type
  TMainForm = class(TdxForm)
    ilTree: TcxImageList;
    dxDBOrgChart: TdxDbOrgChart;
    dxBarManager1: TdxBarManager;
    dxbMain: TdxBar;
    Exit1: TdxBarButton;
    File1: TdxBarSubItem;
    AddNode1: TdxBarButton;
    AddChildeNode1: TdxBarButton;
    RenameNode1: TdxBarButton;
    DeleteNode1: TdxBarButton;
    Edit1: TdxBarSubItem;
    ItZoom: TdxBarButton;
    ItRotated: TdxBarButton;
    ItAnimated: TdxBarButton;
    miAntialiasing: TdxBarButton;
    ItFullExpand: TdxBarButton;
    ItFullCollapse: TdxBarButton;
    View1: TdxBarSubItem;
    Options1: TdxBarButton;
    Bevel1: TBevel;
    Bevel2: TBevel;
    miHelp: TdxBarSubItem;
    Button1: TButton;
    dxSkinController: TdxSkinController;
    cxPageControl1: TcxPageControl;
    tsDBOrgChart: TcxTabSheet;
    tsOrgChart: TcxTabSheet;
    dxOrgChart: TdxOrgChart;
    DataSource: TDataSource;
    Bevel3: TBevel;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1ID: TAutoIncField;
    ClientDataSet1PARENT: TIntegerField;
    ClientDataSet1NAME: TStringField;
    ClientDataSet1CDATE: TDateField;
    ClientDataSet1CBY: TStringField;
    ClientDataSet1WIDTH: TIntegerField;
    ClientDataSet1HEIGHT: TIntegerField;
    ClientDataSet1TYPE: TStringField;
    ClientDataSet1COLOR: TIntegerField;
    ClientDataSet1IMAGE: TIntegerField;
    ClientDataSet1IMAGEALIGN: TStringField;
    ClientDataSet1ORDER: TIntegerField;
    ClientDataSet1ALIGN: TStringField;
    bbPrintPreview: TdxBarButton;
    bbPrintDialog: TdxBarButton;
    ilBar: TcxImageList;
    dxComponentPrinter: TdxComponentPrinter;
    dxOrgChartReportLink: TdxOrgChartReportLink;
    dxDBOrgChartReportLink: TdxDBOrgChartReportLink;
    dxPSEngineController1: TdxPSEngineController;
    dxBarPopupMenu1: TdxBarPopupMenu;
    bbEdit: TdxBarButton;
    lcFeedbackGroup_Root: TdxLayoutGroup;
    lcFeedback: TdxLayoutControl;
    lliDescription: TdxLayoutLabeledItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    dxLayoutLookAndFeelList2: TdxLayoutLookAndFeelList;
    dxLayoutCxLookAndFeel1: TdxLayoutCxLookAndFeel;
    procedure AddChildeNode1Click(Sender: TObject);
    procedure AddNode1Click(Sender: TObject);
    procedure dxDBOrgChartCreateNode(Sender: TObject; Node: TdxOcNode);
    procedure DeleteNode1Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ItAnimatedClick(Sender: TObject);
    procedure ItFullCollapseClick(Sender: TObject);
    procedure ItFullExpandClick(Sender: TObject);
    procedure ItRotatedClick(Sender: TObject);
    procedure ItZoomClick(Sender: TObject);
    procedure Options1Click(Sender: TObject);
    procedure RenameNode1Click(Sender: TObject);
    procedure ClientDataSet1AfterInsert(DataSet: TDataSet);
    procedure ClientDataSet1ALIGNChange(Sender: TField);
    procedure ClientDataSet1IMAGEALIGNChange(Sender: TField);
    procedure ClientDataSet1TYPEChange(Sender: TField);
    procedure TreeCreateNode(Sender: TObject; Node: TdxOcNode);
    procedure miAntialiasingClick(Sender: TObject);
    procedure ClientDataSet1HEIGHTChange(Sender: TField);
    procedure ClientDataSet1WIDTHChange(Sender: TField);
    procedure ClientDataSet1COLORChange(Sender: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxPageControl1Change(Sender: TObject);
    procedure bbPrintPreviewClick(Sender: TObject);
    procedure bbPrintDialogClick(Sender: TObject);
    procedure bbEditClick(Sender: TObject);
  private
    FAllowChanges: Boolean;
    function AddNode(AChild: Boolean): TdxOcNode;
    procedure UpdateStoredSizesForDPI(M, D: Integer);
    procedure UpdateStoredSizesForCurrentDPI;
    procedure UpdateOptions;
  protected
    procedure ScaleFactorChanged(M, D: Integer); override;
  public
    function GetActiveOrgChart: TdxCustomOrgChart;
    //
    property ActiveOrgChart: TdxCustomOrgChart read GetActiveOrgChart;
  end;

var
  MainForm: TMainForm;

implementation

uses
  DBDataEditor, Options;

{$R *.DFM}

type
  TdxCustomOrgChartAccess = class(TdxCustomOrgChart);

{ TMainForm }

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (ClientDataSet1.State = dsEdit) or (ClientDataSet1.State = dsInsert) then ClientDataSet1.Post;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  ClientDataSet1.Open;
  dxDBOrgChart.WidthFieldName  := 'Width';
  dxDBOrgChart.HeightFieldName := 'Height';
  CreateHelpMenuItems(dxBarManager1, miHelp);
  CreateSkinsMenuItems(dxBarManager1, View1, dxSkinController);
  View1.ItemLinks.VisibleItems[View1.ItemLinks.VisibleItemCount - 1].BeginGroup := True;
  UpdateOptions;
  FAllowChanges := True;
  dxSkinController.ScrollMode := scmSmooth;
  UpdateStoredSizesForCurrentDPI;
end;

function TMainForm.AddNode(AChild: Boolean): TdxOcNode;
var
  ATree: TdxCustomOrgChartAccess;
begin
  ATree := TdxCustomOrgChartAccess(ActiveOrgChart);
  if ATree.Selected = nil then
    Result := ATree.Add(nil, nil)
  else
  begin
    if AChild then
      Result := ATree.AddChild(ATree.Selected, nil)
    else
      Result := ATree.Insert(ATree.Selected, nil);
    dxDBOrgChart.Selected.Expanded := True;
  end;
  Result.Text := 'New topic';
  Result.Color := clWhite;
  Result.Shape := shRectangle;
  ATree.Selected := Result;
end;

procedure TMainForm.Exit1Click(Sender: TObject);
begin
  Close;
end;

procedure TMainForm.AddNode1Click(Sender: TObject);
begin
  ClientDataSet1.DisableControls;
  try
    AddNode(False);
  finally
    ClientDataSet1.EnableControls;
  end;
end;

procedure TMainForm.bbPrintDialogClick(Sender: TObject);
begin
  ShowExpressPrintingMessage;
  dxComponentPrinter.Print(True, nil);
end;

procedure TMainForm.bbPrintPreviewClick(Sender: TObject);
begin
  ShowExpressPrintingMessage;
  dxComponentPrinter.Preview;
end;

procedure TMainForm.cxPageControl1Change(Sender: TObject);
begin
  if cxPageControl1.ActivePage = tsDBOrgChart then
    dxDBOrgChartReportLink.Active := True
  else
    dxOrgChartReportLink.Active := True;

  bbEdit.Caption := 'Edit ' + ActiveOrgChart.Name + '...';

  UpdateOptions;
end;

procedure TMainForm.AddChildeNode1Click(Sender: TObject);
begin
  ClientDataSet1.DisableControls;
  try
    AddNode(True);
  finally
    ClientDataSet1.EnableControls;
  end;
end;

procedure TMainForm.RenameNode1Click(Sender: TObject);
begin
  if TdxCustomOrgChartAccess(ActiveOrgChart).Selected <> nil then
    TdxCustomOrgChartAccess(ActiveOrgChart).ShowEditor;
end;

procedure TMainForm.ScaleFactorChanged(M, D: Integer);
begin
  inherited;
  UpdateStoredSizesForDPI(M, D);
end;

procedure TMainForm.DeleteNode1Click(Sender: TObject);
var
  ATree: TdxCustomOrgChartAccess;
begin
  ATree := TdxCustomOrgChartAccess(ActiveOrgChart);
  if ATree.Selected <> nil then
    ATree.Delete(ATree.Selected);
end;

procedure TMainForm.bbEditClick(Sender: TObject);
begin
  if ActiveOrgChart = dxOrgChart then
    ShowOrgChartEditor(dxOrgChart)
  else
    ShowDBOrgChartDataEditor;
  UpdateOptions;
end;

procedure TMainForm.UpdateOptions;
begin
  miAntialiasing.Down := TdxCustomOrgChartAccess(ActiveOrgChart).Antialiasing;
  ItAnimated.Down := ocAnimate in TdxCustomOrgChartAccess(ActiveOrgChart).Options;
  ItRotated.Down := TdxCustomOrgChartAccess(ActiveOrgChart).Rotated;
  ItZoom.Down := TdxCustomOrgChartAccess(ActiveOrgChart).Zoom;
end;

procedure TMainForm.ItZoomClick(Sender: TObject);
begin
  TdxCustomOrgChartAccess(ActiveOrgChart).Zoom := TdxBarButton(Sender).Down;
end;

procedure TMainForm.miAntialiasingClick(Sender: TObject);
begin
  TdxCustomOrgChartAccess(ActiveOrgChart).Antialiasing := TdxBarButton(Sender).Down;
end;

procedure TMainForm.ItRotatedClick(Sender: TObject);
begin
  TdxCustomOrgChartAccess(ActiveOrgChart).Rotated := TdxBarButton(Sender).Down;
end;

procedure TMainForm.ItAnimatedClick(Sender: TObject);
var
  ATree: TdxCustomOrgChartAccess;
begin
  ATree := TdxCustomOrgChartAccess(ActiveOrgChart);
  if TdxBarButton(Sender).Down then
    ATree.Options := ATree.Options + [ocAnimate]
  else
    ATree.Options := ATree.Options - [ocAnimate];
end;

procedure TMainForm.ItFullExpandClick(Sender: TObject);
begin
  TdxCustomOrgChartAccess(ActiveOrgChart).FullExpand;
end;

procedure TMainForm.ItFullCollapseClick(Sender: TObject);
begin
  TdxCustomOrgChartAccess(ActiveOrgChart).FullCollapse;
end;

procedure TMainForm.Options1Click(Sender: TObject);
begin
  OptionsForm.ShowModal;
end;

procedure TMainForm.dxDBOrgChartCreateNode(Sender: TObject; Node: TdxOcNode);
begin
  if ClientDataSet1.FindField('width').AsInteger > 50 then
    Node.Width := ClientDataSet1.FindField('width').AsInteger;

  if ClientDataSet1.FindField('height').AsInteger > 50 then
    Node.Height := ClientDataSet1.FindField('height').AsInteger;

  Node.Shape := TdxOcShape(ClientDataSet1.FindField('type').AsInteger);
  Node.Color := ClientDataSet1.FindField('color').AsInteger;
  Node.ChildAlign := TdxOcNodeAlign(ClientDataSet1.FindField('Align').AsInteger);
  Node.ImageAlign := TdxOcImageAlign(ClientDataSet1.FindField('ImageAlign').AsInteger);
end;

procedure TMainForm.ClientDataSet1AfterInsert(DataSet: TDataSet);
begin
  ClientDataSet1.FindField('Height').AsInteger := dxDBOrgChart.DefaultNodeHeight;
  ClientDataSet1.FindField('Width').AsInteger := dxDBOrgChart.DefaultNodeWidth;
  ClientDataSet1.FindField('Type').AsInteger := 0;
  ClientDataSet1.FindField('Color').AsInteger := clWhite;
  ClientDataSet1.FindField('Image').AsInteger := -1;
  ClientDataSet1.FindField('ImageAlign').AsInteger := 0;
  ClientDataSet1.FindField('Align').AsInteger := 1;
end;

procedure TMainForm.UpdateStoredSizesForCurrentDPI;
begin
  UpdateStoredSizesForDPI(ScaleFactor.Numerator, ScaleFactor.Denominator);
end;

procedure TMainForm.UpdateStoredSizesForDPI(M, D: Integer);
var
  ASavedIndex: Integer;
begin
  if not ClientDataSet1.Active then
    Exit;
  ClientDataSet1.DisableControls;
  try
    ASavedIndex := ClientDataSet1.RecNo;
    try
      ClientDataSet1.First;
      while not ClientDataSet1.Eof do
      begin
        ClientDataSet1.Edit;
        ClientDataSet1WIDTH.AsInteger := MulDiv(ClientDataSet1WIDTH.AsInteger, M, D);
        ClientDataSet1HEIGHT.AsInteger := MulDiv(ClientDataSet1HEIGHT.AsInteger, M, D);
        ClientDataSet1.Post;
        ClientDataSet1.Next;
      end;
    finally
      ClientDataSet1.RecNo := ASavedIndex;
    end;
  finally
    ClientDataSet1.EnableControls;
  end;
  dxDBOrgChart.FullExpand;
end;

procedure TMainForm.ClientDataSet1TYPEChange(Sender: TField);
begin
  if (ClientDataSet1.State = dsEdit) and not ClientDataSet1.ControlsDisabled then
    dxDBOrgChart.Selected.Shape := TdxOcShape(Sender.AsInteger);
end;

procedure TMainForm.ClientDataSet1WIDTHChange(Sender: TField);
begin
  if (ClientDataSet1.State = dsEdit) and not ClientDataSet1.ControlsDisabled then
    dxDBOrgChart.Selected.Width := Sender.AsInteger
end;

procedure TMainForm.ClientDataSet1ALIGNChange(Sender: TField);
begin
  if (ClientDataSet1.State = dsEdit) and not ClientDataSet1.ControlsDisabled then
    dxDBOrgChart.Selected.ChildAlign := TdxOcNodeAlign(Sender.AsInteger);
end;

procedure TMainForm.ClientDataSet1COLORChange(Sender: TField);
begin
  if (ClientDataSet1.State = dsEdit) and not ClientDataSet1.ControlsDisabled then
    dxDBOrgChart.Selected.Color := Sender.AsInteger;
end;

procedure TMainForm.ClientDataSet1HEIGHTChange(Sender: TField);
begin
  if (ClientDataSet1.State = dsEdit) and not ClientDataSet1.ControlsDisabled then
    dxDBOrgChart.Selected.Height := Sender.AsInteger
end;

procedure TMainForm.ClientDataSet1IMAGEALIGNChange(Sender: TField);
begin
  if (ClientDataSet1.State = dsEdit) and not ClientDataSet1.ControlsDisabled then
    dxDBOrgChart.Selected.ImageAlign := TdxOcImageAlign(Sender.AsInteger);
end;

function TMainForm.GetActiveOrgChart: TdxCustomOrgChart;
begin
  if cxPageControl1.ActivePage = tsOrgChart then
    Result := dxOrgChart
  else
    Result := dxDBOrgChart;
end;

procedure TMainForm.TreeCreateNode(Sender: TObject; Node: TdxOcNode);
begin
  with Node do
  begin
    Shape := shRectangle;
    Color := clWhite;
    Node.ChildAlign := caCenter;
    Node.ImageAlign := iaLT;
  end;
end;

initialization
  dxMegaDemoProductIndex := dxOrgChartIndex;
  TdxVisualRefinements.LightBorders := True;
end.
