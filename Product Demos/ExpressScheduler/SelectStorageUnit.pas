unit SelectStorageUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls, dxSkinsCore, Vcl.Menus,
  cxLookAndFeelPainters, cxButtons, cxRadioGroup, cxControls, cxContainer,
  cxEdit, cxGroupBox, cxGraphics, cxLookAndFeels, dxForms;

type
  TSelectStorage = class(TdxForm)
    cxGroupBox1: TcxGroupBox;
    rbDBStorage: TcxRadioButton;
    rbUnboundStorage: TcxRadioButton;
    btnOK: TcxButton;
    cxGroupBox2: TcxGroupBox;
  end;

implementation

{$R *.dfm}

end.
