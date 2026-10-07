unit RibbonNotepadDemoOptions;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls, cxGraphics, cxControls, cxLookAndFeels, Vcl.ExtCtrls,
  dxRibbonSkins, cxLookAndFeelPainters, cxContainer, cxEdit, cxLabel, Vcl.Menus,
  cxButtons, dxBevel, cxTextEdit, cxMaskEdit, cxDropDownEdit, dxRibbon, dxForms, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxClasses, dxLayoutControl, dxLayoutLookAndFeels;

type
  TRibbonDemoStyle = (rdsOffice2007, rdsOffice2010, rdsOffice2013, rdsOffice2016, rdsOffice2016Tablet, rdsOffice2019, rdsScenic, rdsOffice365);

  TScreenTipOptions = record
    ShowScreenTips: Boolean;
    ShowDescriptions: Boolean;
  end;

  { TRibbonDemoOptionsForm }

  TRibbonDemoOptionsForm = class(TdxForm)
    btnCancel: TcxButton;
    btnOk: TcxButton;
    cbColorScheme: TcxComboBox;
    cbColorSchemeAccent: TcxComboBox;
    cbRibbonStyle: TcxComboBox;
    cbScreenTipStyle: TcxComboBox;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    procedure cbRibbonStyleSelect(Sender: TObject);
  public
    constructor Create(AOwner: TComponent); override;

    procedure LoadOptions(const AColorSchemeName: string; const AScreenTipOptions: TScreenTipOptions;
      AStyle: TRibbonDemoStyle; AColorSchemeAccent: TdxRibbonColorSchemeAccent);
    procedure SaveOptions(out AColorSchemeName: string; out AScreenTipOptions: TScreenTipOptions;
      out AStyle: TRibbonDemoStyle; out AColorSchemeAccent: TdxRibbonColorSchemeAccent);

    class function GetActualColorSchemeName(ARibbon: TdxRibbon): string;
    class procedure PopulateColorSchemeAccents(AItems: TStrings);
    class procedure PopulateColorSchemes(AItems: TStrings; ARibbonStyle: TdxRibbonStyle);
    class procedure PopulateRibbonStyles(AItems: TStrings);
  end;

var
  RibbonDemoStyleToRibbonStyle: array[TRibbonDemoStyle] of TdxRibbonStyle = (
    rs2007, rs2010, rs2013, rs2016, rs2016Tablet, rs2019, rs2010{Scenic}, rsOffice365
  );

function ExecuteRibbonDemoOptions(var AColorSchemeName: string; var AScreenTipOptions: TScreenTipOptions;
  var AStyle: TRibbonDemoStyle; var AColorSchemeAccent: TdxRibbonColorSchemeAccent): Boolean;
implementation

uses
  System.Math, dxSkinsDefaultPainters, dxDemoUtils, dxSkinsdxRibbonPainter;

{$R *.dfm}

function ExecuteRibbonDemoOptions(var AColorSchemeName: string; var AScreenTipOptions: TScreenTipOptions;
  var AStyle: TRibbonDemoStyle; var AColorSchemeAccent: TdxRibbonColorSchemeAccent): Boolean;
begin
  with TRibbonDemoOptionsForm.Create(nil) do
  try
    LoadOptions(AColorSchemeName, AScreenTipOptions, AStyle, AColorSchemeAccent);
    Result := ShowModal = mrOk;
    if Result then
      SaveOptions(AColorSchemeName, AScreenTipOptions, AStyle, AColorSchemeAccent);
  finally
    Free;
  end;
end;

{ TRibbonDemoOptionsForm }

constructor TRibbonDemoOptionsForm.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  PopulateRibbonStyles(cbRibbonStyle.Properties.Items);
  PopulateColorSchemeAccents(cbColorSchemeAccent.Properties.Items);
end;

procedure TRibbonDemoOptionsForm.LoadOptions(const AColorSchemeName: string;
  const AScreenTipOptions: TScreenTipOptions; AStyle: TRibbonDemoStyle;
  AColorSchemeAccent: TdxRibbonColorSchemeAccent);
begin
  cbRibbonStyle.ItemIndex := Ord(AStyle);
  cbRibbonStyleSelect(nil);
  cbColorScheme.ItemIndex := Max(0, cbColorScheme.Properties.Items.IndexOf(AColorSchemeName));
  cbColorSchemeAccent.ItemIndex := Ord(AColorSchemeAccent);
  if AScreenTipOptions.ShowScreenTips then
    cbScreenTipStyle.ItemIndex := Ord(not AScreenTipOptions.ShowDescriptions)
  else
    cbScreenTipStyle.ItemIndex := 2;
