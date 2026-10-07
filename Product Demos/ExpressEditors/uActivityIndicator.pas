unit uActivityIndicator;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxCustomDemoFrameUnit, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxBarBuiltInMenu, dxLayoutContainer,
  cxContainer, cxEdit, dxActivityIndicator, cxDropDownEdit, cxColorComboBox, cxLabel, cxTextEdit, cxMaskEdit,
  cxSpinEdit, cxGroupBox, dxBevel, cxPC, cxClasses, dxLayoutControl, Vcl.ActnList, dxLayoutcxEditAdapters;

type
  TfrmActivityIndicator = class(TdxCustomDemoFrame)
    dxLayoutItem1: TdxLayoutItem;
    tcMain: TcxTabControl;
    bvlSeparator: TdxBevel;
    ActivityIndicator: TdxActivityIndicator;
    lcSettingsGroup_Root: TdxLayoutGroup;
    lcSettings: TdxLayoutControl;
    liAnimationTime: TdxLayoutItem;
    seAnimationTime: TcxSpinEdit;
    dxLayoutItem3: TdxLayoutItem;
    seArcThickness: TcxSpinEdit;
    dxLayoutItem4: TdxLayoutItem;
    ccbArcColor: TcxColorComboBox;
    dxLayoutEmptySpaceItem1: TdxLayoutEmptySpaceItem;
    dxLayoutItem5: TdxLayoutItem;
    seDotSize: TcxSpinEdit;
    dxLayoutItem6: TdxLayoutItem;
    seDotCount: TcxSpinEdit;
    dxLayoutItem7: TdxLayoutItem;
    ccbDotColor: TcxColorComboBox;
    lgArcBased: TdxLayoutGroup;
    dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem;
    lgDotBased: TdxLayoutGroup;
    procedure tcMainChange(Sender: TObject);
    procedure seAnimationTimePropertiesChange(Sender: TObject);
    procedure seArcThicknessPropertiesChange(Sender: TObject);
    procedure ccbArcColorPropertiesChange(Sender: TObject);
    procedure seDotSizePropertiesChange(Sender: TObject);
    procedure seDotCountPropertiesChange(Sender: TObject);
    procedure ccbDotColorPropertiesChange(Sender: TObject);
  private
    FApplyingChanges: Boolean;
  protected
    function GetInspectedObject: TPersistent; override;
    procedure CheckControlStartProperties; override;
    function GetDescription: string; override;
  public
    constructor Create(AOwner: TComponent); override;
  end;

implementation

uses
  dxFrames, FrameIDs, dxCoreGraphics, uStrsConst;

{$R *.dfm}

constructor TfrmActivityIndicator.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  lcSettings.LookAndFeel := lcFrame.LayoutLookAndFeel;
end;

procedure TfrmActivityIndicator.CheckControlStartProperties;
var
  I: Integer;
begin
  tcMain.Properties.Tabs.BeginUpdate;
  try
    tcMain.Properties.Tabs.Clear;
    for I := 0 to GetRegisteredActivityIndicatorProperties.Count - 1 do
      tcMain.Properties.Tabs.Add(GetRegisteredActivityIndicatorProperties.Descriptions[I]);
  finally
    tcMain.Properties.Tabs.EndUpdate;
  end;
  FApplyingChanges := False;
  tcMainChange(nil);
end;

function TfrmActivityIndicator.GetDescription: string;
begin
  Result := sdxFrameActivityIndicator;
end;

function TfrmActivityIndicator.GetInspectedObject: TPersistent;
begin
  Result := ActivityIndicator;
end;

procedure TfrmActivityIndicator.seAnimationTimePropertiesChange(Sender: TObject);
begin
  ActivityIndicator.Properties.AnimationTime := seAnimationTime.Value;
end;

procedure TfrmActivityIndicator.seArcThicknessPropertiesChange(Sender: TObject);
var
  AProperties: TdxActivityIndicatorArcBasedProperties;
begin
  if not FApplyingChanges and (ActivityIndicator.Properties is TdxActivityIndicatorArcBasedProperties) then
  begin
    AProperties := TdxActivityIndicatorArcBasedProperties(ActivityIndicator.Properties);
    AProperties.ArcColor := dxColorToAlphaColor(ccbArcColor.ColorValue);
    AProperties.ArcThickness := seArcThickness.Value;
  end;
