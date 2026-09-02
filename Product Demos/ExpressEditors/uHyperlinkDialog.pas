unit uHyperlinkDialog;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxSpinEdit, cxButtonEdit, cxLabel, dxForms,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxLayoutContainer, cxClasses, dxLayoutControl, dxCoreGraphics;

type
  TfmHyperlinkDialog = class(TdxForm)
    btnOk: TcxButton;
    btnCancel: TcxButton;
    edtTextToDisplay: TcxTextEdit;
    edtHint: TcxTextEdit;
    edtAddress: TcxButtonEdit;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    liTextToDisplay: TdxLayoutItem;
    liHint: TdxLayoutItem;
    liAddress: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    liOk: TdxLayoutItem;
    liCancel: TdxLayoutItem;
  end;

implementation

{$R *.dfm}

end.
