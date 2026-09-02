unit uBarCode;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxCustomDemoFrameUnit, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxBarBuiltInMenu, dxLayoutContainer,
  cxContainer, cxEdit, dxBarCode, Vcl.ExtCtrls, cxMemo, cxCheckBox, dxToggleSwitch, cxDropDownEdit, cxTextEdit, cxMaskEdit,
  cxSpinEdit, cxLabel, cxPC, cxGroupBox, dxBevel, cxClasses, dxLayoutControl, Vcl.ActnList, dxLayoutcxEditAdapters;

type
  TfrmBarCode = class(TdxCustomDemoFrame)
    dxLayoutItem1: TdxLayoutItem;
    tcMain: TcxTabControl;
    bvlSeparator: TdxBevel;
    Panel1: TPanel;
    BarCode: TdxBarCode;
    lcSettingsGroup_Root: TdxLayoutGroup;
    lcSettings: TdxLayoutControl;
    dxLayoutItem2: TdxLayoutItem;
    memText: TcxMemo;
    lgCustomSettings: TdxLayoutGroup;
    lgCommonProperties: TdxLayoutGroup;
    lgSpecificProperties: TdxLayoutGroup;
    liFontSize: TdxLayoutItem;
    seFontSize: TcxSpinEdit;
    liRotationAngle: TdxLayoutItem;
    cbRotationAngle: TcxComboBox;
    liModuleSize: TdxLayoutItem;
    seModuleWidth: TcxSpinEdit;
    liFitMode: TdxLayoutItem;
    cbFitMode: TcxComboBox;
    cxCheckBox1: TcxCheckBox;
    dxLayoutItem7: TdxLayoutItem;
    acShowText: TAction;
    liWideNarrowRatio: TdxLayoutItem;
    seWideNarrowRatio: TcxSpinEdit;
    acChecksum: TAction;
    cxCheckBox2: TcxCheckBox;
    liCheckSum: TdxLayoutItem;
    liCharacterSet: TdxLayoutItem;
    cbCharacterSet: TcxComboBox;
    liCompactionMode: TdxLayoutItem;
    cbCompactionMode: TcxComboBox;
    liErrorCorrectionLevel: TdxLayoutItem;
    cbErrorCorrectionLevel: TcxComboBox;
    liSizeVersion: TdxLayoutItem;
    cbSizeVersion: TcxComboBox;
    procedure memTextPropertiesChange(Sender: TObject);
    procedure tcMainChange(Sender: TObject);
  private
    FApplyingChanges: Boolean;
    procedure SetCalculateCheckSum;
    procedure SetWideNarrowRatio;
  protected
    procedure CheckControlStartProperties; override;
    function GetDescription: string; override;
    function GetInspectedObject: TPersistent; override;
  public
    constructor Create(AOwner: TComponent); override;
  end;

implementation

uses
  dxCore, uStrsConst, dxFrames, FrameIDs, System.Math, dxBarCodeUtils;

{$R *.dfm}

const
  FIndexToSymbologyClassName: array[0..12] of string = ('TdxBarCode11Symbology', 'TdxBarCode39Symbology',
    'TdxBarCode39ExtendedSymbology', 'TdxBarCode93Symbology', 'TdxBarCode93ExtendedSymbology', 'TdxBarCode128Symbology',
    'TdxBarCodeEAN8Symbology', 'TdxBarCodeEAN13Symbology', 'TdxBarCodeInterleaved2Of5Symbology',
    'TdxBarCodeMSISymbology', 'TdxBarCodeUPCASymbology', 'TdxBarCodeUPCESymbology', 'TdxBarCodeQRCodeSymbology');

constructor TfrmBarCode.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  lcSettings.LookAndFeel := lcFrame.LayoutLookAndFeel;
end;

procedure TfrmBarCode.CheckControlStartProperties;
begin
  tcMain.TabIndex := 0;
  memText.Text := '0123456789000';
  FApplyingChanges := False;
  tcMainChange(nil);
end;

function TfrmBarCode.GetDescription: string;
begin
  Result := sdxFrameBarCodeDescription;
end;

function TfrmBarCode.GetInspectedObject: TPersistent;
begin
  Result := BarCode;
end;

procedure TfrmBarCode.memTextPropertiesChange(Sender: TObject);
begin
  if FApplyingChanges then
    Exit;

  BarCode.Text := memText.Text;

  if seFontSize.Value > 0 then
    BarCode.Style.Font.Size := seFontSize.Value;
  BarCode.Properties.RotationAngle := TcxRotationAngle(cbRotationAngle.ItemIndex);
  if seModuleWidth.Value > 0 then
    BarCode.Properties.ModuleWidth := seModuleWidth.Value;
  BarCode.Properties.FitMode := TdxBarCodeFitMode(cbFitMode.ItemIndex);
  BarCode.Properties.ShowText := acShowText.Checked;

  if seWideNarrowRatio.Value > 0 then
    SetWideNarrowRatio;

  SetCalculateCheckSum;
  if BarCode.Properties.Symbology is TdxBarCode128Symbology then
    TdxBarCode128Symbology(BarCode.Properties.Symbology).CharacterSet := TdxBarCode128CharacterSet(cbCharacterSet.ItemIndex);
  if BarCode.Properties.Symbology is TdxBarCodeQRCodeSymbology then
  begin
    TdxBarCodeQRCodeSymbology(BarCode.Properties.Symbology).CompactionMode := TdxQRCodeCompactionMode(cbCompactionMode.ItemIndex);
    TdxBarCodeQRCodeSymbology(BarCode.Properties.Symbology).ErrorCorrectionLevel := TdxQRCodeErrorCorrectionLevel(cbErrorCorrectionLevel.ItemIndex);
    TdxBarCodeQRCodeSymbology(BarCode.Properties.Symbology).Version := cbSizeVersion.ItemIndex;
  end;
