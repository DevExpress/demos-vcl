unit UnboundModeDemoAbout;

interface

uses
  Winapi.Windows, Winapi.Messages, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, cxButtons, Vcl.ComCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  Vcl.Menus, cxLabel;

type
  TUnboundModeDemoAboutForm = class(TForm)
    imgIcon: TImage;
    btnOK: TcxButton;
    lbDemoName: TcxLabel;
    lbCopyright: TcxLabel;
    bvBottom: TBevel;
    lbCompanyName: TcxLabel;
    reDemoInfo: TRichEdit;
  end;

implementation

{$R *.dfm}

end.
