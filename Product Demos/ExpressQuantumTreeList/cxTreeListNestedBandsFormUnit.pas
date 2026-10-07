unit cxTreeListNestedBandsFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, cxTreeListIssueListFormUnit, cxGraphics, cxCustomData, cxStyles,
  cxTL, cxMaskEdit, cxImageComboBox, cxCalendar, cxProgressBar, cxCurrencyEdit,
  cxButtonEdit, cxTLdxBarBuiltInMenu, dxSkinsCore, 
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ImgList, cxInplaceContainer, cxDBTL, cxControls, cxTLData,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxGroupBox, cxLabel, Vcl.Grids,
  Vcl.DBGrids, cxLookAndFeels, cxImageList, dxLayoutContainer, cxClasses, dxLayoutControl, Vcl.ActnList, dxLayoutLookAndFeels,
  dxScrollbarAnnotations, System.ImageList, System.Actions, cxFilter;

type
  TfrmNestedBands = class(TfrmIssueList)
  public
    class function GetID: Integer; override;
    function HasOptions: Boolean; override;
  end;

implementation

{$R *.dfm}

uses
  cxTreeListFeaturesDemoStrConsts;

{ TfrmNestedBands }

class function TfrmNestedBands.GetID: Integer;
begin
  Result := 0;
end;

function TfrmNestedBands.HasOptions: Boolean;
begin
  Result := False;
end;

initialization
  TfrmNestedBands.Register;

end.
