unit HybridAppFrameTasksPrint;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, HybridAppBaseFrame, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxClasses, dxGDIPlusClasses, cxImage, cxTextEdit, cxMaskEdit, cxButtonEdit,
  dxLayoutControl, dxCustomTileControl, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons, HybridAppDM, cxGroupBox;

type
  TfrmTasksPrint = class(TfrmBase)
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

procedure TfrmTasksPrint.btnCloseClick(Sender: TObject);
begin
  ReturnToParentFrame;
end;

procedure TfrmTasksPrint.DoOnBackButtonClick;
begin
  btnClose.Click;
end;

procedure TfrmTasksPrint.Translate;
begin
  inherited Translate;
  btnClose.Caption := cxGetResourceString(@sCloseButton);
end;

function TfrmTasksPrint.GetParentFrameTileItem: TdxTileControlItem;
begin
  Result := MainForm.tbiTasks;
end;

initialization
  RegisterFrame(IDTaskPrint, TfrmTasksPrint);

end.
