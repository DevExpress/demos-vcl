unit cxTreeListFixedBandsFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, cxTreeListIssueListFormUnit, cxGraphics, cxCustomData, cxStyles,
  cxTL, cxMaskEdit, cxImageComboBox, cxCalendar, cxProgressBar, cxCurrencyEdit,
  cxButtonEdit, cxTLdxBarBuiltInMenu, dxSkinsCore, 
  cxLookAndFeelPainters, Vcl.ImgList, Vcl.StdCtrls, Vcl.ExtCtrls, cxContainer, cxEdit,
  cxGroupBox, cxInplaceContainer, cxDBTL, cxControls, cxTLData, cxLookAndFeels, cxImageList, dxLayoutContainer,
  cxClasses, dxLayoutControl, Vcl.ActnList, dxLayoutLookAndFeels, dxScrollbarAnnotations, System.ImageList, System.Actions,
  cxFilter;

type
  TfrmFixedBands = class(TfrmIssueList)
  private
    procedure RemoveNestedBands;
    procedure SetFixedBands;
  protected
    function GetFirstLevelImageList: TCustomImageList; override;
  public
    procedure FrameActivated; override;
    class function GetID: Integer; override;
  end;

implementation

{$R *.dfm}

uses
  cxTreeListFeaturesDemoStrConsts;

{ TfrmFixedBands }

procedure TfrmFixedBands.FrameActivated;
begin
  inherited FrameActivated;
  RemoveNestedBands;
  SetFixedBands;
end;

function TfrmFixedBands.GetFirstLevelImageList: TCustomImageList;
begin
  Result := ilFirstLevel_24;
end;

class function TfrmFixedBands.GetID: Integer;
begin
  Result := 3;
end;

procedure TfrmFixedBands.RemoveNestedBands;
var
  I: Integer;
begin
  for I := 0 to TreeList.Bands.Count - 1 do
    TreeList.Bands[I].Position.BandIndex := -1;
  TreeList.Bands.Delete(0);
  TreeList.Bands.Delete(4);
end;

procedure TfrmFixedBands.SetFixedBands;
var
  I: Integer;
begin
  for I := 0 to 1 do
    TreeList.Bands[I].FixedKind := tlbfLeft;
  for I := 2 to 3 do
    TreeList.Bands[I].FixedKind := tlbfRight;
end;

initialization
  TfrmFixedBands.Register;

end.
