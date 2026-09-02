unit cxTreeListCheckGroupsFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, cxUnboundTreeListBaseFormUnit, cxGraphics, cxCustomData, cxStyles,
  cxTL, cxTLdxBarBuiltInMenu, dxSkinsCore, 
  cxLookAndFeelPainters, Vcl.StdCtrls, Vcl.ExtCtrls, cxContainer, cxEdit, cxGroupBox,
  cxControls, cxInplaceContainer, cxTextEdit, Vcl.ImgList, cxEditRepositoryItems, cxLookAndFeels, dxLayoutContainer,
  cxImageList, Vcl.ActnList, cxClasses, dxLayoutLookAndFeels, dxLayoutControl, dxScrollbarAnnotations, System.ImageList,
  System.Actions, cxFilter;

type
  TfrmCheckGroups = class(TcxUnboundTreeListDemoUnitForm)
    cxImageList1: TcxImageList;
    cxEditRepository1: TcxEditRepository;
    cxEditRepository1TextItem1: TcxEditRepositoryTextItem;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxTreeList1Column1: TcxTreeListColumn;
  public
    procedure ActivateDataSet; override;
    class function GetID: Integer; override;
  end;

implementation

uses
  cxTreeListFeaturesDemoStrConsts;

{$R *.dfm}

{ TfrmCheckGroups }

procedure TfrmCheckGroups.ActivateDataSet;
begin
//
end;

class function TfrmCheckGroups.GetID: Integer;
begin
  Result := 11;
end;

initialization
  TfrmCheckGroups.Register;
  
end.
