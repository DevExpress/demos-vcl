unit RenameSheetFormUnit;

{$I cxVer.inc}

interface

uses
{$IFDEF DELPHI16}
  System.UITypes,
{$ENDIF}
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxLayoutcxEditAdapters, dxLayoutControlAdapters, Vcl.Menus,
  dxLayoutContainer, Vcl.StdCtrls, cxButtons, cxTextEdit, dxLayoutControl, dxForms, cxClasses;

type
  TfrmRenameSheet = class(TdxForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    teSheetName: TcxTextEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    btnOk: TcxButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    btnCancel: TcxButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutAutoCreatedGroup;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
