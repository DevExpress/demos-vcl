unit dxGaugeControlStyles;

interface

uses
  System.Classes, Vcl.Controls, Vcl.ExtCtrls, cxGraphics, cxControls, cxLookAndFeels, cxClasses, cxLookAndFeelPainters,
  dxGDIPlusClasses, dxBarBuiltInMenu, cxPC, cxImage,  cxContainer, cxEdit, cxTrackBar, dxBar, cxLabel,
  dxGaugeDigitalScale, dxGaugeCustomScale, dxGaugeCircularScale, dxGaugeLinearScale, dxGaugeQuantitativeScale,
  dxGaugeControl, dxGaugeControlBaseFormUnit, dxLayoutContainer, dxLayoutControl, dxLayoutcxEditAdapters,
  dxLayoutLookAndFeels;

type
  TfrmGaugeStyles = class(TdxGaugeControlDemoUnitForm)
    Timer1: TTimer;
    dxLayoutItem1: TdxLayoutItem;
    cxTrackBar1: TcxTrackBar;
    dxLayoutItem2: TdxLayoutItem;
    tcStyles: TcxTabControl;
    dxGaugeControl1: TdxGaugeControl;
    dxGaugeControl1CircularScale1: TdxGaugeCircularScale;
    dxGaugeControl1DigitalScale1: TdxGaugeDigitalScale;
    dxGaugeControl1LinearScale1: TdxGaugeLinearScale;
    dxGaugeControl1CircularHalfScale1: TdxGaugeCircularHalfScale;
    dxGaugeControl1CircularQuarterLeftScale1: TdxGaugeCircularQuarterLeftScale;
    dxGaugeControl1CircularQuarterRightScale1: TdxGaugeCircularQuarterRightScale;
    dxGaugeControl1ContainerScale1: TdxGaugeContainerScale;
    dxGaugeControl1CircularThreeFourthScale1: TdxGaugeCircularThreeFourthScale;
    dxGaugeControl1DigitalScaleDate: TdxGaugeDigitalScale;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure cxTrackBar1PropertiesChange(Sender: TObject);
    procedure tcStylesChange(Sender: TObject);
  protected
    function GetDescription: string; override;
    procedure InitTrackBar;
    procedure PopulateStyleList;
    procedure UpdateGauges;
    procedure UpdateTime;
  public
    class function GetID: Integer; override;
 end;

implementation

uses
  System.SysUtils, Vcl.Graphics, dxCore, dxCoreGraphics, cxDateUtils;

type
  TdxGaugeQuantitativeScaleAccess = class(TdxGaugeQuantitativeScale);

{$R *.dfm}

function GetStyleNameByCaption(const ACaption: string): string;
begin
  Result := StringReplace(ACaption, ' ', '', [rfReplaceAll]);
end;

function GetStyleCaption(const AStyleName: string): string;
var
  I: Integer;
begin
  Result := '';
  for I := 1 to Length(AStyleName) do
  begin
    if (UpperCase(AStyleName[I]) = AStyleName[I]) and (I <> 1) and (AStyleName[1] <> 'i') and (AStyleName[2] <> ' ') then
      Result := Result + ' ';
     Result := Result + AStyleName[I];
  end;
end;

procedure TfrmGaugeStyles.UpdateGauges;
var
  I: Integer;
begin
  dxGaugeControl1.BeginUpdate;
  for I := 0 to dxGaugeControl1.Scales.Count - 1 do
  begin
    dxGaugeControl1.Scales[I].StyleName := GetStyleNameByCaption(tcStyles.Tabs[tcStyles.TabIndex].Caption);
    if dxGaugeControl1.Scales[I].ScaleType = stDigitalScale then
      TdxGaugeDigitalScale(dxGaugeControl1.Scales[I]).OptionsView.SegmentColorOff := dxMakeAlphaColor(clNone)
    else
      TdxGaugeQuantitativeScaleAccess(dxGaugeControl1.Scales[I]).Value := cxTrackBar1.Position;
  end;
  dxGaugeControl1.EndUpdate;
end;

procedure TfrmGaugeStyles.UpdateTime;
begin
  dxGaugeControl1DigitalScale1.Value := cxTimeToStr(Now, 'hh:mm:ss');
end;

class function TfrmGaugeStyles.GetID: Integer;
begin
  Result := 6;
end;

procedure TfrmGaugeStyles.InitTrackBar;
begin
  cxTrackBar1.Properties.Max := Round(dxGaugeControl1CircularScale1.OptionsView.MaxValue);
  cxTrackBar1.Properties.Min := Round(dxGaugeControl1CircularScale1.OptionsView.MinValue);
end;

procedure TfrmGaugeStyles.PopulateStyleList;
var
  I: Integer;
  AStyleNames: TStringList;
begin
  AStyleNames := TStringList.Create;
  try
    dxGaugeGetPredefinedStyleNames(AStyleNames);
    AStyleNames.Sorted := True;
    for I := 0 to AStyleNames.Count - 1 do
      tcStyles.Tabs.Add(GetStyleCaption(AStyleNames.Strings[I]));
    if AStyleNames.Count > 0 then
      tcStyles.TabIndex := 0;
  finally
    AStyleNames.Free;
  end;
end;

procedure TfrmGaugeStyles.tcStylesChange(Sender: TObject);
begin
  UpdateGauges;
end;

procedure TfrmGaugeStyles.cxTrackBar1PropertiesChange(Sender: TObject);
begin
  UpdateGauges;
end;

procedure TfrmGaugeStyles.FormCreate(Sender: TObject);

  procedure InitDate;
  var
    ADate: string;
  begin
    DateTimeToString(ADate, 'MMMM dd, YYYY', Now);
    dxGaugeControl1DigitalScaleDate.Value := ADate;
  end;

begin
  inherited;
  InitTrackBar;
  PopulateStyleList;
  UpdateGauges;
  InitDate;
  UpdateTime;
  Timer1.Enabled := True;
end;

procedure TfrmGaugeStyles.Timer1Timer(Sender: TObject);
begin
  UpdateTime;
end;

function TfrmGaugeStyles.GetDescription: string;
begin
  Result :=
    'This demo illustrates the built-in styles available for gauges. Select a tab to apply the corresponding' +
    ' style to the gauges. Move the slider' + '''' + 's thumb to adjust the gauge' + '''' + 's value. ' +
    'Resize the application''s window to scale the gauges.';
end;

initialization
  TfrmGaugeStyles.Register;

end.
