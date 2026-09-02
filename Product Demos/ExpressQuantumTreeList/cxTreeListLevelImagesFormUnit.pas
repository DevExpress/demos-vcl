unit cxTreeListLevelImagesFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, cxTreeListPlanetsFormUnit, cxGraphics, cxCustomData, cxStyles, cxTL,
  cxTextEdit, cxTLdxBarBuiltInMenu, dxSkinsCore, 
  Vcl.ImgList, cxInplaceContainer, cxControls, cxLookAndFeelPainters, cxCheckBox,
  cxContainer, cxEdit, cxGroupBox, Vcl.StdCtrls, Vcl.ExtCtrls, cxLookAndFeels, dxLayoutContainer, cxClasses, dxLayoutControl,
  Vcl.ActnList, dxLayoutLookAndFeels, dxLayoutcxEditAdapters, cxImageList, dxScrollbarAnnotations, System.ImageList,
  System.Actions, cxFilter;

type
  TfrmLevelImages = class(TfrmPlanets)
    ilPlanets: TcxImageList;
    LargeImages: TcxImageList;
    dxLayoutLabeledItem1: TdxLayoutLabeledItem;
    acFirstLevel: TAction;
    acSecondLevel: TAction;
    acThirdLevel: TAction;
    chkFirstLevel: TdxLayoutCheckBoxItem;
    chkSecondLevel: TdxLayoutCheckBoxItem;
    chkThirdLevel: TdxLayoutCheckBoxItem;
    procedure tlUnboundGetLevelImages(Sender: TcxCustomTreeList;
      ALevel: Integer; var AImages, AStateImages: TCustomImageList);
    procedure acFirstLevelExecute(Sender: TObject);
  private
    procedure RemoveBands;
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

procedure TfrmLevelImages.acFirstLevelExecute(Sender: TObject);
begin
  TreeList.FullRefresh;
end;

function TfrmLevelImages.HasOptions: Boolean;
begin
  Result := True;
end;

procedure TfrmLevelImages.DoInspectedObjectChanged;
begin
//
end;

procedure TfrmLevelImages.FrameActivated;
begin
  inherited FrameActivated;
  TreeList.BeginUpdate;
  try
    TreeList.OptionsView.ColumnAutoWidth := False;
    RemoveBands;
    acFirstLevel.Checked := True;
    TreeList.Root.Expand(True);
  finally
    TreeList.EndUpdate;
  end;
end;

class function TfrmLevelImages.GetID: Integer;
begin
  Result := 7;
end;

procedure TfrmLevelImages.RemoveBands;
var
  I: Integer;
begin
  for I := TreeList.ColumnCount - 1 downto 0 do
    TreeList.Columns[I].Position.BandIndex := 0;
  for I := TreeList.Bands.Count - 1 downto 1 do
    TreeList.Bands.Delete(I);
end;

procedure TfrmLevelImages.tlUnboundGetLevelImages(Sender: TcxCustomTreeList;
  ALevel: Integer; var AImages, AStateImages: TCustomImageList);
begin
  if (ALevel = 0) and acFirstLevel.Checked or
    (ALevel = 1) and acSecondLevel.Checked or
    (ALevel = 2) and acThirdLevel.Checked then
    AImages := LargeImages
  else
    AImages := ilPlanets;
end;

initialization
  TfrmLevelImages.Register;

end.
