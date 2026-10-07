unit cxTreeListDragAndDropFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, cxTreeListBiolifeFormUnit, cxGraphics, cxCustomData, cxStyles, cxTL,
  cxMaskEdit, cxTLdxBarBuiltInMenu, dxSkinsCore, 
  cxLookAndFeelPainters, Vcl.ImgList, Vcl.StdCtrls, Vcl.ExtCtrls, cxContainer, cxEdit,
  cxGroupBox, cxInplaceContainer, cxDBTL, cxControls, cxTLData, cxCheckBox, cxLookAndFeels, dxLayoutContainer,
  cxClasses, dxLayoutControl, Vcl.ActnList, dxLayoutLookAndFeels, cxImageList, dxScrollbarAnnotations, System.ImageList,
  System.Actions, cxFilter;

type
  TfrmDragAndDrop = class(TfrmBiolife)
    procedure tlDBDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
  private
  public
    function HasOptions: Boolean; override;
    procedure FrameActivated; override;
    class function GetID: Integer; override;
  end;

implementation

{$R *.dfm}

uses
  cxTreeListFeaturesDemoStrConsts;

function TfrmDragAndDrop.HasOptions: Boolean;
begin
  Result := False;
end;

procedure TfrmDragAndDrop.FrameActivated;
begin
  inherited FrameActivated;
  DBTreeList.DragMode := dmAutomatic;
  TreeList.OptionsBehavior.AutoDragCopy := True;
end;

class function TfrmDragAndDrop.GetID: Integer;
begin
  Result := 21;
end;


procedure TfrmDragAndDrop.tlDBDragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  inherited;
  //
end;

initialization
  TfrmDragAndDrop.Register;

end.
