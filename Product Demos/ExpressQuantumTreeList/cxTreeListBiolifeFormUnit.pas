unit cxTreeListBiolifeFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ExtCtrls, System.Actions, System.ImageList, Vcl.ImgList, System.UITypes,
  cxDBTreeListBaseFormUnit, cxGraphics, cxCustomData, cxStyles, cxTL,
  cxTLdxBarBuiltInMenu, dxSkinsCore,
  cxControls, cxInplaceContainer, cxTLData, cxDBTL, cxTreeListDataModule,
  cxMaskEdit, cxCheckBox, cxCalendar, cxMemo, cxImage, cxBlobEdit,
  cxLookAndFeelPainters, Vcl.StdCtrls,  cxContainer, cxEdit, cxGroupBox, cxLookAndFeels, dxLayoutContainer,
  cxClasses, dxLayoutControl, Vcl.ActnList, dxLayoutLookAndFeels, cxImageList, dxScrollbarAnnotations, cxFilter;

type
  TfrmBiolife = class(TcxDBTreeListDemoUnitForm)
    clnCategory: TcxDBTreeListColumn;
    clnCommonName: TcxDBTreeListColumn;
    clnLength: TcxDBTreeListColumn;
    clnMark: TcxDBTreeListColumn;
    clnSpeciesName: TcxDBTreeListColumn;
    clnSpeciesNo: TcxDBTreeListColumn;
    ImageList: TcxImageList;
    procedure tlDBGetNodeImageIndex(Sender: TcxCustomTreeList;
      ANode: TcxTreeListNode; AIndexType: TcxTreeListImageIndexType;
      var AIndex: TImageIndex);
  private
    procedure SetupImages;
  public
    function HasOptions: Boolean; override;
    procedure FrameActivated; override;
  end;

implementation

{$R *.dfm}

uses
  System.Math;

{ TfrmBiolife }

function TfrmBiolife.HasOptions: Boolean;
begin
  Result := False;
end;

procedure TfrmBiolife.FrameActivated;
begin
  inherited FrameActivated;
  SetupImages;
end;

procedure TfrmBiolife.SetupImages;
begin
  TreeList.OptionsView.DynamicFocusedStateImages := False;
  TreeList.Images := ImageList;
end;

procedure TfrmBiolife.tlDBGetNodeImageIndex(Sender: TcxCustomTreeList;
  ANode: TcxTreeListNode; AIndexType: TcxTreeListImageIndexType;
  var AIndex: TImageIndex);
begin
  AIndex := 0;
  if AIndexType = tlitImageIndex then
    AIndex := IfThen(ANode.Focused, 1, 0);
end;

end.
