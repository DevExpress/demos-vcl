unit uVertGridBitmap;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, uVertGridCustomMultiRecords, cxStyles, cxGraphics, cxEdit,
  cxImageComboBox, cxSpinEdit, cxBlobEdit, cxHyperLinkEdit, cxCurrencyEdit,
  cxImage, Vcl.ImgList, cxVGrid, cxDBVGrid, cxControls, cxInplaceContainer,
  Vcl.StdCtrls, Vcl.ExtCtrls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxClasses, cxLabel, dxLayoutContainer, dxLayoutControl, dxScrollbarAnnotations, dxLayoutLookAndFeels,
  cxFilter;

type
  TfrmVertGridBitmap = class(TfrmCustomVertGridMultiRecords)
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
  protected
    function GetDescription: string; override;
  public
    function HasOptions: Boolean; override;
  end;

implementation

uses
  maindata, dxFrames, FrameIDs, uStrsConst, System.TypInfo;

{$R *.dfm}

{ TfrmVertGridBitmap }

function TfrmVertGridBitmap.GetDescription: string;
begin
  Result := sdxFrameVerticalGridBitmap;
end;

function TfrmVertGridBitmap.HasOptions: Boolean;
begin
  Result := False;
end;

initialization
  //dxFrameManager.RegisterFrame(VerticalGridBackgroundFrameID, TfrmVertGridBitmap,
  //  VerticalGridBackgroundName, VerticalGridBackgroundImageIndex, -1, OutdatedGroupIndex);


end.
