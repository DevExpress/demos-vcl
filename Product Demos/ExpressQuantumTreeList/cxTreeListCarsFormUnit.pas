unit cxTreeListCarsFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, cxTreeListDataModule, cxDBTreeListBaseFormUnit, cxGraphics,
  cxCustomData, cxStyles, cxTL, cxTLdxBarBuiltInMenu, dxSkinsCore, 
  cxControls, cxInplaceContainer, cxTLData, cxDBTL, cxMaskEdit, cxCurrencyEdit,
  cxDropDownEdit, cxRadioGroup, cxSpinEdit, cxBlobEdit, cxHyperLinkEdit,
  cxCheckGroup, cxLookAndFeelPainters, Vcl.StdCtrls, Vcl.ExtCtrls, cxContainer, cxEdit,
  cxGroupBox, cxCheckBox, cxLookAndFeels, cxClasses, dxLayoutContainer, dxLayoutControl, Vcl.ActnList, dxLayoutLookAndFeels,
  dxScrollbarAnnotations, System.Actions, cxFilter;

type
  TfrmCars = class(TcxDBTreeListDemoUnitForm)
    clnModel: TcxDBTreeListColumn;
    clnPrice: TcxDBTreeListColumn;
    clnHP: TcxDBTreeListColumn;
    clnCylinders: TcxDBTreeListColumn;
    clnSpeed: TcxDBTreeListColumn;
    clnAutomatic: TcxDBTreeListColumn;
    clnCity: TcxDBTreeListColumn;
    clnHighway: TcxDBTreeListColumn;
    clnDescription: TcxDBTreeListColumn;
    clnPicture: TcxDBTreeListColumn;
    cxStyleRepository1: TcxStyleRepository;
    stNavy: TcxStyle;
    stMaroon: TcxStyle;
    procedure tlDBStylesGetContentStyle(Sender: TcxCustomTreeList;
      AColumn: TcxTreeListColumn; ANode: TcxTreeListNode; var AStyle: TcxStyle);
  public
    function HasOptions: Boolean; override;
    procedure FrameActivated; override;
  end;

implementation

{$R *.dfm}

{ TfrmCars }

function TfrmCars.HasOptions: Boolean;
begin
  Result := False;
end;

procedure TfrmCars.FrameActivated;
begin
  inherited FrameActivated;
end;

procedure TfrmCars.tlDBStylesGetContentStyle(Sender: TcxCustomTreeList;
  AColumn: TcxTreeListColumn; ANode: TcxTreeListNode; var AStyle: TcxStyle);
begin
  if (ANode <> nil) and (ANode.Level < 2) then
  begin
    if ANode.Level = 0 then
       AStyle := stMaroon
    else
      if ANode.Level = 1 then
        AStyle := stNavy;
  end;
end;

end.
