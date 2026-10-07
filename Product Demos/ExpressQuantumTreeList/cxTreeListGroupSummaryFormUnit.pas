unit cxTreeListGroupSummaryFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, cxTreeListPlanetsFormUnit, cxGraphics, cxCustomData, cxStyles, cxTL,
  cxTextEdit, cxTLdxBarBuiltInMenu, dxSkinsCore,
  cxInplaceContainer, cxControls, cxLookAndFeelPainters, Vcl.StdCtrls, cxRadioGroup,
  cxContainer, cxEdit, cxGroupBox, Vcl.ExtCtrls, cxLookAndFeels, dxLayoutContainer, cxClasses, dxLayoutControl, Vcl.ActnList,
  dxLayoutLookAndFeels, dxLayoutControlAdapters, dxScrollbarAnnotations, System.Actions,
  cxFilter;

type
  TfrmGroupSummary = class(TfrmPlanets)
    Timer: TTimer;
    rbAlways: TdxLayoutRadioButtonItem;
    rbVisibleWhenExpanded: TdxLayoutRadioButtonItem;
    rbInvisible: TdxLayoutRadioButtonItem;
    procedure rbAlwaysClick(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
  private
    procedure GroupSummarySetup;
  public
    function HasOptions: Boolean; override;
    procedure DoInspectedObjectChanged; override;
    procedure FrameActivated; override;
    class function GetID: Integer; override;
  end;

implementation

uses
  cxTreeListFeaturesDemoStrConsts;

{$R *.dfm}

{ TfrmGroupSummary }

function TfrmGroupSummary.HasOptions: Boolean;
begin
  Result := True;
end;

procedure TfrmGroupSummary.DoInspectedObjectChanged;
begin
  case TreeList.OptionsView.GroupFooters of
    tlgfAlwaysVisible: rbAlways.Checked := True;
    tlgfVisibleWhenExpanded: rbVisibleWhenExpanded.Checked := True;
  else
    rbInvisible.Checked := True;
  end;
end;

procedure TfrmGroupSummary.FrameActivated;
begin
  inherited FrameActivated;
  GroupSummarySetup;
  TreeList.Root.Items[0].Expand(False);
end;

class function TfrmGroupSummary.GetID: Integer;
begin
  Result := 4;
end;

procedure TfrmGroupSummary.GroupSummarySetup;
begin
  rbAlways.Checked := True;
  clOrbitNumb.Summary.GroupFooterSummaryItems.Add.Kind := skCount;
  clDistance.Summary.GroupFooterSummaryItems.Add.Kind := skMax;
  clRadius.Summary.GroupFooterSummaryItems.Add.Kind := skAverage;
end;

procedure TfrmGroupSummary.rbAlwaysClick(Sender: TObject);
begin
  if rbAlways.Checked then
    TreeList.OptionsView.GroupFooters := tlgfAlwaysVisible
  else
    if rbVisibleWhenExpanded.Checked then
      TreeList.OptionsView.GroupFooters := tlgfVisibleWhenExpanded
    else
      TreeList.OptionsView.GroupFooters := tlgfInvisible;
end;

procedure TfrmGroupSummary.TimerTimer(Sender: TObject);
begin
  case TreeList.OptionsView.GroupFooters of
    tlgfAlwaysVisible: rbAlways.Checked := True;
    tlgfVisibleWhenExpanded: rbVisibleWhenExpanded.Checked := True;
  else
    rbInvisible.Checked := True;
  end;
end;

initialization
  TfrmGroupSummary.Register;

end.
