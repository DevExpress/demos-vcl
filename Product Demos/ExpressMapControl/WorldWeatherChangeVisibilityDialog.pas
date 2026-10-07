unit WorldWeatherChangeVisibilityDialog;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, cxContainer, cxEdit, cxCheckListBox, cxCheckBox, cxCustomListBox;

type
  TWorldWeatherChangeVisibilityDialogForm = class(TForm)
    cxCheckListBox1: TcxCheckListBox;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  WorldWeatherChangeVisibilityDialogForm: TWorldWeatherChangeVisibilityDialogForm;

implementation

{$R *.dfm}

end.
