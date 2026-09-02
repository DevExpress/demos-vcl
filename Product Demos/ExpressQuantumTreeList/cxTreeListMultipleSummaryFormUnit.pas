unit cxTreeListMultipleSummaryFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, cxTreeListPlanetsFormUnit, cxGraphics, cxCustomData, cxStyles, cxTL,
  cxTextEdit, cxTLdxBarBuiltInMenu, dxSkinsCore, 
  cxLookAndFeelPainters, Vcl.StdCtrls, Vcl.ExtCtrls, cxContainer, cxEdit, cxGroupBox,
  cxInplaceContainer, cxControls, cxLookAndFeels, dxLayoutContainer, cxClasses, dxLayoutControl, Vcl.ActnList,
  dxLayoutLookAndFeels, dxScrollbarAnnotations, System.Actions, cxFilter;

type
  TfrmMultipleSummary = class(TfrmPlanets)
  private
    procedure GroupSummarySetup;
    procedure FooterSummarySetup;
  public
    procedure FrameActivated; override;
    class function GetID: Integer; override;
  end;

implementation

uses
  cxTreeListFeaturesDemoStrConsts;

{$R *.dfm}

{ TfrmMultipleSummary }

procedure TfrmMultipleSummary.FrameActivated;
begin
  inherited FrameActivated;
  GroupSummarySetup;
  FooterSummarySetup;
  TreeList.Root.Items[0].Expand(False);
end;

class function TfrmMultipleSummary.GetID: Integer;
begin
  Result := 5;
end;

procedure TfrmMultipleSummary.FooterSummarySetup;
begin
  clName.Summary.FooterSummaryItems.Add.Kind := skCount;
  clDistance.Summary.FooterSummaryItems.Add.Kind := skSum;
  clPeriod.Summary.FooterSummaryItems.Add.Kind := skMax;
  clPeriod.Summary.FooterSummaryItems.Add.Kind := skAverage;
  TreeList.PopupMenus.FooterMenu.UseBuiltInMenu := True;
  TreeList.OptionsView.Footer := True;
end;

procedure TfrmMultipleSummary.GroupSummarySetup;
begin
  clOrbitNumb.Summary.GroupFooterSummaryItems.Add.Kind := skCount;
  clDistance.Summary.GroupFooterSummaryItems.Add.Kind := skMin;
  clDistance.Summary.GroupFooterSummaryItems.Add.Kind := skMax;
  clDistance.Summary.GroupFooterSummaryItems.Add.Kind := skAverage;
  clPeriod.Summary.GroupFooterSummaryItems.Add.Kind := skMax;
  clPeriod.Summary.GroupFooterSummaryItems.Add.Kind := skMin;
  clRadius.Summary.GroupFooterSummaryItems.Add.Kind := skAverage;
  TreeList.PopupMenus.GroupFooterMenu.UseBuiltInMenu := True;
  TreeList.OptionsView.GroupFooters := tlgfAlwaysVisible;
end;

initialization
  TfrmMultipleSummary.Register;

end.
