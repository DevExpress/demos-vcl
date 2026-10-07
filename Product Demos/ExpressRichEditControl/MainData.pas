unit MainData;

interface

uses
  System.Classes, Vcl.ImgList, Vcl.Controls, cxGraphics, dxSpellCheckerCore, cxClasses,
  dxSpellChecker;

type
  TdmMain = class(TDataModule)
    ilNavBarSmallImages: TcxImageList;
    ilBarSmall: TcxImageList;
    ilBarLarge: TcxImageList;
    SpellChecker: TdxSpellChecker;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmMain: TdmMain;

implementation

{$R *.dfm}

end.
