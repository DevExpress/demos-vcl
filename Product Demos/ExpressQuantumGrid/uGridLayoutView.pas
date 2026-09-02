unit uGridLayoutView;

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
  cxGridTableView, Vcl.ComCtrls, cxNavigator, cxImage, cxGridViewLayoutContainer, maindata,
  dxLayoutControlAdapters, cxImageList, dxLayoutControl, dxLayoutcxEditAdapters, dxCustomDemoFrameUnit, dxToggleSwitch,
  cxDBLookupComboBox, cxExtEditRepositoryItems, cxTextEdit, Vcl.ActnList, dxDateRanges, dxScrollbarAnnotations,
  System.Actions, dxLayoutLookAndFeels,
  dxPanel, cxGeometry, dxFramedControl;

type
  TfrmGridLayoutView = class(TdxGridFrame)
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
    dxLayoutItem1: TdxLayoutItem;
    rgViewMode: TcxRadioGroup;
    dxLayoutEmptySpaceItem3: TdxLayoutEmptySpaceItem;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutGroup7: TdxLayoutGroup;
    btnCustomize: TcxButton;
    dxLayoutItem7: TdxLayoutItem;
    lgCheckBoxes: TdxLayoutGroup;
    dxLayoutGroup9: TdxLayoutGroup;
    LayoutViewLayoutItem1: TcxGridLayoutItem;
    LayoutViewItem1: TcxGridDBLayoutViewItem;
    LayoutViewSpaceItem1: TdxLayoutEmptySpaceItem;
    LayoutViewSpaceItem6: TdxLayoutEmptySpaceItem;
    LayoutViewGroup1: TdxLayoutGroup;
    LayoutViewGroup12: TdxLayoutGroup;
    LayoutViewGroup13: TdxLayoutGroup;
    LayoutViewGroup14: TdxLayoutGroup;
    LayoutViewGroup15: TdxLayoutGroup;
    LayoutViewGroup16: TdxLayoutGroup;
    LayoutViewGroup17: TdxLayoutGroup;
    LayoutViewGroup18: TdxLayoutGroup;
    LayoutViewGroup19: TdxLayoutGroup;
    LayoutViewGroup20: TdxLayoutGroup;
    LayoutViewGroup21: TdxLayoutGroup;
    LayoutViewGroup2: TdxLayoutAutoCreatedGroup;
    acCenterRecords: TAction;
    acShowOnlyEntireRecords: TAction;
    acMultiSelectRecords: TAction;
    acRecordCaptions: TAction;
    acExpandableRecords: TAction;
    cbCenterRecords: TdxLayoutCheckBoxItem;
    cbShowOnlyEntireRecords: TdxLayoutCheckBoxItem;
    cbMultiSelectRecords: TdxLayoutCheckBoxItem;
    cbRecordCaptions: TdxLayoutCheckBoxItem;
    cbExpandableRecords: TdxLayoutCheckBoxItem;
    procedure btnCustomizeClick(Sender: TObject);
    procedure rgViewModeClick(Sender: TObject);
    procedure acCenterRecordsExecute(Sender: TObject);
    procedure acShowOnlyEntireRecordsExecute(Sender: TObject);
    procedure acMultiSelectRecordsExecute(Sender: TObject);
    procedure acRecordCaptionsExecute(Sender: TObject);
    procedure acExpandableRecordsExecute(Sender: TObject);
  protected
    function GetDescription: string; override;
    function NeedSetup: Boolean; override;
  end;

implementation

uses
  dxFrames, FrameIDs, uStrsConst;

{$R *.dfm}

procedure TfrmGridLayoutView.btnCustomizeClick(Sender: TObject);
begin
  LayoutView.Controller.Customization := True;
end;

procedure TfrmGridLayoutView.acCenterRecordsExecute(Sender: TObject);
begin
  LayoutView.OptionsView.CenterRecords := acCenterRecords.Checked;
end;

procedure TfrmGridLayoutView.acExpandableRecordsExecute(Sender: TObject);
begin
  LayoutView.OptionsCustomize.RecordExpanding := acExpandableRecords.Checked;
end;

procedure TfrmGridLayoutView.acMultiSelectRecordsExecute(Sender: TObject);
begin
  LayoutView.OptionsSelection.MultiSelect := acMultiSelectRecords.Checked;
end;

procedure TfrmGridLayoutView.acShowOnlyEntireRecordsExecute(Sender: TObject);
begin
  LayoutView.OptionsView.ShowOnlyEntireRecords := acShowOnlyEntireRecords.Checked;
end;

procedure TfrmGridLayoutView.acRecordCaptionsExecute(Sender: TObject);
begin
  LayoutView.OptionsView.RecordCaption.Visible := acRecordCaptions.Checked;
end;

procedure TfrmGridLayoutView.rgViewModeClick(Sender: TObject);
begin
  LayoutView.OptionsView.ViewMode := TcxGridLayoutViewViewMode(rgViewMode.ItemIndex);
end;

function TfrmGridLayoutView.GetDescription: string;
begin
  Result := sdxFrameLayoutViewDescription;
end;

function TfrmGridLayoutView.NeedSetup: Boolean;
begin
  Result := True;
end;

initialization
  dxFrameManager.RegisterFrame(GridLayoutViewFrameID, TfrmGridLayoutView,
    GridLayoutViewFrameName, GridLayoutViewImageIndex, GridViewGroupIndex, -1, -1);

end.
