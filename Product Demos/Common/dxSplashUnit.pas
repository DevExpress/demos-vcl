unit dxSplashUnit;

{$I cxVer.inc}

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, cxControls, cxContainer, cxEdit, cxLabel, Vcl.ExtCtrls, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  cxGroupBox, dxActivityIndicator, dxForms, cxImage, dxLayoutcxEditAdapters, cxClasses, dxLayoutLookAndFeels,
  dxLayoutContainer, dxLayoutControl, dxSkinsDefaultPainters, dxSplashForms, dxDemoUtils;

implementation

{$R '..\Common\Demo_dxSplashResource.res'}

initialization
  TdxSplashFormManager.SplashForm.Show;

end.
