unit UnboundModeDemoFastestSweepers;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, cxButtons, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, cxLabel;

type
  TUnboundModeDemoFastestSweepersForm = class(TForm)
    lbBeginner: TcxLabel;
    lbIntermediate: TcxLabel;
    lbExpert: TcxLabel;
    lbExpertTime: TcxLabel;
    lbIntermediateTime: TcxLabel;
    lbBeginnerTime: TcxLabel;
    ibExpertName: TcxLabel;
    lbIntermediateName: TcxLabel;
    lbBeginnerName: TcxLabel;
    bntOK: TcxButton;
    btnResetScores: TcxButton;
    procedure btnResetScoresClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  public
    FastestTimesResetted: Boolean;
    function ShowModal: Integer; override;
  end;

var
  UnboundModeDemoFastestSweepersForm: TUnboundModeDemoFastestSweepersForm;

implementation

uses UnboundModeDemoTypes;

{$R *.DFM}

function TUnboundModeDemoFastestSweepersForm.ShowModal: Integer;
begin
  SetFormPosition(Self, 35, 45);
  Result := inherited ShowModal;
end;

procedure TUnboundModeDemoFastestSweepersForm.btnResetScoresClick(Sender: TObject);
begin
  if FastestTimesResetted then Exit;
  FastestTimesResetted := True;
  lbBeginnerTime.Caption := IntToStr(999);
  lbIntermediateTime.Caption := IntToStr(999);
  lbExpertTime.Caption := IntToStr(999);
  lbBeginnerName.Caption := 'Anonymous';
  lbIntermediateName.Caption := 'Anonymous';
  ibExpertName.Caption := 'Anonymous';
end;

procedure TUnboundModeDemoFastestSweepersForm.FormCreate(Sender: TObject);
begin
  FastestTimesResetted := False;
end;

end.
