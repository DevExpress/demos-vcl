unit RichEditControlBase;

interface

{$I cxVer.Inc}

uses
  Winapi.Windows, Vcl.Forms, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxRibbonCustomizationForm, dxRibbonSkins, dxCore, dxCoreClasses, dxGDIPlusAPI,
  dxGDIPlusClasses, dxRichEdit.Types, dxRichEdit.Options, dxRichEdit.Control,
  dxBarBuiltInMenu, dxBar, dxBarApplicationMenu, dxRibbon, dxScreenTip, Vcl.ImgList,
  Vcl.Controls, System.Classes, Vcl.ActnList, dxRibbonGallery, dxSkinChooserGallery, dxRibbonForm,
  dxStatusBar, dxRibbonStatusBar, dxRichEdit.Platform.Win.Control, cxClasses,
  RibbonRichEditDemoOptions, MainData, dxSkinsCore, System.Actions;

type
  TfrmRichEditControlBase = class(TdxRibbonForm)
    Ribbon: TdxRibbon;
    bmBarManager: TdxBarManager;
    acActions: TActionList;
    acQATAboveRibbon: TAction;
    acQATBelowRibbon: TAction;
    stBarScreenTips: TdxScreenTipRepository;
    rsbStatusBar: TdxRibbonStatusBar;
    procedure FormCreate(Sender: TObject);
  public
    procedure SetRibbonDemoStyle(const AStyle: TRibbonDemoStyle); virtual;
  end;

var
  frmRichEditControlBase: TfrmRichEditControlBase;

implementation

{$R *.dfm}

procedure TfrmRichEditControlBase.FormCreate(Sender: TObject);
begin
  SetRibbonDemoStyle(rdsOffice365);
end;

procedure TfrmRichEditControlBase.SetRibbonDemoStyle(const AStyle: TRibbonDemoStyle);

  const
    NamesMap: array[TdxRibbonStyle] of string = (
      'RIBBONAPPGLYPH', 'RIBBONAPPGLYPH2010', 'RIBBONAPPGLYPH2010',
      'RIBBONAPPGLYPH2010', 'RIBBONAPPGLYPH2010', 'RIBBONAPPGLYPH2010', 'RIBBONAPPGLYPH2010'
    );

begin
  Ribbon.Style := RibbonDemoStyleToRibbonStyle[AStyle];
  Ribbon.EnableTabAero := not (AStyle in [rdsOffice2007, rdsScenic]);
  Ribbon.ApplicationButton.Glyph.LoadFromResource(HInstance, NamesMap[Ribbon.Style], RT_BITMAP);
  Ribbon.ApplicationButton.StretchGlyph := Ribbon.Style = rs2007;
  DisableAero := AStyle in [rdsOffice2013, rdsOffice2016, rdsOffice2016Tablet];
end;

end.