end;

procedure TfrmBarCode.SetCalculateCheckSum;
begin
  if BarCode.Properties.Symbology is TdxBarCodeInterleaved2Of5Symbology then
    TdxBarCodeInterleaved2Of5Symbology(BarCode.Properties.Symbology).Checksum := acChecksum.Checked
  else
    if BarCode.Properties.Symbology is TdxBarCode39Symbology then
      TdxBarCode39Symbology(BarCode.Properties.Symbology).Checksum := acChecksum.Checked
    else
      if BarCode.Properties.Symbology is TdxBarCode39ExtendedSymbology then
        TdxBarCode39ExtendedSymbology(BarCode.Properties.Symbology).Checksum := acChecksum.Checked;
end;

procedure TfrmBarCode.SetWideNarrowRatio;
begin
  if BarCode.Properties.Symbology is TdxBarCodeInterleaved2Of5Symbology then
    TdxBarCodeInterleaved2Of5Symbology(BarCode.Properties.Symbology).WideNarrowRatio := seWideNarrowRatio.Value
  else
    if BarCode.Properties.Symbology is TdxBarCode39Symbology then
      TdxBarCode39Symbology(BarCode.Properties.Symbology).WideNarrowRatio := seWideNarrowRatio.Value
    else
      if BarCode.Properties.Symbology is TdxBarCode39ExtendedSymbology then
        TdxBarCode39ExtendedSymbology(BarCode.Properties.Symbology).WideNarrowRatio := seWideNarrowRatio.Value;
end;

procedure TfrmBarCode.tcMainChange(Sender: TObject);
begin
  if tcMain.TabIndex < 0 then
    Exit;

  FApplyingChanges := True;
  try
    BarCode.Style.Font.Size := seFontSize.Value;
    BarCode.Properties.BeginUpdate;
    try
      BarCode.Properties.BarCodeSymbologyClassName := FIndexToSymbologyClassName[tcMain.TabIndex];
      lgSpecificProperties.Enabled := (tcMain.TabIndex in [1, 2, 5, 8, 12]);
      if not lgSpecificProperties.Enabled then
        lgCustomSettings.ItemIndex := 0;

      liFontSize.Visible := not (tcMain.TabIndex in [6, 7, 10, 11]);
      liWideNarrowRatio.Visible := tcMain.TabIndex in [1, 2, 8];
      liCheckSum.Visible := liWideNarrowRatio.Visible;
      liCharacterSet.Visible := tcMain.TabIndex = 5;
      liCompactionMode.Visible := tcMain.TabIndex = 12;
      liErrorCorrectionLevel.Visible := liCompactionMode.Visible;
      liSizeVersion.Visible := liCompactionMode.Visible;
      BarCode.Properties.RotationAngle := TcxRotationAngle(cbRotationAngle.ItemIndex);
      BarCode.Properties.FitMode := TdxBarCodeFitMode(cbFitMode.ItemIndex);
      if BarCode.Properties.Symbology is TdxBarCode128Symbology then
        TdxBarCode128Symbology(BarCode.Properties.Symbology).CharacterSet := TdxBarCode128CharacterSet(cbCharacterSet.ItemIndex);
      if BarCode.Properties.Symbology is TdxBarCodeQRCodeSymbology then
      begin
        TdxBarCodeQRCodeSymbology(BarCode.Properties.Symbology).CompactionMode := TdxQRCodeCompactionMode(cbCompactionMode.ItemIndex);
        TdxBarCodeQRCodeSymbology(BarCode.Properties.Symbology).ErrorCorrectionLevel := TdxQRCodeErrorCorrectionLevel(cbErrorCorrectionLevel.ItemIndex);
        TdxBarCodeQRCodeSymbology(BarCode.Properties.Symbology).Version := cbSizeVersion.ItemIndex;
      end;
      SetWideNarrowRatio;
      SetCalculateCheckSum;
      case tcMain.TabIndex of
        0: memText.Text := '01234-56789';
        1, 3: memText.Text := 'ABC-1234';
        2, 4, 5: memText.Text := 'Abc-123'; 
        6, 11: memText.Text := '0123456';
        7, 8, 9: memText.Text := '012345678901';
        10: memText.Text := '01234567890';
        12: memText.Text := 'https://www.devexpress.com/';
      end;
      if tcMain.TabIndex = 12 then
        seModuleWidth.Value := 5
      else
        seModuleWidth.Value := 2;

      acShowText.Checked := tcMain.TabIndex <> 12;
      BarCode.Text := memText.Text;
      BarCode.Properties.ShowText := acShowText.Checked;
      BarCode.Properties.ModuleWidth := seModuleWidth.Value;
    finally
      BarCode.Properties.EndUpdate;
    end;
  finally
    FApplyingChanges := False;
  end;
end;

initialization
  dxFrameManager.RegisterFrame(BarCodeFrameID, TfrmBarCode, BarCodeFrameName, -1,
    EditorsWithoutTextBoxesGroupIndex, -1, -1);

end.
