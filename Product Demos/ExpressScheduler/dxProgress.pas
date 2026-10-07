unit dxProgress;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxControls, cxContainer,
  cxEdit, cxLabel, Vcl.ComCtrls, Vcl.StdCtrls, cxProgressBar, Vcl.ExtCtrls, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  dxForms;

type
  TfrmProgress = class(TdxForm)
    pbProgress: TcxProgressBar;
    Label1: TcxLabel;
  public
    procedure UpdateProgress(APercent: Integer);
  end;

var
  frmProgress: TfrmProgress;

implementation

{$R *.dfm}

procedure TfrmProgress.UpdateProgress(APercent: Integer);
begin
  if pbProgress.Position = APercent then Exit; 
  pbProgress.Position := APercent;
  if APercent = 100 then
    Label1.Caption := 'Updating database...'
  else
    Label1.Caption := 'Inserting events to database...';
  Refresh;
end;

end.
