unit dxSplashUnit;

{$I cxVer.inc}

interface

uses
{$IFDEF DELPHI16}
  System.UITypes,
{$ENDIF}
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, cxControls, cxContainer, cxEdit, cxLabel, Vcl.ExtCtrls, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  cxGroupBox, dxActivityIndicator, dxForms, cxImage, dxLayoutcxEditAdapters, cxClasses, dxLayoutLookAndFeels,
  dxLayoutContainer, dxLayoutControl, dxSkinsDefaultPainters, dxSplashForms, dxDemoUtils, dxSkinWXI;

implementation

{$R '..\Common\Demo_dxSplashResource.res'}


initialization
  if GetSkinResFileName <> '' then
    TdxSkinsUserSkinLoader.LoadUserSkin(GetSkinResFileName, 'WXI')
  else
    RootLookAndFeel.SkinName := 'WXI';
  TdxSplashFormManager.SplashForm.Show;

end.
