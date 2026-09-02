unit dxAboutDemo;

{$I cxVer.inc}

interface

uses
  System.Types, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Winapi.ShellAPI, System.StrUtils,
  dxCore, dxGDIPlusClasses, cxGraphics, cxClasses, dxForms, cxControls, cxLookAndFeels, dxBevel,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxImage, cxLabel, cxGeometry, dxDemoUtils, dxFramedControl, dxPanel,
  dxFormattedLabel, dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl;

type
  TdxAboutDemoForm = class(TdxForm)
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    llfWhiteGroups: TdxLayoutCxLookAndFeel;
    llfOrangeGroups: TdxLayoutCxLookAndFeel;
    llfGrayGroups: TdxLayoutCxLookAndFeel;
    llfBeigeGroups: TdxLayoutCxLookAndFeel;
    llfZeroPaddings: TdxLayoutCxLookAndFeel;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    lgHeader: TdxLayoutGroup;
    lgCopyright: TdxLayoutGroup;
    dxLayoutImageItem1: TdxLayoutImageItem;
    lliProduct: TdxLayoutLabeledItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    liRemainDays: TdxLayoutLabeledItem;
    ilSupportImg: TdxLayoutImageItem;
    liBuyNowImg: TdxLayoutImageItem;
    liDiscountImg: TdxLayoutImageItem;
    lgLinks: TdxLayoutGroup;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutGroup9: TdxLayoutGroup;
    liSupportHeader: TdxLayoutLabeledItem;
    liBuyNowHeader: TdxLayoutLabeledItem;
    liDiscountHeader: TdxLayoutLabeledItem;
    liSupportText: TdxLayoutLabeledItem;
    liBuyNowText: TdxLayoutLabeledItem;
    liDiscountText: TdxLayoutLabeledItem;
    dxLayoutGroup1: TdxLayoutGroup;
    lgMain: TdxLayoutGroup;
    lgTrialInfo: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    liCopyright: TdxLayoutLabeledItem;
    dxLayoutImageItem2: TdxLayoutImageItem;
    dxLayoutImageItem3: TdxLayoutImageItem;

    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dxFormCreate(Sender: TObject);
    procedure dxLayoutControl1Click(Sender: TObject);
    procedure dxFormShow(Sender: TObject);
  private
  protected
    procedure CreateParams(var Params: TCreateParams); override;
  public
  end;

procedure dxShowAboutForm;

implementation

{$R *.dfm}

procedure dxShowAboutForm;
begin
  with TdxAboutDemoForm.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

{ TdxAboutDemoForm }

procedure TdxAboutDemoForm.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  if IsWinXPOrLater then
    Params.WindowClass.Style := Params.WindowClass.Style or CS_DROPSHADOW;
end;

procedure TdxAboutDemoForm.dxFormCreate(Sender: TObject);
var
  AMajor, AMinor, ABuild: Integer;
begin
  dxFactorizeBuildNumber(dxBuildNumber, AMajor, AMinor, ABuild);
  lliProduct.CaptionOptions.Text := Format('[SIZE=12][B]v%d.%d.%d[/B][/SIZE]', [AMajor mod 100, AMinor, ABuild]);
  liCopyright.CaptionOptions.Text := StringReplace(liCopyright.CaptionOptions.Text, '#YEAR#', IntToStr(dxCopyrightYear), []);
  AutoSize := True;
end;

procedure TdxAboutDemoForm.dxFormShow(Sender: TObject);
begin
  dxLayoutControl1.ApplyBestFit;
end;

procedure TdxAboutDemoForm.dxLayoutControl1Click(Sender: TObject);
var
  APoint: TPoint;
  AHitTest: TdxCustomLayoutHitTest;
  AURL: string;
begin
  APoint := dxLayoutControl1.ScreenToClient(Mouse.CursorPos);
  AHitTest := dxLayoutControl1.GetHitTest(APoint);
  if StartsText('liSupport', AHitTest.Item.Name) then
    AURL := 'http://go.devexpress.com/DevExpress_AboutWin_SC.aspx'
  else if StartsText('liBuyNow', AHitTest.Item.Name) then
    AURL := 'https://www.devexpress.com/Products/VCL/'
  else if StartsText('liDiscount', AHitTest.Item.Name) then
    AURL := 'http://go.devexpress.com/DevExpress_AboutWin_CompetitiveDiscounts.aspx';
  if AURL <> '' then
    dxShellExecute(0, AURL);
end;

procedure TdxAboutDemoForm.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close;
end;

end.
