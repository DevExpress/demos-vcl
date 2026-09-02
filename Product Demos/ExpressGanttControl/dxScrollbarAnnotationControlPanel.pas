unit dxScrollbarAnnotationControlPanel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinCoffee, cxContainer, cxEdit, cxCheckBox, Vcl.Menus,
  dxLayoutcxEditAdapters, dxLayoutContainer, dxLayoutControlAdapters, cxClasses,
  Vcl.StdCtrls, cxButtons, cxCustomListBox, cxCheckListBox, Vcl.ExtCtrls,
  cxDropDownEdit, cxTextEdit, cxMaskEdit, cxSpinEdit, dxLayoutControl, dxScrollbarAnnotations,
  dxColorDialog, System.ImageList, Vcl.ImgList, cxImageList,
  dxLayoutLookAndFeels;

type
  PdxScrollbarAnnotationStyle = ^TdxScrollbarAnnotationStyle;

  TfrmScrollbarAnnotationControlPanel = class(TFrame, IcxLookAndFeelNotificationListener)
    dxLayoutControl2: TdxLayoutControl;
    seMinHeight: TcxSpinEdit;
    seMaxHeight: TcxSpinEdit;
    seWidth: TcxSpinEdit;
    seOffset: TcxSpinEdit;
    cbAlignment: TcxComboBox;
    pbColor: TPaintBox;
    cxCheckListBox1: TcxCheckListBox;
    cxButton1: TcxButton;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    liDefaultColor: TdxLayoutItem;
    dxColorDialog1: TdxColorDialog;
    cxImageList1: TcxImageList;
    cxEditStyleController1: TcxEditStyleController;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutCxLookAndFeel1: TdxLayoutCxLookAndFeel;
    dxLayoutCxLookAndFeel2: TdxLayoutCxLookAndFeel;
    dxLayoutGroup5: TdxLayoutGroup;
    procedure cxCheckListBox1Click(Sender: TObject);
    procedure cxCheckListBox1EditValueChanged(Sender: TObject);
    procedure pbColorClick(Sender: TObject);
    procedure pbColorPaint(Sender: TObject);
    procedure cbAlignmentPropertiesChange(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure seMinHeightPropertiesEditValueChanged(Sender: TObject);
    procedure seMaxHeightPropertiesEditValueChanged(Sender: TObject);
    procedure seWidthPropertiesEditValueChanged(Sender: TObject);
    procedure seOffsetPropertiesEditValueChanged(Sender: TObject);
  strict private
    FLockStyleUpdating: Boolean;
    FVisibleAnnotationKinds: TdxScrollbarAnnotationKinds;
    FOnAnnotationStyleChanged: TNotifyEvent;
    function GetCurrentAnnotationStyle: TdxScrollbarAnnotationStyle;
    procedure GetCurrentStyle(var AStyle: PdxScrollbarAnnotationStyle);
    procedure SetVisibleAnnotationKinds(Value: TdxScrollbarAnnotationKinds);
  private
    function GetCurrentAnnotationStyleId: TdxScrollbarAnnotationKind;
    procedure UpdateCurrentAnnotationStyle;
    procedure UpdateCurrentAnnotationStyleEditors;
    property CurrentAnnotationStyle: TdxScrollbarAnnotationStyle read GetCurrentAnnotationStyle;
    property CurrentAnnotationStyleId: TdxScrollbarAnnotationKind read GetCurrentAnnotationStyleId;
    { Private declarations }
  protected
    // IcxLookAndFeelNotificationListener
    function GetObject: TObject;
    procedure MasterLookAndFeelChanged(Sender: TcxLookAndFeel; AChangedValues: TcxLookAndFeelValues);
    procedure MasterLookAndFeelDestroying(Sender: TcxLookAndFeel);
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Initialize(AAnnotationKinds: TdxScrollbarAnnotationKinds = [dxFirstPredefinedScrollbarAnnotationID..dxErrorScrollbarAnnotationID]);
    property VisibleAnnotationKinds: TdxScrollbarAnnotationKinds read FVisibleAnnotationKinds write SetVisibleAnnotationKinds;
    property OnAnnotationStyleChanged: TNotifyEvent read FOnAnnotationStyleChanged write FOnAnnotationStyleChanged;
  end;

var
  SAnnotationNames: array [dxSelectedRowScrollbarAnnotationID..dxErrorScrollbarAnnotationID] of string = (
    'Selected Rows', 'Focused Row', 'Search Results', 'Errors');

implementation

{$R *.dfm}

uses
 dxGdiPlusClasses, dxCoreGraphics;

const
  SAlignment: array [TdxScrollbarAnnotationAlignment] of string = ('Near', 'Center', 'Far', 'Client');

function dxGetDefaultScrollbarAnnotationStyle(AKind: TdxScrollbarAnnotationKind): TdxScrollbarAnnotationStyle;
begin
  case AKind of
    dxSelectedRowScrollbarAnnotationID:
      Result := dxSelectedRowScrollbarAnnotationStyle;
    dxFocusedRowScrollbarAnnotationID:
      Result := dxFocusedRowScrollbarAnnotationStyle;
    dxSearchResultScrollbarAnnotationID:
      Result := dxSearchResultScrollbarAnnotationStyle;
    dxErrorScrollbarAnnotationID:
      Result := dxErrorScrollbarAnnotationStyle;
  else // Custom
    Result := dxCustomScrollbarAnnotationStyle;
  end;
end;

{ TfrmScrollbarAnnotationControlPanel }

constructor TfrmScrollbarAnnotationControlPanel.Create(AOwner: TComponent);
begin
  inherited;
  RootLookAndFeel.AddChangeListener(Self);
  AutoSize := True;
end;

procedure TfrmScrollbarAnnotationControlPanel.cbAlignmentPropertiesChange(Sender: TObject);
begin
  UpdateCurrentAnnotationStyle;
end;

procedure TfrmScrollbarAnnotationControlPanel.cxButton1Click(Sender: TObject);
var
  AStyle: PdxScrollbarAnnotationStyle;
begin
  GetCurrentStyle(AStyle);
  AStyle.Color := dxacDefault;
  liDefaultColor.Visible := AStyle.Color <> dxacDefault;
  UpdateCurrentAnnotationStyle;
end;

procedure TfrmScrollbarAnnotationControlPanel.cxCheckListBox1Click(Sender: TObject);
begin
  UpdateCurrentAnnotationStyleEditors;
end;

procedure TfrmScrollbarAnnotationControlPanel.cxCheckListBox1EditValueChanged(Sender: TObject);
var
  AResult, I: Integer;
  AAnnotationKinds: TdxScrollbarAnnotationKinds;
begin
  AResult := cxCheckListBox1.EditValue;
  AAnnotationKinds := [];
  for I := 0 to cxCheckListBox1.Count - 1 do
    if AResult and (1 shl I) <> 0 then
      Include(AAnnotationKinds, cxCheckListBox1.Items[I].Tag);
  VisibleAnnotationKinds := AAnnotationKinds;
end;

destructor TfrmScrollbarAnnotationControlPanel.Destroy;
begin
  RootLookAndFeel.RemoveChangeListener(Self);
  inherited;
end;

function TfrmScrollbarAnnotationControlPanel.GetCurrentAnnotationStyle: TdxScrollbarAnnotationStyle;
var
  AStyle: PdxScrollbarAnnotationStyle;
begin
  GetCurrentStyle(AStyle);
  Result := AStyle^;
end;

function TfrmScrollbarAnnotationControlPanel.GetCurrentAnnotationStyleId: TdxScrollbarAnnotationKind;
begin
  Result := cxCheckListBox1.Items[cxCheckListBox1.ItemIndex].Tag;
end;

procedure TfrmScrollbarAnnotationControlPanel.GetCurrentStyle(var AStyle: PdxScrollbarAnnotationStyle);
begin
  case CurrentAnnotationStyleId of
    dxSelectedRowScrollbarAnnotationID:
      AStyle := @dxSelectedRowScrollbarAnnotationStyle;
    dxFocusedRowScrollbarAnnotationID:
      AStyle := @dxFocusedRowScrollbarAnnotationStyle;
    dxSearchResultScrollbarAnnotationID:
      AStyle := @dxSearchResultScrollbarAnnotationStyle;
    dxErrorScrollbarAnnotationID:
      AStyle := @dxErrorScrollbarAnnotationStyle;
  else // Custom
    AStyle := @dxCustomScrollbarAnnotationStyle;
  end;
end;

function TfrmScrollbarAnnotationControlPanel.GetObject: TObject;
begin
  Result := Self;
end;

procedure TfrmScrollbarAnnotationControlPanel.Initialize(AAnnotationKinds: TdxScrollbarAnnotationKinds = [dxFirstPredefinedScrollbarAnnotationID..dxErrorScrollbarAnnotationID]);
var
  AKind: TdxScrollbarAnnotationKind;
  AAlignment: TdxScrollbarAnnotationAlignment;
  AItem: TcxCheckListBoxItem;
  AVisibleAnnotationKinds: TdxScrollbarAnnotationKinds;
begin
  AVisibleAnnotationKinds := [dxFocusedRowScrollbarAnnotationID, dxSearchResultScrollbarAnnotationID, dxErrorScrollbarAnnotationID];
  for AAlignment := Low(TdxScrollbarAnnotationAlignment) to High(TdxScrollbarAnnotationAlignment) do
    cbAlignment.Properties.Items.Add(SAlignment[AAlignment]);
  for AKind := dxFirstPredefinedScrollbarAnnotationID to dxErrorScrollbarAnnotationID do
    if AKind in AAnnotationKinds then
    begin
      cxCheckListBox1.AddItem(SAnnotationNames[AKind]);
      AItem := cxCheckListBox1.Items[cxCheckListBox1.Count - 1];
      AItem.Tag := Ord(AKind);
      AItem.Checked := AKind in AVisibleAnnotationKinds;
    end;
  cxCheckListBox1.ItemIndex := 0;
  UpdateCurrentAnnotationStyleEditors;
end;

procedure TfrmScrollbarAnnotationControlPanel.MasterLookAndFeelChanged(Sender: TcxLookAndFeel; AChangedValues: TcxLookAndFeelValues);
var
  AHeight: Integer;
begin
  AHeight := 17;
  dxAdjustToTouchableSize(AHeight);
  pbColor.Height := AHeight;
  cxButton1.Height := AHeight;
  cxButton1.Width := AHeight;
end;

procedure TfrmScrollbarAnnotationControlPanel.MasterLookAndFeelDestroying(Sender: TcxLookAndFeel);
begin
  // do nothing
end;

procedure TfrmScrollbarAnnotationControlPanel.pbColorClick(Sender: TObject);
var
  AStyle: PdxScrollbarAnnotationStyle;
begin
  dxColorDialog1.Color := CurrentAnnotationStyle.Color;
  if dxColorDialog1.Execute then
  begin
    GetCurrentStyle(AStyle);
    AStyle.Color := dxColorDialog1.Color;
    liDefaultColor.Visible := AStyle.Color <> dxacDefault;
    UpdateCurrentAnnotationStyle;
    pbColor.Refresh;
  end;
end;

function GetDefaultScrollbarAnnotationColor(APainter: TcxCustomLookAndFeelPainter;
  AAnnotationKind: TdxScrollbarAnnotationKind): TdxAlphaColor;
begin
    case AAnnotationKind of
      dxSelectedRowScrollbarAnnotationID:
        Result := APainter.DefaultSelectedScrollbarAnnotationColor;
      dxFocusedRowScrollbarAnnotationID:
        Result := APainter.DefaultFocusedScrollbarAnnotationColor;
      dxErrorScrollbarAnnotationID:
        Result := APainter.DefaultErrorScrollbarAnnotationColor;
      dxSearchResultScrollbarAnnotationID:
        Result := APainter.DefaultSearchResultAnnotationColor;
    else
      Result := APainter.DefaultCustomScrollbarAnnotationColor;
    end;
end;

procedure TfrmScrollbarAnnotationControlPanel.pbColorPaint(Sender: TObject);
var
  AStyle: TdxScrollbarAnnotationStyle;
  AColor: TdxAlphaColor;
begin
   cxDrawTransparencyCheckerboard(pbColor.Canvas.Handle, pbColor.ClientRect, 6);
   dxGPPaintCanvas.BeginPaint(pbColor.Canvas.Handle, pbColor.ClientRect);
   try
     AStyle := CurrentAnnotationStyle;
     AColor := AStyle.Color;
     if AColor = dxacDefault then
       AColor := GetDefaultScrollbarAnnotationColor(dxLayoutCxLookAndFeel1.LookAndFeelPainter, CurrentAnnotationStyleId);
     dxGPPaintCanvas.FillRectangle(pbColor.ClientRect, AColor);
   finally
     dxGPPaintCanvas.EndPaint;
   end;
end;

procedure TfrmScrollbarAnnotationControlPanel.seMaxHeightPropertiesEditValueChanged(Sender: TObject);
begin
  if (seMaxHeight.EditValue <> 0) and (seMaxHeight.EditValue < seMinHeight.EditValue) then
    seMinHeight.EditValue := seMaxHeight.EditValue;
  UpdateCurrentAnnotationStyle;
end;

procedure TfrmScrollbarAnnotationControlPanel.seMinHeightPropertiesEditValueChanged(Sender: TObject);
begin
  if (seMaxHeight.EditValue <> 0) and (seMaxHeight.EditValue < seMinHeight.EditValue) then
    seMaxHeight.EditValue := seMinHeight.EditValue;
  UpdateCurrentAnnotationStyle;
end;

procedure TfrmScrollbarAnnotationControlPanel.seOffsetPropertiesEditValueChanged(Sender: TObject);
begin
  UpdateCurrentAnnotationStyle;
end;

procedure TfrmScrollbarAnnotationControlPanel.SetVisibleAnnotationKinds(Value: TdxScrollbarAnnotationKinds);
begin
  FVisibleAnnotationKinds := Value;
  if Assigned(FOnAnnotationStyleChanged) then
    OnAnnotationStyleChanged(Self);
end;

procedure TfrmScrollbarAnnotationControlPanel.seWidthPropertiesEditValueChanged(Sender: TObject);
begin
  UpdateCurrentAnnotationStyle;
end;

procedure TfrmScrollbarAnnotationControlPanel.UpdateCurrentAnnotationStyle;
var
  AStyle: PdxScrollbarAnnotationStyle;
begin
  if FLockStyleUpdating then
    Exit;
  GetCurrentStyle(AStyle);
  AStyle.Alignment := TdxScrollbarAnnotationAlignment(cbAlignment.ItemIndex);
  AStyle.MinHeight := seMinHeight.EditValue;
  AStyle.MaxHeight := seMaxHeight.EditValue;
  AStyle.Width := seWidth.EditValue;
  AStyle.Offset := seOffset.EditValue;
  if Assigned(FOnAnnotationStyleChanged) then
    OnAnnotationStyleChanged(Self);
end;

procedure TfrmScrollbarAnnotationControlPanel.UpdateCurrentAnnotationStyleEditors;
var
  AStyle: TdxScrollbarAnnotationStyle;
begin
  AStyle := CurrentAnnotationStyle;
  FLockStyleUpdating := True;
  try
    cbAlignment.ItemIndex := Ord(AStyle.Alignment);
    seMinHeight.EditValue := AStyle.MinHeight;
    seMaxHeight.EditValue := AStyle.MaxHeight;
    seWidth.EditValue := AStyle.Width;
    seOffset.EditValue := AStyle.Offset;
    liDefaultColor.Visible := AStyle.Color <> dxacDefault;
    dxLayoutGroup6.Caption := 'Style For ' + SAnnotationNames[CurrentAnnotationStyleId];
  finally
    FLockStyleUpdating := False;
  end;
  pbColor.Refresh;
end;

end.
