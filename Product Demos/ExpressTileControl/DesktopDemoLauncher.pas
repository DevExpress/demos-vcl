unit DesktopDemoLauncher;

{$I cxVer.inc}

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxClasses, dxLayoutContainer, dxLayoutControl,
  dxLayoutControlAdapters, cxButtons, dxLayoutLookAndFeels, dxForms, dxSkinsForm, dxSkinsCore, DesktopDemoData;

type
  TfmDemoLauncher = class(TdxForm)
    btnDirectX: TcxButton;
    btnGDI: TcxButton;
    dxLayoutEmptySpaceItem1: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutLabeledItem1: TdxLayoutLabeledItem;
    dxLayoutLabeledItem2: TdxLayoutLabeledItem;
    iiWarning: TdxLayoutImageItem;
    lcMain: TdxLayoutControl;
    lcMainGroup_Root: TdxLayoutGroup;
    lgWarning: TdxLayoutGroup;
    liDirectX: TdxLayoutItem;
    liGDI: TdxLayoutItem;
    liDescription: TdxLayoutLabeledItem;
    dxLayoutItem1: TdxLayoutItem;
    btnGDIPlus: TcxButton;

    procedure btnDirectXClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  public
    class function Execute: Boolean;
  end;

implementation

uses
  dxDirectX.D2D.Types;

{$R *.dfm}

{ TfmDemoLauncher }

class function TfmDemoLauncher.Execute: Boolean;
begin
  with TfmDemoLauncher.Create(Application) do
  try
    Result := ShowModal = mrOk;
  finally
    Free;
  end;
end;

procedure TfmDemoLauncher.btnDirectXClick(Sender: TObject);
begin
  RootLookAndFeel.RenderMode := TdxRenderMode(TComponent(Sender).Tag);
  ModalResult := mrOk;
end;

procedure TfmDemoLauncher.FormCreate(Sender: TObject);
begin
  btnGDI.Tag := Ord(rmGDI);
  btnGDIPlus.Tag := Ord(rmGDIPlus);
  btnDirectX.Tag := Ord(rmDirectX);

  if not IsDirectD2Available then
  begin
    liDirectX.Enabled := False;
    btnDirectX.Caption := btnDirectX.Caption + ' (Unavailable)';
    liDescription.Visible := False;
    lgWarning.Visible := True;
  end;
end;

end.
