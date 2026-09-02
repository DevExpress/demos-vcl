unit uGridLayoutViewGroupScrolling;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxGridFrame, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxContainer, cxEdit, cxCustomData,
  cxFilter, cxData, cxDataStorage, dxLayoutContainer, cxGridCustomView,
  cxGridCustomTableView, cxGridCustomLayoutView, cxGridLayoutView,
  cxClasses, cxGridLevel, cxLabel, cxGrid, Vcl.ExtCtrls, Data.DB, cxDBData, Vcl.Menus,
  Vcl.ImgList, dxmdaset, cxEditRepositoryItems, Vcl.StdCtrls, cxButtons,
  cxCheckBox, cxGroupBox, cxRadioGroup, cxGridDBLayoutView, cxGridCardView,
  cxGridTableView, Vcl.ComCtrls, cxNavigator, cxImage, cxGridViewLayoutContainer, maindata, dxCustomDemoFrameUnit,
  cxTextEdit, cxMaskEdit, cxSpinEdit, cxImageList, dxGDIPlusClasses, dxLayoutControlAdapters, dxLayoutControl,
  dxLayoutcxEditAdapters, cxHyperLinkEdit, Vcl.ActnList, dxDateRanges, dxScrollbarAnnotations,
  dxLayoutLookAndFeels, System.Actions, dxPanel, cxGeometry,
  dxFramedControl;

