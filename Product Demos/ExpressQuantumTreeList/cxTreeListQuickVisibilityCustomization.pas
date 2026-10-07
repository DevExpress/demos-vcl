unit cxTreeListQuickVisibilityCustomization;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, cxTreeListPlanetsFormUnit, cxGraphics, cxCustomData, cxStyles, cxTL,
  cxTextEdit, cxTLdxBarBuiltInMenu, dxSkinsCore, 
  cxInplaceContainer, cxControls, cxLookAndFeelPainters, Vcl.StdCtrls, Vcl.ExtCtrls,
  cxContainer, cxEdit, cxGroupBox, cxLookAndFeels, dxLayoutContainer, cxClasses, dxLayoutControl, Vcl.ActnList,
  dxLayoutLookAndFeels, dxScrollbarAnnotations, System.Actions, cxFilter, dxCore, dxSkinsForm;

type
  TfrmQuickVisibilityCustomization = class(TfrmPlanets)
    Timer: TTimer;
    dxSkinController1: TdxSkinController;
    procedure TimerTimer(Sender: TObject);
    procedure dxSkinController1SkinForm(Sender: TObject; AForm: TCustomForm; var ASkinName: string; var UseSkin: Boolean);
  private
    procedure CustomizationSetup;
  public
    procedure FrameActivated; override;
    class function GetID: Integer; override;
  end;

implementation

uses
  cxTreeListFeaturesDemoUtils, cxTreeListFeaturesDemoStrConsts;

{$R *.dfm}

{ TfrmQuickVisibilityCustomization }

procedure TfrmQuickVisibilityCustomization.dxSkinController1SkinForm(Sender: TObject; AForm: TCustomForm; var ASkinName: string;
  var UseSkin: Boolean);
begin
  if AForm = Self then
  begin
    TreeList.OptionsView.IndicatorWidth := RootLookAndFeel.Painter.ScaledSummaryValueSortingMarkSize(ScaleFactor).Y;
  end;
end;

procedure TfrmQuickVisibilityCustomization.FrameActivated;
begin
  inherited FrameActivated;
  ShowBands := True;
  CustomizationSetup;
end;

class function TfrmQuickVisibilityCustomization.GetID: Integer;
begin
  Result := 2;
end;

procedure TfrmQuickVisibilityCustomization.TimerTimer(Sender: TObject);
begin
  Timer.Enabled := False;
  MouseMoveAndRightClick(TreeList, 4, 4);
end;

procedure TfrmQuickVisibilityCustomization.CustomizationSetup;
begin
  TreeList.OptionsCustomizing.BandsQuickCustomization := True;
  TreeList.OptionsCustomizing.ColumnsQuickCustomization := True;
end;

initialization
  TfrmQuickVisibilityCustomization.Register;

end.
