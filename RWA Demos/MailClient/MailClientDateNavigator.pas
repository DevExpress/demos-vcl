unit MailClientDateNavigator;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxCore, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Vcl.Menus, cxStyles, cxSchedulerStorage,
  cxSchedulerCustomControls, cxSchedulerDateNavigator, cxDateNavigator,
  Vcl.StdCtrls, cxButtons, cxGroupBox;

type
  TFrame1 = class(TFrame)
    cxGroupBox5: TcxGroupBox;
    cxGroupBox1: TcxGroupBox;
    btnToday: TcxButton;
    dnScheduler: TcxDateNavigator;
    cxButton1: TcxButton;
  private
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses
  LocalizationStrs, dxBarStrs;

{ TFrame1 }

constructor TFrame1.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  btnToday.Caption := cxGetResourceString(@dxSBAR_DATETODAY);
end;

end.
