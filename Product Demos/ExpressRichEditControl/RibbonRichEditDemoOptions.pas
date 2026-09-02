unit RibbonRichEditDemoOptions;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls, cxGraphics, cxControls, cxLookAndFeels, Vcl.ExtCtrls,
  dxRibbonSkins, cxLookAndFeelPainters, cxContainer, cxEdit, cxLabel, Vcl.Menus,
  cxButtons, dxBevel, cxTextEdit, cxMaskEdit, cxDropDownEdit, dxForms, dxLayoutControlAdapters, dxLayoutcxEditAdapters,
  dxLayoutContainer, cxClasses, dxLayoutControl;

type
  TRibbonDemoStyle = (rdsOffice2007, rdsOffice2010, rdsOffice2013, rdsOffice2016, rdsOffice2016Tablet, rdsOffice2019, rdsScenic, rdsOffice365);

  TScreenTipOptions = record
    ShowScreenTips: Boolean;
    ShowDescriptions: Boolean;
  end;

  { TRibbonDemoOptionsForm }

  TRibbonDemoOptionsForm = class(TdxForm)
    Button1: TcxButton;
    Button2: TcxButton;
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
  public
    constructor Create(AOwner: TComponent); override;
    procedure LoadOptions(AStyle: TRibbonDemoStyle; const AScreenTipOptions: TScreenTipOptions);
    procedure SaveOptions(out AStyle: TRibbonDemoStyle; out AScreenTipOptions: TScreenTipOptions);

    procedure PopulateRibbonStyles(AItems: TStrings);
  end;

var
  RibbonDemoStyleToRibbonStyle: array[TRibbonDemoStyle] of TdxRibbonStyle = (
    rs2007, rs2010, rs2013, rs2016, rs2016Tablet, rs2019, rs2010{Scenic}, rsOffice365
  );

function ExecuteRibbonDemoOptions(var AStyle: TRibbonDemoStyle; var AScreenTipOptions: TScreenTipOptions): Boolean;
implementation

uses
  System.Math;

{$R *.dfm}

function ExecuteRibbonDemoOptions(var AStyle: TRibbonDemoStyle; var AScreenTipOptions: TScreenTipOptions): Boolean;
begin
  with TRibbonDemoOptionsForm.Create(nil) do
  try
    LoadOptions(AStyle, AScreenTipOptions);
    Result := ShowModal = mrOk;
    if Result then
      SaveOptions(AStyle,AScreenTipOptions);
  finally
    Free;
  end;
end;

{ TRibbonDemoOptionsForm }

constructor TRibbonDemoOptionsForm.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  PopulateRibbonStyles(cbRibbonStyle.Properties.Items);
end;

procedure TRibbonDemoOptionsForm.PopulateRibbonStyles(AItems: TStrings);
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

procedure TRibbonDemoOptionsForm.LoadOptions(AStyle: TRibbonDemoStyle; const AScreenTipOptions: TScreenTipOptions);
begin
  cbRibbonStyle.ItemIndex := Ord(AStyle);
  if AScreenTipOptions.ShowScreenTips then
    cbScreenTipStyle.ItemIndex := Ord(not AScreenTipOptions.ShowDescriptions)
  else
    cbScreenTipStyle.ItemIndex := 2;
end;

procedure TRibbonDemoOptionsForm.SaveOptions(out AStyle: TRibbonDemoStyle; out AScreenTipOptions: TScreenTipOptions);
begin
  AStyle := TRibbonDemoStyle(cbRibbonStyle.ItemIndex);
  AScreenTipOptions.ShowScreenTips := cbScreenTipStyle.ItemIndex <> 2;
  AScreenTipOptions.ShowDescriptions := cbScreenTipStyle.ItemIndex = 0;
end;

end.