end;

procedure TfrmActivityIndicator.ccbArcColorPropertiesChange(Sender: TObject);
var
  AProperties: TdxActivityIndicatorArcBasedProperties;
begin
  if not FApplyingChanges and (ActivityIndicator.Properties is TdxActivityIndicatorArcBasedProperties) then
    begin
      AProperties := TdxActivityIndicatorArcBasedProperties(ActivityIndicator.Properties);
      AProperties.ArcColor := dxColorToAlphaColor(ccbArcColor.ColorValue);
      AProperties.ArcThickness := seArcThickness.Value;
    end;
end;

procedure TfrmActivityIndicator.seDotSizePropertiesChange(Sender: TObject);
var
  AProperties: TdxActivityIndicatorDotBasedProperties;
begin
  if not FApplyingChanges and (ActivityIndicator.Properties is TdxActivityIndicatorDotBasedProperties) then
    begin
      AProperties := TdxActivityIndicatorDotBasedProperties(ActivityIndicator.Properties);
      AProperties.DotColor := dxColorToAlphaColor(ccbDotColor.ColorValue);
      AProperties.DotCount := seDotCount.Value;
      AProperties.DotSize := seDotSize.Value;
    end;
end;

procedure TfrmActivityIndicator.seDotCountPropertiesChange(Sender: TObject);
var
  AProperties: TdxActivityIndicatorDotBasedProperties;
begin
  if not FApplyingChanges and (ActivityIndicator.Properties is TdxActivityIndicatorDotBasedProperties) then
    begin
      AProperties := TdxActivityIndicatorDotBasedProperties(ActivityIndicator.Properties);
      AProperties.DotColor := dxColorToAlphaColor(ccbDotColor.ColorValue);
      AProperties.DotCount := seDotCount.Value;
      AProperties.DotSize := seDotSize.Value;
    end;
end;

procedure TfrmActivityIndicator.ccbDotColorPropertiesChange(Sender: TObject);
var
  AProperties: TdxActivityIndicatorDotBasedProperties;
begin
  if not FApplyingChanges and (ActivityIndicator.Properties is TdxActivityIndicatorDotBasedProperties) then
    begin
      AProperties := TdxActivityIndicatorDotBasedProperties(ActivityIndicator.Properties);
      AProperties.DotColor := dxColorToAlphaColor(ccbDotColor.ColorValue);
      AProperties.DotCount := seDotCount.Value;
      AProperties.DotSize := seDotSize.Value;
    end;
end;

procedure TfrmActivityIndicator.tcMainChange(Sender: TObject);
var
  AArcBasedProperties: TdxActivityIndicatorArcBasedProperties;
  ADotBasedProperties: TdxActivityIndicatorDotBasedProperties;
begin
  if tcMain.TabIndex < 0 then
    Exit;

  FApplyingChanges := True;
  try
    ActivityIndicator.PropertiesClassName := GetRegisteredActivityIndicatorProperties.Items[tcMain.TabIndex].ClassName;
    seAnimationTime.Value := ActivityIndicator.Properties.AnimationTime;

    lgArcBased.Visible := ActivityIndicator.Properties is TdxActivityIndicatorArcBasedProperties;
    if lgArcBased.Visible then
    begin
      AArcBasedProperties := TdxActivityIndicatorArcBasedProperties(ActivityIndicator.Properties);
      seArcThickness.Value := AArcBasedProperties.ArcThickness;
      ccbArcColor.ColorValue := dxAlphaColorToColor(AArcBasedProperties.ArcColor);
    end;

    lgDotBased.Visible := ActivityIndicator.Properties is TdxActivityIndicatorDotBasedProperties;
    if lgDotBased.Visible then
    begin
      ADotBasedProperties := TdxActivityIndicatorDotBasedProperties(ActivityIndicator.Properties);
      ccbDotColor.ColorValue := dxAlphaColorToColor(ADotBasedProperties.DotColor);
      seDotCount.Value := ADotBasedProperties.DotCount;
      seDotSize.Value := ADotBasedProperties.DotSize;
    end;
  finally
    FApplyingChanges := False;
  end;
end;

initialization
  dxFrameManager.RegisterFrame(ActivityIndicatorFrameID, TfrmActivityIndicator, ActivityIndicatorFrameName, -1,
    MultiPurposeGroupIndex, -1, -1);
end.
