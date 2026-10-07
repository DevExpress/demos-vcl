unit dxFlowChartRelationshipDiagram;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxFlowChartBaseFormUnit, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxLayoutContainer, dxBar,
  cxClasses, dxLayoutLookAndFeels, dxLayoutControl, dxflchrt,
  dxGDIPlusClasses, dxmdaset, dxFlowChartDataModule,
  System.Generics.Defaults, System.Generics.Collections, System.ImageList, Vcl.ImgList,
  cxImageList, dxCalloutPopup, dxLayoutcxEditAdapters, cxContainer, cxEdit, cxImage;

type
  TRelationType = (rtKnowEachOther, rtFriends);

  { TRelationship }

  TRelationship = record
    RelationType: TRelationType;
    SourceEmployee: TEmployee;
    TargetEmployee: TEmployee;
  end;

  { TfrmFlowChartRelationshipDiagram }

  TfrmFlowChartRelationshipDiagram = class(TdxFlowChartDemoUnitForm)
    dxFlowChart1: TdxFlowChart;
    dxLayoutItem1: TdxLayoutItem;
    ilEmployees: TcxImageList;
    dxCalloutPopup1: TdxCalloutPopup;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    lliSelectPerson: TdxLayoutLabeledItem;
    liiEmployeePicture: TdxLayoutImageItem;
    lliFullName: TdxLayoutLabeledItem;
    lliBirthday: TdxLayoutLabeledItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    lliMobilePhone: TdxLayoutLabeledItem;
    lliAddress: TdxLayoutLabeledItem;
    dxLayoutSeparatorItem1: TdxLayoutSeparatorItem;
    lliKnowns: TdxLayoutLabeledItem;
    lliFriends: TdxLayoutLabeledItem;
    lgEmployee: TdxLayoutGroup;
    cxImage1: TcxImage;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    procedure FormShow(Sender: TObject);
    procedure dxFlowChart1Click(Sender: TObject);
    procedure dxFlowChart1Selection(Sender: TdxCustomFlowChart; Item: TdxFcItem; var Allow: Boolean);
  strict private
    FDiagramBounds: TRect;
    FEmployees: TObjectList<TEmployee>;
    FEmployeeShapeDictionary: TDictionary<TdxFcItem, TEmployee>;
    FKnownsText: TdxFcObject;
    FFriendsText: TdxFcObject;
    FRelationships: TArray<TRelationship>;
    FShapeSize: TPoint;

    function GetRelationshipsText(AEmployee: TEmployee; ARelationType: TRelationType): string;
    procedure CalculateRelationships;
    procedure CreateEmployeeShape(AEmployee: TEmployee; const APosition: TPoint);
    procedure CreateConnector(const ARelationship: TRelationship);
    procedure InitializeFlowChart;
    procedure PopulateEmployees;
    procedure PopulateConnectors;
    procedure UpdateControls(ASelectedObject: TdxFcObject);
  protected
    function NeedWaitForm: Boolean; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;

    class function GetID: Integer; override;
    function GetCaption: string; override;
    function GetDescription: string; override;
  end;

implementation

{$R *.dfm}

uses
  System.Types, System.Math, Data.DB, dxCore, dxTypeHelpers, cxGeometry, dxCoreGraphics;

const
  DiagramOffsetY = 25;
  DiagramSize = 600;
  DiagramShapeSize: TSize = (cx: 100; cy: 120);

  DiagramShapeCount = 8;
  RelationPenColor: array[TRelationType] of TColor = ($8520DD, $339933);
  RelationPenStyle: array[TRelationType] of TPenStyle = (psSolid, psDot);
  RelationPenWidth: array[Boolean] of Integer = (1, 3);

  sKnownEachOther = 'Know each other';
  sFriendsWith = 'Friends with';

type
  TdxFcObjectAccess = class(TdxFcObject);

constructor TfrmFlowChartRelationshipDiagram.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FEmployees := TObjectList<TEmployee>.Create;
  FEmployeeShapeDictionary := TDictionary<TdxFcItem, TEmployee>.Create;
end;

destructor TfrmFlowChartRelationshipDiagram.Destroy;
begin
  FreeAndNil(FEmployeeShapeDictionary);
  FreeAndNil(FEmployees);
  inherited Destroy;
end;

function TfrmFlowChartRelationshipDiagram.NeedWaitForm: Boolean;
begin
  Result := True;
end;

procedure TfrmFlowChartRelationshipDiagram.dxFlowChart1Click(Sender: TObject);

  function GetDisplayRect(AObject: TdxFcObject): TRect;
  begin
    Result := TRect.CreateSize(AObject.RealLeft, AObject.RealTop, AObject.RealWidth, AObject.RealHeight);
    Result.Offset(dxFlowChart1.LeftEdge, dxFlowChart1.TopEdge);
  end;

