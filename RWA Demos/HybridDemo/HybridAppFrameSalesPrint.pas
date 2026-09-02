unit HybridAppFrameSalesPrint;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, HybridAppFrameTasksPrint, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  Vcl.Menus, dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxLayoutContainer, cxClasses, Vcl.StdCtrls, cxButtons,
  dxGDIPlusClasses, cxImage, dxLayoutControl, HybridAppBaseFrame, dxCustomTileControl, cxGroupBox;

type
  TfrmSalesPrint = class(TfrmBase)
    dxLayoutItem2: TdxLayoutItem;
    cxImage2: TcxImage;
    dxLayoutItem3: TdxLayoutItem;
    btnClose: TcxButton;
    procedure btnCloseClick(Sender: TObject);
  protected
    procedure DoOnBackButtonClick; override;
    procedure Translate; override;
    function GetParentFrameTileItem: TdxTileControlItem; override;
  end;

implementation

{$R *.dfm}

uses
  MainUnit, dxCore, LocalizationStrs;

procedure TfrmSalesPrint.btnCloseClick(Sender: TObject);
begin
  ReturnToParentFrame;
end;

procedure TfrmSalesPrint.DoOnBackButtonClick;
begin
  btnClose.Click;
end;

procedure TfrmSalesPrint.Translate;
begin
  inherited Translate;
  btnClose.Caption := cxGetResourceString(@sCloseButton);
end;

function TfrmSalesPrint.GetParentFrameTileItem: TdxTileControlItem;
begin
  Result := MainForm.tbiSales;
end;

initialization
  RegisterFrame(IDSalesPrint, TfrmSalesPrint);

end.
