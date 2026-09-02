unit cxTreeListSummaryCalculationBaseFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, cxTreeListMultipleSummaryFormUnit, cxGraphics, cxCustomData,
  cxStyles, cxTL, cxTextEdit, cxTLdxBarBuiltInMenu, dxSkinsCore, 
  cxLookAndFeelPainters, Vcl.StdCtrls, cxRadioGroup, Vcl.ExtCtrls, cxContainer, cxEdit,
  cxGroupBox, cxInplaceContainer, cxControls, cxLookAndFeels, dxLayoutContainer, cxClasses, dxLayoutControl, Vcl.ActnList,
  dxLayoutLookAndFeels, dxLayoutControlAdapters, dxScrollbarAnnotations, System.Actions,
  cxFilter;

type
  TfrmSummaryCalculationBase = class(TfrmMultipleSummary)
    Timer: TTimer;
    dxLayoutItem2: TdxLayoutItem;
    rbAll: TcxRadioButton;
    dxLayoutItem3: TdxLayoutItem;
    rbImmediate: TcxRadioButton;
    procedure rbImmediateClick(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
  private
    procedure FooterSummarySetup;
    procedure SetRadioButtons;
  public
    function HasOptions: Boolean; override;
    procedure FrameActivated; override;
    class function GetID: Integer; override;
  end;

implementation

{$R *.dfm}

uses
  cxTreeListFeaturesDemoStrConsts;

{ TfrmSummaryCalculationBase }

function TfrmSummaryCalculationBase.HasOptions: Boolean;
begin
  Result := True;
end;

procedure TfrmSummaryCalculationBase.FrameActivated;
begin
  inherited FrameActivated;
  TreeList.OptionsView.GroupFooters := tlgfVisibleWhenExpanded;
  FooterSummarySetup;
  rbAll.Checked := True;
end;

class function TfrmSummaryCalculationBase.GetID: Integer;
begin
  Result := 6;
end;

procedure TfrmSummaryCalculationBase.rbImmediateClick(Sender: TObject);
var
  I: Integer;
begin
  for I := 0 to TreeList.Summary.FooterSummaryCount - 1 do
    TreeList.Summary.FooterSummaryItems[I].AllNodes := rbAll.Checked;
  for I := 0 to TreeList.Summary.GroupFooterSummaryCount - 1 do
    TreeList.Summary.GroupFooterSummaryItems[I].AllNodes := rbAll.Checked;
end;

procedure TfrmSummaryCalculationBase.SetRadioButtons;
var
  I: Integer;
  Found: Boolean;
begin
  Found := False;
  for I := 0 to TreeList.Summary.GroupFooterSummaryCount - 1 do
  begin
    Found := TreeList.Summary.GroupFooterSummaryItems[I].AllNodes;
    if Found then
      Break;
  end;
  if Found then
    rbAll.Checked := True
  else
    rbImmediate.Checked := True;
end;

procedure TfrmSummaryCalculationBase.TimerTimer(Sender: TObject);
begin
  SetRadioButtons;
end;

procedure TfrmSummaryCalculationBase.FooterSummarySetup;
begin
  clDistance.Summary.FooterSummaryItems.Clear;
  clDistance.Summary.FooterSummaryItems.Add.Kind := skMin;
  clDistance.Summary.FooterSummaryItems.Add.Kind := skMax;
  clPeriod.Summary.FooterSummaryItems.Clear;
  clPeriod.Summary.FooterSummaryItems.Add.Kind := skAverage;
end;

initialization
  TfrmSummaryCalculationBase.Register;

end.