const
  CalloutAlignmentMap: array[Boolean] of TdxCalloutPopupAlignment = (cpaRightCenter, cpaLeftCenter);
var
  ADiagramRect, AObjectDisplayRect: TRect;
begin
  if (dxFlowChart1.SelectedObject <> nil) and (dxFlowChart1.SelectedObject <> FKnownsText) and
    (dxFlowChart1.SelectedObject <> FFriendsText) then
  begin
    UpdateControls(dxFlowChart1.SelectedObject);

    ADiagramRect := cxRectScale(FDiagramBounds, dxFlowChart1.Zoom, 100);
    AObjectDisplayRect := GetDisplayRect(dxFlowChart1.SelectedObject);
    dxCalloutPopup1.Alignment := CalloutAlignmentMap[AObjectDisplayRect.CenterPoint.X < ADiagramRect.CenterPoint.X];

    dxCalloutPopup1.Popup(dxFlowChart1, AObjectDisplayRect);
  end
  else
    dxCalloutPopup1.Close;
end;

procedure TfrmFlowChartRelationshipDiagram.dxFlowChart1Selection(Sender: TdxCustomFlowChart; Item: TdxFcItem;
  var Allow: Boolean);
begin
  Allow := (Item is TdxFcObject) and FEmployeeShapeDictionary.ContainsKey(Item);
end;

procedure TfrmFlowChartRelationshipDiagram.FormShow(Sender: TObject);
begin
  inherited;
  dxFlowChart1.BeginUpdate;
  try
    FShapeSize := cxPoint(DiagramShapeSize.cx, DiagramShapeSize.cy);
    FDiagramBounds := TRect.Create(cxPoint(dxLayoutControl1.Width div 2 + FShapeSize.X div 2, DiagramOffsetY + FShapeSize.Y div 2),
      DiagramSize, DiagramSize);
    InitializeFlowChart;
    PopulateEmployees;
    CalculateRelationships;
    PopulateConnectors;
  finally
    dxFlowChart1.EndUpdate;
  end;
end;

function TfrmFlowChartRelationshipDiagram.GetCaption: string;
begin
  Result := 'Relationship Diagram';
end;

function TfrmFlowChartRelationshipDiagram.GetDescription: string;
begin
  Result := 'In this demo, shapes represent people and connectors represent types of relationships between them. You can' + 
    ' select a person to see relationship details.';
end;

procedure TfrmFlowChartRelationshipDiagram.PopulateConnectors;
var
  ARelationship: TRelationship;
begin
  for ARelationship in FRelationships do
    CreateConnector(ARelationship);
end;

function TfrmFlowChartRelationshipDiagram.GetRelationshipsText(AEmployee: TEmployee; ARelationType: TRelationType): string;
var
  ARelationship: TRelationship;
begin
  Result := '';
  for ARelationship in FRelationships do
  begin
    if (ARelationship.SourceEmployee = AEmployee) and (ARelationship.RelationType = ARelationType) then
      Result := ARelationship.TargetEmployee.FullName + Delimiter + Result;
    if (ARelationship.TargetEmployee = AEmployee) and (ARelationship.RelationType = ARelationType) then
      Result := ARelationship.SourceEmployee.FullName + Delimiter + Result;
  end;
  if Length(Result) > Length(Delimiter) then
    Result := Copy(Result, 1, Length(Result) - Length(Delimiter));
end;

procedure TfrmFlowChartRelationshipDiagram.CalculateRelationships;

  procedure Add(const ARelationship: TRelationship; var ARelations: TArray<TRelationship>);
  var
    L: Integer;
  begin
    L := Length(ARelations);
    SetLength(ARelations, L + 1);
    ARelations[L] := ARelationship;
  end;

var
  AIndex, I, J: Integer;
  ARelationship: TRelationship;
begin
  SetLength(FRelationships, 0);
  AIndex := 0;
  for I := 0 to FEmployees.Count - 1 do
    for J := I + 1 to FEmployees.Count - 1 do
    begin
      if (AIndex mod 4) <= 1 then
      begin
        ARelationship.SourceEmployee := FEmployees[I];
        ARelationship.TargetEmployee := FEmployees[J];
        ARelationship.RelationType := TRelationType(AIndex mod 4);
        Add(ARelationship, FRelationships);
      end;
      Inc(AIndex);
    end;
end;

