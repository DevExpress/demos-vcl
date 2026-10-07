unit MailCloseDialog;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxLabel, Vcl.ExtCtrls,
  dxLayoutControlAdapters, dxLayoutcxEditAdapters, dxLayoutLookAndFeels,
  dxLayoutContainer, dxLayoutControl, dxCore, dxForms, cxClasses;

type
  TfmMailCloseDialog = class(TdxForm)
    dxLayoutControl1: TdxLayoutControl;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxLabel1: TcxLabel;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    procedure FormShow(Sender: TObject);
  private
  protected
    procedure CreateParams(var Params: TCreateParams); override;
    { Private declarations }
  public
    { Public declarations }
  end;

function ShowCloseDialog(AOwner: TForm): Integer;

implementation

{$R *.dfm}

function ShowCloseDialog(AOwner: TForm): Integer;
var
  AFmMailCloseDialog: TFmMailCloseDialog;
begin
  AFmMailCloseDialog := TFmMailCloseDialog.Create(AOwner);
  try
    Result := AFmMailCloseDialog.ShowModal;
  finally
    AFmMailCloseDialog.Release;
  end;
end;

procedure TfmMailCloseDialog.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.WndParent := TForm(Owner).Handle;
end;

procedure TfmMailCloseDialog.FormShow(Sender: TObject);
begin
  cxButton1.Colors.DefaultText := RootLookAndFeel.Painter.DefaultHyperlinkTextColor;
  cxButton1.Colors.HotText := RootLookAndFeel.Painter.DefaultHyperlinkTextColor;
  cxButton1.Colors.PressedText := RootLookAndFeel.Painter.DefaultHyperlinkTextColor;
  cxButton2.Colors.DefaultText := RootLookAndFeel.Painter.DefaultHyperlinkTextColor;
  cxButton2.Colors.HotText := RootLookAndFeel.Painter.DefaultHyperlinkTextColor;
  cxButton2.Colors.PressedText := RootLookAndFeel.Painter.DefaultHyperlinkTextColor;
  cxButton3.Colors.DefaultText := RootLookAndFeel.Painter.DefaultHyperlinkTextColor;
  cxButton3.Colors.HotText := RootLookAndFeel.Painter.DefaultHyperlinkTextColor;
  cxButton3.Colors.PressedText := RootLookAndFeel.Painter.DefaultHyperlinkTextColor;
end;

end.
