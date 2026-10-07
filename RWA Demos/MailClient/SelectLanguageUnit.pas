unit SelectLanguageUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxClasses,
  dxLayoutContainer, dxLayoutControl, Vcl.Menus, dxLayoutControlAdapters, Vcl.StdCtrls, cxButtons, dxLayoutLookAndFeels,
  dxForms;

type
  TfmSelectLanguage = class(TdxForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutLabeledItem1: TdxLayoutLabeledItem;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutLabeledItem2: TdxLayoutLabeledItem;
    dxLayoutLabeledItem3: TdxLayoutLabeledItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    dxLayoutSkinLookAndFeel2: TdxLayoutSkinLookAndFeel;
    dxLayoutEmptySpaceItem1: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem3: TdxLayoutEmptySpaceItem;
    dxLayoutSkinLookAndFeel3: TdxLayoutSkinLookAndFeel;
    dxLayoutGroup1: TdxLayoutGroup;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function SelectLanguage: Boolean;

implementation

{$R *.dfm}

uses
  MailClientDemoData, dxDemoUtils;

function SelectLanguage: Boolean;
var
  fmSelectLanguage: TfmSelectLanguage;
  ASelectedLocale: Integer;
begin
  ASelectedLocale := -1;
  try
    Application.CreateForm(TfmSelectLanguage, fmSelectLanguage);
    fmSelectLanguage.ShowModal;
    case fmSelectLanguage.ModalResult of
      mrOk:       ASelectedLocale := 0;    // English
      mrYes:      ASelectedLocale := 1025; // Arabic
      mrYesToAll: ASelectedLocale := 1037; // Hebrew
    end;
  finally
    FreeAndNil(fmSelectLanguage);
  end;
  Result := ASelectedLocale >= 0;
  if Result then
    DM.SetLocale(ASelectedLocale);
end;

end.