end;

procedure TRibbonDemoOptionsForm.SaveOptions(out AColorSchemeName: string;
  out AScreenTipOptions: TScreenTipOptions; out AStyle: TRibbonDemoStyle;
  out AColorSchemeAccent: TdxRibbonColorSchemeAccent);
begin
  AColorSchemeName := cbColorScheme.Text;
  AStyle := TRibbonDemoStyle(cbRibbonStyle.ItemIndex);
  AScreenTipOptions.ShowScreenTips := cbScreenTipStyle.ItemIndex <> 2;
  AScreenTipOptions.ShowDescriptions := cbScreenTipStyle.ItemIndex = 0;
  AColorSchemeAccent := TdxRibbonColorSchemeAccent(cbColorSchemeAccent.ItemIndex);
end;

class function TRibbonDemoOptionsForm.GetActualColorSchemeName(ARibbon: TdxRibbon): string;
begin
  Result := ARibbon.ColorSchemeName;
  if Result = sdxSkinsUserSkinName then
    Result := dxSkinsUserSkinGetLoadedSkinName
end;

class procedure TRibbonDemoOptionsForm.PopulateColorSchemeAccents(AItems: TStrings);
var
  AAccentIndex: TdxRibbonColorSchemeAccent;
begin
  AItems.BeginUpdate;
  try
    AItems.Clear;
    for AAccentIndex := Low(TdxRibbonColorSchemeAccent) to High(TdxRibbonColorSchemeAccent) do
      AItems.Add(dxRibbonColorSchemeAccentNames[AAccentIndex]);
  finally
    AItems.EndUpdate;
  end;
end;

class procedure TRibbonDemoOptionsForm.PopulateColorSchemes(AItems: TStrings; ARibbonStyle: TdxRibbonStyle);

  procedure AddSkin(ASkin: TdxCustomRibbonSkin);
  begin
    if ASkin.Name <> sdxSkinsUserSkinName then
    begin
      if AItems.IndexOf(ASkin.Name) < 0 then
        AItems.AddObject(ASkin.Name, ASkin);
    end;
  end;

  procedure AddColorScheme(ASkin: TdxCustomRibbonSkin);
  begin
    if (ASkin is TdxSkinRibbonPainter) and TdxSkinRibbonPainter(ASkin).Painter.IsInternalPainter then
      Exit;
    if ASkin.Style = ARibbonStyle then
      AddSkin(ASkin);
  end;

var
  I: Integer;
begin
  AItems.BeginUpdate;
  try
    AItems.Clear;
    for I := 0 to dxRibbonSkinsManager.SkinCount - 1 do
      AddColorScheme(dxRibbonSkinsManager.Skins[I]);
    if GetSkinResFileName <> '' then
      dxSkinsUserSkinPopulateSkinNames(GetSkinResFileName, AItems);
  finally
    AItems.EndUpdate;
  end;
end;

class procedure TRibbonDemoOptionsForm.PopulateRibbonStyles(AItems: TStrings);
const
  NamesMap: array[TRibbonDemoStyle] of string = (
    'Office 2007', 'Office 2010', 'Office 2013', 'Office 2016', 'Office 2016 Tablet', 'Office 2019', 'Scenic', 'Office 365'
  );
var
  I: TRibbonDemoStyle;
begin
  AItems.BeginUpdate;
  try
    AItems.Clear;
    for I := Low(TRibbonDemoStyle) to High(TRibbonDemoStyle) do
      AItems.Add(NamesMap[I])
  finally
    AItems.EndUpdate;
  end;
end;

procedure TRibbonDemoOptionsForm.cbRibbonStyleSelect(Sender: TObject);
var
  ASelectedColorSchemeName: string;
begin
  cbColorSchemeAccent.Enabled := cbRibbonStyle.ItemIndex > 0;

  if (cbColorScheme.ItemIndex >= 0) and
    (cbColorScheme.Properties.Items.Objects[cbColorScheme.ItemIndex] = nil) then
    ASelectedColorSchemeName := cbColorScheme.Text
  else
    ASelectedColorSchemeName := '';
  PopulateColorSchemes(cbColorScheme.Properties.Items, RibbonDemoStyleToRibbonStyle[TRibbonDemoStyle(cbRibbonStyle.ItemIndex)]);
  cbColorScheme.ItemIndex := Max(0, cbColorScheme.Properties.Items.IndexOf(ASelectedColorSchemeName));
end;

end.
