unit uVertGridRTTI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxVertGridFrame, Vcl.StdCtrls, Vcl.ExtCtrls, cxStyles, cxGraphics,
  cxEdit, Vcl.ComCtrls, cxInplaceContainer, cxVGrid, cxOI, cxControls,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookAndFeels,
  cxLookAndFeelPainters, cxLabel, dxLayoutContainer, cxClasses, dxLayoutControl, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxCheckBox, dxToggleSwitch, dxScrollbarAnnotations, dxLayoutLookAndFeels,
  cxFilter, cxGeometry, dxSkinsCore;

type
  TfrmVerticalGridRTTI = class(TVerticalGridFrame)
    dxLayoutSplitterItem1: TdxLayoutSplitterItem;
    dxLayoutItem2: TdxLayoutItem;
    pnlControls: TPanel;
    Edit1: TEdit;
    Button1: TButton;
    Memo1: TMemo;
    dxLayoutItem4: TdxLayoutItem;
    Inspector: TcxRTTIInspector;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    cbSelectedObject: TcxComboBox;
    dxToggleSwitch1: TdxToggleSwitch;
    dxLayoutCxLookAndFeel1: TdxLayoutCxLookAndFeel;
    procedure cbSelectedObjectPropertiesEditValueChanged(Sender: TObject);
    function pnlControlsAlignInsertBefore(Sender: TWinControl; C1,
      C2: TControl): Boolean;
    procedure pnlControlsAlignPosition(Sender: TWinControl; Control: TControl;
      var NewLeft, NewTop, NewWidth, NewHeight: Integer; var AlignRect: TRect;
      AlignInfo: TAlignInfo);
  protected
    function GetDescription: string; override;
  public
    constructor Create(AOwner: TComponent); override;
    function HasOptions: Boolean; override;
  end;

implementation

uses
  maindata, dxFrames, FrameIDs, uStrsConst, dxDPIAwareUtils, System.Math;

{$R *.dfm}

{ TfrmVerticalGridRTTI }

constructor TfrmVerticalGridRTTI.Create(AOwner: TComponent);
var
  I: Integer;
begin
  inherited Create(AOwner);
  for I := 0 to pnlControls.ControlCount - 1 do
    cbSelectedObject.Properties.Items.Add(pnlControls.Controls[I].Name);
  if cbSelectedObject.Properties.Items.Count > 0 then
    cbSelectedObject.ItemIndex := 0;
end;

function TfrmVerticalGridRTTI.HasOptions: Boolean;
begin
  Result := False;
end;

function TfrmVerticalGridRTTI.pnlControlsAlignInsertBefore(Sender: TWinControl;
  C1, C2: TControl): Boolean;
begin
  Result := (C1.Left <= C2.Left) and (C1.Top <= C2.Top);
end;

procedure TfrmVerticalGridRTTI.pnlControlsAlignPosition(Sender: TWinControl;
  Control: TControl; var NewLeft, NewTop, NewWidth, NewHeight: Integer;
  var AlignRect: TRect; AlignInfo: TAlignInfo);
const
  AMargin = 6;
  AMemoHeight = 150;
  AMemoWidth = 320;  
var
  APrevControl: TControl;
  AScaleFactor: IdxScaleFactor;

  function ApplyScaleFactor(AValue: Integer): Integer;
  begin
    if AScaleFactor <> nil then
      Result := AScaleFactor.Value.Apply(AValue)
    else
      Result := AValue;
  end;

  function GetWidth: Integer;
  begin
    if (Control = Memo1) or (Control = Edit1) then
      Result := ApplyScaleFactor(AMemoWidth)
    else
      Result := NewWidth;
  end;

  function GetHeight: Integer;
  begin
    if Control = Memo1 then
      Result := ApplyScaleFactor(AMemoHeight)
    else
      Result := NewHeight;
  end;

  function GetTop: Integer;
  begin
    if APrevControl <> nil then
      Result := APrevControl.Top + APrevControl.Height + ApplyScaleFactor(AMargin)
    else
      Result := ApplyScaleFactor(AMargin);
  end;

  function GetLeft: Integer;
  begin
    Result := AlignRect.Width div 2 - ApplyScaleFactor(AMemoWidth) div 2;
    Result := Max(Result, ApplyScaleFactor(AMargin));
  end;

  procedure InitializePrevControlReference;
  begin
    if AlignInfo.ControlIndex > 0 then
      APrevControl := TControl(AlignInfo.AlignList.List[AlignInfo.ControlIndex - 1])
    else
      APrevControl := nil;
  end;

  procedure InitializeScaleFactor;
  begin
    if not Supports(Parent, IdxScaleFactor, AScaleFactor) then
      AScaleFactor := nil;
  end;

begin
  InitializeScaleFactor;
  InitializePrevControlReference;
  NewLeft := GetLeft;
  NewTop := GetTop;
  NewHeight := GetHeight;
  NewWidth := GetWidth;
end;

procedure TfrmVerticalGridRTTI.cbSelectedObjectPropertiesEditValueChanged(
  Sender: TObject);
begin
  Inspector.InspectedObject := FindComponent(cbSelectedObject.Text);
end;

function TfrmVerticalGridRTTI.GetDescription: string;
begin
  Result := sdxFrameVerticalGridRTTI;
end;

initialization
  dxFrameManager.RegisterFrame(VerticalGridInspectorFrameID, TfrmVerticalGridRTTI,
    VerticalGridRTTIName, VerticalGridRTTIImageIndex, -1, VerticalGridSideBarGroupIndex);


end.