type
  TfrmGridLayoutViewGroupScrolling = class(TdxGridFrame)
    GridLevel1: TcxGridLevel;
    mmMain: TMainMenu;
    miFile: TMenuItem;
    miExit: TMenuItem;
    miView: TMenuItem;
    miCustomize: TMenuItem;
    miAbout: TMenuItem;
    StyleRepository: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    cxStyle12: TcxStyle;
    cxStyle13: TcxStyle;
    cxStyle14: TcxStyle;
    cxStyle15: TcxStyle;
    cxStyle16: TcxStyle;
    cxStyle17: TcxStyle;
    cxStyle18: TcxStyle;
    cxStyle19: TcxStyle;
    cxStyle20: TcxStyle;
    cxStyle21: TcxStyle;
    cxStyle22: TcxStyle;
    cxStyle23: TcxStyle;
    cxStyle24: TcxStyle;
    stValues: TcxStyle;
    stItems: TcxStyle;
    stHeader: TcxStyle;
    stRecordCaption: TcxStyle;
    stRecordSelected: TcxStyle;
    GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet;
    GridCardViewStyleSheetDevExpress: TcxGridCardViewStyleSheet;
    LayoutView: TcxGridDBLayoutView;
    LayoutViewRecId: TcxGridDBLayoutViewItem;
    LayoutViewID: TcxGridDBLayoutViewItem;
    LayoutViewTrademarkID: TcxGridDBLayoutViewItem;
    LayoutViewFullName: TcxGridDBLayoutViewItem;
    LayoutViewHP: TcxGridDBLayoutViewItem;
    LayoutViewTorque: TcxGridDBLayoutViewItem;
    LayoutViewCyl: TcxGridDBLayoutViewItem;
    LayoutViewTransmissSpeedCount: TcxGridDBLayoutViewItem;
    LayoutViewTransmissAutomatic: TcxGridDBLayoutViewItem;
    LayoutViewMPG_City: TcxGridDBLayoutViewItem;
    LayoutViewMPG_Highway: TcxGridDBLayoutViewItem;
    LayoutViewCategory: TcxGridDBLayoutViewItem;
    LayoutViewDescription: TcxGridDBLayoutViewItem;
    LayoutViewHyperlink: TcxGridDBLayoutViewItem;
    LayoutViewPicture: TcxGridDBLayoutViewItem;
    LayoutViewPrice: TcxGridDBLayoutViewItem;
    dxLayoutGroup1: TdxLayoutGroup;
    cxGridLayoutItem1: TcxGridLayoutItem;
    LayoutViewLayoutItem2: TcxGridLayoutItem;
    LayoutViewLayoutItem3: TcxGridLayoutItem;
    LayoutViewLayoutItem4: TcxGridLayoutItem;
    LayoutViewLayoutItem5: TcxGridLayoutItem;
    LayoutViewLayoutItem6: TcxGridLayoutItem;
    LayoutViewLayoutItem7: TcxGridLayoutItem;
    LayoutViewLayoutItem8: TcxGridLayoutItem;
    LayoutViewLayoutItem9: TcxGridLayoutItem;
    LayoutViewLayoutItem10: TcxGridLayoutItem;
    LayoutViewLayoutItem11: TcxGridLayoutItem;
    LayoutViewLayoutItem12: TcxGridLayoutItem;
    LayoutViewLayoutItem13: TcxGridLayoutItem;
    LayoutViewLayoutItem14: TcxGridLayoutItem;
    LayoutViewLayoutItem15: TcxGridLayoutItem;
    LayoutViewLayoutItem16: TcxGridLayoutItem;
    dxLayoutEmptySpaceItem1: TdxLayoutEmptySpaceItem;
    dxLayoutSeparatorItem1: TdxLayoutSeparatorItem;
    LayoutViewSpaceItem2: TdxLayoutEmptySpaceItem;
    LayoutViewSpaceItem3: TdxLayoutEmptySpaceItem;
    LayoutViewSpaceItem4: TdxLayoutEmptySpaceItem;
    LayoutViewSpaceItem5: TdxLayoutEmptySpaceItem;
    EditRepository: TcxEditRepository;
    EditRepositoryImage: TcxEditRepositoryImageItem;
    EditRepositoryMemo: TcxEditRepositoryMemoItem;
    EditRepositoryHyperLink: TcxEditRepositoryHyperLinkItem;
    EditRepositoryPrice: TcxEditRepositoryCurrencyItem;
    EditRepositoryAutomatic: TcxEditRepositoryCheckBoxItem;
    LayoutViewGroup14: TdxLayoutGroup;
    LayoutViewGroup15: TdxLayoutGroup;
    LayoutViewGroup16: TdxLayoutGroup;
    LayoutViewGroup17: TdxLayoutGroup;
    LayoutViewGroup18: TdxLayoutGroup;
    LayoutViewGroup19: TdxLayoutGroup;
    LayoutViewGroup20: TdxLayoutGroup;
    LayoutViewGroup21: TdxLayoutGroup;
    LayoutViewGroup22: TdxLayoutGroup;
    LayoutViewGroup23: TdxLayoutAutoCreatedGroup;
    LayoutViewGroup24: TdxLayoutGroup;
    LayoutViewGroup25: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    seRecordWidth: TcxSpinEdit;
    dxLayoutItem2: TdxLayoutItem;
    seRecordHeight: TcxSpinEdit;
    LayoutViewLayoutItem1: TcxGridLayoutItem;
    LayoutViewRating: TcxGridDBLayoutViewItem;
    LayoutViewSpaceItem1: TdxLayoutEmptySpaceItem;
    LayoutViewSpaceItem6: TdxLayoutEmptySpaceItem;
    procedure seRecordWidthPropertiesChange(Sender: TObject);
    procedure seRecordHeightPropertiesChange(Sender: TObject);
  protected
    function GetDescription: string; override;
    function NeedSetup: Boolean; override;
  public
    constructor Create(AOwner: TComponent); override;
  end;

implementation

uses
  dxFrames, FrameIDs, uStrsConst;

{$R *.dfm}

constructor TfrmGridLayoutViewGroupScrolling.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  seRecordHeightPropertiesChange(seRecordHeight);
  seRecordWidthPropertiesChange(seRecordWidth);
end;

function TfrmGridLayoutViewGroupScrolling.GetDescription: string;
begin
  Result := sdxFrameLayoutViewGroupScrollingDescription;
end;

function TfrmGridLayoutViewGroupScrolling.NeedSetup: Boolean;
begin
  Result := True;
end;

procedure TfrmGridLayoutViewGroupScrolling.seRecordHeightPropertiesChange(Sender: TObject);
begin
  LayoutView.OptionsView.RecordSize.Height := seRecordHeight.Value;
end;

procedure TfrmGridLayoutViewGroupScrolling.seRecordWidthPropertiesChange(Sender: TObject);
begin
  LayoutView.OptionsView.RecordSize.Width := seRecordWidth.Value;
end;

initialization
//  temporary disable
//  dxFrameManager.RegisterFrame(GridLayoutViewGroupScrollingFrameID, TfrmGridLayoutViewGroupScrolling,
//    GridLayoutViewGroupScrollingFrameName, GridLayoutViewImageIndex, -1, GridViewGroupIndex, -1);

end.
