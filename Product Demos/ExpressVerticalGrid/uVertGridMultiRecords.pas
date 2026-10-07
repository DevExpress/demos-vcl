unit uVertGridMultiRecords;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, uVertGridCustomMultiRecords, cxStyles, cxGraphics, cxEdit,
  cxImageComboBox, cxSpinEdit, cxBlobEdit, cxHyperLinkEdit, cxCurrencyEdit,
  cxImage, Vcl.ImgList, cxVGrid, cxDBVGrid, cxControls, cxInplaceContainer,
  Vcl.StdCtrls, Vcl.ExtCtrls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxLabel, dxLayoutContainer, cxClasses, dxLayoutControl, dxScrollbarAnnotations, dxLayoutLookAndFeels,
  cxFilter;

type
  TfrmVertGridMultiRecords = class(TfrmCustomVertGridMultiRecords)
  public
    function HasOptions: Boolean; override;
  end;

implementation

uses
  maindata, dxFrames, FrameIDs, uStrsConst;

{$R *.dfm}

{ TfrmVertGridMultiRecords }

{ TfrmVertGridMultiRecords }

function TfrmVertGridMultiRecords.HasOptions: Boolean;
begin
  Result := False;
end;

initialization
  dxFrameManager.RegisterFrame(VerticalGridMultiRecordFrameID, TfrmVertGridMultiRecords,
    VerticalGridMultiRecordName, VerticalGridMultiRecordImageIndex, -1, VerticalGridSideBarGroupIndex);

end.
