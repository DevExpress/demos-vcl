unit dxProgressDialog;

{$I cxVer.inc}

interface

uses
{$IFDEF DELPHI16}
  System.UITypes,
{$ENDIF}
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, cxGraphics,
  cxControls, cxClasses, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxProgressBar, cxLabel, Vcl.Menus,
  cxButtons;

type
  { TfrmProgress }

  TfrmProgress = class(TForm, IcxProgress)
    lbTitle: TcxLabel;
    pbProgress: TcxProgressBar;
  private
    // IcxProgress
    procedure OnProgress(Sender: TObject; Percent: Integer);
  end;

implementation

{$R *.dfm}

{ TfrmProgress }

procedure TfrmProgress.OnProgress(Sender: TObject; Percent: Integer);
begin
  pbProgress.Position := Percent;
  Application.ProcessMessages;
end;

end.
