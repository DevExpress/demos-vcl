unit dxNavBarControlDemoUnitForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Vcl.StdCtrls, Vcl.ExtCtrls, cxClasses, dxBar, cxGroupBox;

type
  TTdxNavBarControlDemoUnitForm = class(TForm)
    cxGroupBox1: TcxGroupBox;
    dxBarManager1: TdxBarManager;
    pnlDescription: TcxGroupBox;
    cxGroupBox6: TcxGroupBox;
    pnlHintInternal: TPanel;
    lblLeft2: TLabel;
    lblRight2: TLabel;
    lblTop2: TLabel;
    lblBottom2: TLabel;
    lblDescription: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TdxNavBarControlDemoUnitForm: TTdxNavBarControlDemoUnitForm;

implementation

{$R *.dfm}

end.