procedure TfrmFlowChartRelationshipDiagram.CreateEmployeeShape(AEmployee: TEmployee; const APosition: TPoint);

  procedure ResizeImage(APicture: TdxSmartImage; const ASize: TPoint; out AResizedPicture: TdxSmartImage);
  var
    ACanvas: TdxGPCanvas;
    AHDC: HDC;
  begin
    AResizedPicture := TdxSmartImage.CreateSize(ASize.X, ASize.Y);
    ACanvas := AResizedPicture.CreateCanvas;
    AHDC := ACanvas.GetHDC;
    cxPaintCanvas.BeginPaint(AHDC);
    try
      TdxImageDrawer.DrawImage(cxPaintCanvas, AResizedPicture.ClientRect, APicture, ifmProportionalStretch);
    finally
      cxPaintCanvas.EndPaint;
      ACanvas.ReleaseHDC(AHDC);
      ACanvas.Free;
    end;
  end;

const
  Margin = 20;
var
  AResizedImage: TdxSmartImage;
begin
  ResizeImage(AEmployee.Picture, cxPoint(ilEmployees.Width, ilEmployees.Height), AResizedImage);
  try
    ilEmployees.Add(AResizedImage);
  finally
    AResizedImage.Free;
  end;

  AEmployee.FlowChartObject := dxFlowChart1.CreateObject(APosition.X, APosition.Y, FShapeSize.X + Margin,
    FShapeSize.Y + Margin + DiagramFontSize * 2, fcsRectangle);
  AEmployee.FlowChartObject.BkColor := dxAlphaColorToColor(DiagramShapeColor);
  AEmployee.FlowChartObject.ShapeColor := AEmployee.FlowChartObject.BkColor;
  AEmployee.FlowChartObject.VertTextPos := fcvpDown;
  AEmployee.FlowChartObject.HorzTextPos := fchpCenter;
  AEmployee.FlowChartObject.Font.Color := clWhite;
  AEmployee.FlowChartObject.Font.Name := DiagramFontName;
  AEmployee.FlowChartObject.Font.Size := DiagramFontSize;
  AEmployee.FlowChartObject.ImageIndex := ilEmployees.Count - 1;
  AEmployee.FlowChartObject.HorzImagePos := fchpCenter;
  AEmployee.FlowChartObject.VertImagePos := fcvpCenter;
  AEmployee.FlowChartObject.Text := AEmployee.FullName;
  AEmployee.FlowChartObject.BringToFront;
end;

procedure TfrmFlowChartRelationshipDiagram.CreateConnector(const ARelationship: TRelationship);

  function GetPointIndex(ATarget, ASource: TdxFcObject): Integer;
  var
    I: Integer;
    AMin, ADistance: Int64;
    ACenter: TPoint;
  begin
    ACenter := ATarget.Bounds.CenterPoint;
    Result := 0;
    AMin := MaxInt64;
    Inc(ACenter.X, dxFlowChart1.LeftEdge);
    Inc(ACenter.Y, dxFlowChart1.TopEdge);
    for I := 0 to TdxFcObjectAccess(ASource).LinkedPointCount - 1 do
    begin
      if I mod 4 = 0 then
        Continue;
      ADistance := Sqr(TdxFcObjectAccess(ASource).LinkedPoints[I].X - ACenter.X) +
        Sqr(TdxFcObjectAccess(ASource).LinkedPoints[I].Y - ACenter.Y);
      if ADistance < AMin then
      begin
        Result := I;
        AMin := ADistance;
      end;
    end;
  end;

var
  AConnection: TdxFcConnection;
  ASourceShape, ATargetShape: TdxFcObject;
begin
  ASourceShape := ARelationship.SourceEmployee.FlowChartObject;
  ATargetShape := ARelationship.TargetEmployee.FlowChartObject;
  AConnection := dxFlowChart1.CreateConnection(ASourceShape, ATargetShape, GetPointIndex(ATargetShape, ASourceShape),
    GetPointIndex(ASourceShape, ATargetShape));
  AConnection.Color := RelationPenColor[ARelationship.RelationType];
  AConnection.PenStyle := RelationPenStyle[ARelationship.RelationType];
end;

procedure TfrmFlowChartRelationshipDiagram.InitializeFlowChart;
begin
  dxFlowChart1.Antialiasing := True;
  dxFlowChart1.GridLineOptions.ShowLines := True;
  dxFlowChart1.Color := clWhite;

  FKnownsText := dxFlowChart1.Connections[0].ObjectSource;
  FKnownsText.Text := sKnownEachOther;
  dxFlowChart1.Connections[0].Color := RelationPenColor[rtKnowEachOther];
  dxFlowChart1.Connections[0].PenStyle := RelationPenStyle[rtKnowEachOther];
  dxFlowChart1.Connections[0].PenWidth := RelationPenWidth[True];

  FFriendsText := dxFlowChart1.Connections[1].ObjectSource;
  FFriendsText.Text := sFriendsWith;
  dxFlowChart1.Connections[1].Color := RelationPenColor[rtFriends];
  dxFlowChart1.Connections[1].PenStyle := RelationPenStyle[rtFriends];
  dxFlowChart1.Connections[1].PenWidth := RelationPenWidth[True];
