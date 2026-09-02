unit uConditionalFormatting;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, uVertGridCustomMultiRecords, cxStyles, cxGraphics, cxEdit,
  cxImageComboBox, cxSpinEdit, cxBlobEdit, cxHyperLinkEdit, cxCurrencyEdit,
  cxImage, Vcl.ImgList, cxVGrid, cxDBVGrid, cxControls, cxInplaceContainer,
  Vcl.StdCtrls, Vcl.ExtCtrls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxLabel, dxLayoutContainer, cxClasses, dxLayoutControl,
  dxLayoutControlAdapters, Vcl.Menus, cxButtons, cxCheckBox, cxDataControllerConditionalFormattingRulesManagerDialog,
  dxScrollbarAnnotations, dxLayoutLookAndFeels, cxFilter;

type
  TfrmConditionalFormatting = class(TfrmCustomVertGridMultiRecords)
    btnManageRules: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    procedure btnManageRulesClick(Sender: TObject);
  protected
    function GetDescription: string; override;
  end;

implementation

uses
  cxDataControllerConditionalFormatting,
  maindata, dxFrames, FrameIDs, uStrsConst;

{$R *.dfm}

{ TfrmConditionalFormatting }

procedure TfrmConditionalFormatting.btnManageRulesClick(Sender: TObject);
begin
  inherited;
  cxDBVerticalGrid.ConditionalFormatting.ShowRulesManagerDialog;
end;

function TfrmConditionalFormatting.GetDescription: string;
begin
  Result := sdxFrameVerticalGridConditionalFormatting;
end;

initialization
  dxFrameManager.RegisterFrame(VerticalGridConditionalFormattingFrameID, TfrmConditionalFormatting,
    VerticalGridConditionalFormattingName, VerticalGridConditionalFormattingImageIndex, NewAndHighlightedGroupIndex, -1);

end.