end;

procedure TfrmFlowChartRelationshipDiagram.PopulateEmployees;

  procedure CalculatePosition(const ABounds: TRect; AShapeIndex, AShapeCount: Integer; const AShapeSize: TPoint;
    var APosition: TPoint);
  var
    AAngle: Single;
    ACenter: TPoint;
    ARadius: Integer;
  begin
    AAngle := 360 / AShapeCount * AShapeIndex;
    ACenter := ABounds.CenterPoint;
    ARadius := ABounds.Width div 2;
    APosition.X := ACenter.X + Round(ARadius * Cos(DegToRad(AAngle))) - AShapeSize.X div 2;
    APosition.Y := ACenter.Y + Round(ARadius * Sin(DegToRad(AAngle))) - AShapeSize.Y div 2;
  end;

var
  AShapeIndex: Integer;
  AEmployee: TEmployee;
  APosition: TPoint;
begin
  APosition := cxNullPoint;
  ilEmployees.Clear;
  FEmployees.Clear;
  DM.mdEmployees.First;
  dxFlowChart1.BeginUpdate;
  try
    for AShapeIndex := 0 to DiagramShapeCount - 1 do
    begin
      AEmployee := TEmployee.Create;
      AEmployee.Load(DM.mdEmployees);
      CalculatePosition(FDiagramBounds, AShapeIndex, DiagramShapeCount, FShapeSize, APosition);
      CreateEmployeeShape(AEmployee, APosition);
      FEmployees.Add(AEmployee);
      FEmployeeShapeDictionary.Add(AEmployee.FlowChartObject, AEmployee);
      DM.mdEmployees.Next;
    end;
  finally
    dxFlowChart1.EndUpdate;
  end;
end;

procedure TfrmFlowChartRelationshipDiagram.UpdateControls(ASelectedObject: TdxFcObject);

  function NeedSelectObject(AConnection: TdxFcConnection; AObject: TdxFcObject): Boolean;
  begin
    Result := (AObject <> nil) and ((AConnection.ObjectSource = AObject) or (AConnection.ObjectDest = AObject));
  end;

  procedure UpdateConnectorsWidth(AObject: TdxFcObject);
  var
    I: Integer;
  begin
    for I := 2 to dxFlowChart1.ConnectionCount - 1 do
      dxFlowChart1.Connections[I].PenWidth := RelationPenWidth[NeedSelectObject(dxFlowChart1.Connections[I], AObject)];
  end;

  procedure UpdateEmployeeInformation(AObject: TdxFcObject);
  var
    AEmployee: TEmployee;
  begin
    dxLayoutControl1.BeginUpdate;
    try
      liiEmployeePicture.Visible := (AObject <> nil) and (FEmployeeShapeDictionary <> nil) and
        FEmployeeShapeDictionary.TryGetValue(AObject, AEmployee);
      lliSelectPerson.Visible := not liiEmployeePicture.Visible;
      lgEmployee.Visible := liiEmployeePicture.Visible;
      if liiEmployeePicture.Visible then
      begin
        lliFullName.Caption := AEmployee.FullName;
        lliAddress.Caption := AEmployee.Address;
        lliMobilePhone.Caption := AEmployee.MobilePhone;
        lliBirthday.Caption := FormatDateTime('MMMM dd, yyyy', StrToDate(AEmployee.Birthday));
        cxImage1.Picture.Assign(AEmployee.Picture);
        lliKnowns.Caption :=  Delimiter + 'Known to:' + Delimiter + GetRelationshipsText(AEmployee, rtKnowEachOther);
        lliFriends.Caption := sFriendsWith + ':' + Delimiter + GetRelationshipsText(AEmployee, rtFriends);
        cxImage1.Style.BorderStyle := ebsNone;
      end
    finally
      dxLayoutControl1.EndUpdate;
    end;
    dxLayoutControl1.HandleNeeded;
  end;

begin
  UpdateConnectorsWidth(ASelectedObject);
  UpdateEmployeeInformation(ASelectedObject);
end;

class function TfrmFlowChartRelationshipDiagram.GetID: Integer;
begin
  Result := 4;
end;

initialization
  TfrmFlowChartRelationshipDiagram.Register;

end.
