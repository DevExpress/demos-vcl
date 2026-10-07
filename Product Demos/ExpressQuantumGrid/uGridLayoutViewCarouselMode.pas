unit uGridLayoutViewCarouselMode;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxGridFrame, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxContainer, cxEdit, cxCustomData,
  cxFilter, cxData, cxDataStorage, dxLayoutContainer, cxGridCustomView,
  cxGridCustomTableView, cxGridCustomLayoutView, cxGridLayoutViewCarouselMode,
  cxClasses, cxGridLevel, cxLabel, cxGrid, Vcl.ExtCtrls, Data.DB, cxDBData, Vcl.Menus,
  Vcl.ImgList, dxmdaset, cxEditRepositoryItems, Vcl.StdCtrls, cxButtons,
  cxCheckBox, cxGroupBox, cxRadioGroup, cxGridDBLayoutView, cxGridCardView,
  cxGridTableView, Vcl.ComCtrls, cxNavigator, cxImage, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, dxLayoutLookAndFeels, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxTrackBar, dxLayoutControl, cxGridLayoutView, cxGridViewLayoutContainer, dxToggleSwitch, Vcl.ActnList,
  dxDateRanges, dxScrollbarAnnotations, System.Actions,
  dxPanel, cxGeometry, dxFramedControl;

type
  TfrmGridLayoutViewCarouselMode = class(TdxGridFrame)
    btnCustomize: TcxButton;
    tbPitchAngle: TcxTrackBar;
    tbEndRecordScale: TcxTrackBar;
    tbStartRecordScale: TcxTrackBar;
    tbRollAngle: TcxTrackBar;
    tbBackgroundAlphaLevel: TcxTrackBar;
    tbRecordCount: TcxTrackBar;
    cbInterpolationMode: TcxComboBox;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    liPitchAngle: TdxLayoutItem;
    lcMainItem6: TdxLayoutItem;
    lcMainItem7: TdxLayoutItem;
    lcMainItem8: TdxLayoutItem;
    lcMainGroup3: TdxLayoutGroup;
    lcMainItem9: TdxLayoutItem;
    lcMainItem10: TdxLayoutItem;
    lcMainItem11: TdxLayoutItem;
    lcMainGroup2: TdxLayoutGroup;
    lcMainGroup7: TdxLayoutGroup;
    lcMainGroup5: TdxLayoutGroup;
    LayoutView: TcxGridDBLayoutView;
    LayoutViewRecId: TcxGridDBLayoutViewItem;
    LayoutViewAddress: TcxGridDBLayoutViewItem;
    LayoutViewBeds: TcxGridDBLayoutViewItem;
    LayoutViewBaths: TcxGridDBLayoutViewItem;
    LayoutViewHouseSize: TcxGridDBLayoutViewItem;
    LayoutViewPrice: TcxGridDBLayoutViewItem;
    LayoutViewFeatures: TcxGridDBLayoutViewItem;
    LayoutViewYearBuilt: TcxGridDBLayoutViewItem;
    LayoutViewPhoto: TcxGridDBLayoutViewItem;
    dxLayoutGroup3: TdxLayoutGroup;
    cxGridLayoutItem1: TcxGridLayoutItem;
    LayoutViewLayoutItem3: TcxGridLayoutItem;
    LayoutViewLayoutItem4: TcxGridLayoutItem;
    LayoutViewLayoutItem5: TcxGridLayoutItem;
    LayoutViewLayoutItem6: TcxGridLayoutItem;
    LayoutViewLayoutItem8: TcxGridLayoutItem;
    LayoutViewLayoutItem9: TcxGridLayoutItem;
    LayoutViewLayoutItem10: TcxGridLayoutItem;
    LayoutViewLayoutItem13: TcxGridLayoutItem;
    LayoutViewGroup4: TdxLayoutGroup;
    LayoutViewGroup13: TdxLayoutGroup;
    LayoutViewGroup3: TdxLayoutGroup;
    GridLevel1: TcxGridLevel;
    dsHouses: TDataSource;
    EditRepository: TcxEditRepository;
    EditRepositoryImage: TcxEditRepositoryImageItem;
    EditRepositoryMemo: TcxEditRepositoryMemoItem;
    EditRepositoryPrice: TcxEditRepositoryCurrencyItem;
    EditRepositorySpinItem: TcxEditRepositorySpinItem;
    mdHouses: TdxMemData;
    mdHousesAddress: TMemoField;
    mdHousesBeds: TSmallintField;
    mdHousesBaths: TSmallintField;
    mdHousesHouseSize: TFloatField;
    mdHousesPrice: TFloatField;
    mdHousesFeatures: TMemoField;
    mdHousesYearBuilt: TMemoField;
    mdHousesPhoto: TBlobField;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    acAutoPitchAngle: TAction;
    acRecordExpandButton: TAction;
    acRecordCaptions: TAction;
    acMultiSelectRecords: TAction;
    cbExpandableRecords: TdxLayoutCheckBoxItem;
    cbRecordCaptions: TdxLayoutCheckBoxItem;
    cbMultiSelectRecords: TdxLayoutCheckBoxItem;
    cbAutoPitchAngle: TdxLayoutCheckBoxItem;
    procedure btnCustomizeClick(Sender: TObject);
    procedure acAutoPitchAngleExecute(Sender: TObject);
    procedure acRecordExpandButtonExecute(Sender: TObject);
    procedure acMultiSelectRecordsExecute(Sender: TObject);
    procedure acRecordCaptionsExecute(Sender: TObject);
  private
    FLockCount: Integer;
  protected
    function GetDescription: string; override;
    function NeedSetup: Boolean; override;
  public
    constructor Create(AOwner: TComponent); override;
    procedure ChangeVisibility(AShow: Boolean); override;
  end;

implementation

{$R *.dfm}

uses
  maindata, dxFrames, FrameIDs, uStrsConst, dxGDIPlusClasses;

procedure TfrmGridLayoutViewCarouselMode.ChangeVisibility(AShow: Boolean);
begin
  inherited;
  if AShow then
    LayoutView.DataController.RecNo := LayoutView.DataController.RecordCount div 2;
end;

constructor TfrmGridLayoutViewCarouselMode.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  Inc(FLockCount);
  try
    acAutoPitchAngle.Checked := LayoutView.OptionsView.CarouselMode.AutoPitchAngle;
    cbInterpolationMode.ItemIndex := Ord(LayoutView.OptionsView.CarouselMode.InterpolationMode);
    tbPitchAngle.Position := Trunc(LayoutView.OptionsView.CarouselMode.PitchAngle);
    tbRollAngle.Position := Trunc(LayoutView.OptionsView.CarouselMode.RollAngle);
    tbRecordCount.Position := LayoutView.OptionsView.CarouselMode.RecordCount;
    tbBackgroundAlphaLevel.Position := LayoutView.OptionsView.CarouselMode.BackgroundRecordAlphaLevel;
    tbStartRecordScale.Position := LayoutView.OptionsView.CarouselMode.BackgroundRecordStartScale;
    tbEndRecordScale.Position := LayoutView.OptionsView.CarouselMode.BackgroundRecordEndScale;
  finally
    Dec(FLockCount);
  end;
  mdHouses.LoadFromBinaryFile(ExtractFileDir(Application.ExeName) + '\Data_CDS\Homes.dat');
end;

procedure TfrmGridLayoutViewCarouselMode.acAutoPitchAngleExecute(Sender: TObject);
begin
  if FLockCount > 0 then
    Exit;
  Inc(FLockCount);
  try
    LayoutView.OptionsView.CarouselMode.AutoPitchAngle := acAutoPitchAngle.Checked;
    LayoutView.OptionsView.CarouselMode.InterpolationMode := TdxGPInterpolationMode(cbInterpolationMode.ItemIndex);
    LayoutView.OptionsView.CarouselMode.PitchAngle := tbPitchAngle.Position;
    LayoutView.OptionsView.CarouselMode.RollAngle := tbRollAngle.Position;
    LayoutView.OptionsView.CarouselMode.RecordCount := tbRecordCount.Position;
    LayoutView.OptionsView.CarouselMode.BackgroundRecordAlphaLevel := tbBackgroundAlphaLevel.Position;
    LayoutView.OptionsView.CarouselMode.BackgroundRecordStartScale := tbStartRecordScale.Position;
    LayoutView.OptionsView.CarouselMode.BackgroundRecordEndScale := tbEndRecordScale.Position;
  finally
    Dec(FLockCount);
  end;
  liPitchAngle.Enabled := not acAutoPitchAngle.Checked;
end;

procedure TfrmGridLayoutViewCarouselMode.btnCustomizeClick(Sender: TObject);
begin
  LayoutView.Controller.Customization := True;
end;

procedure TfrmGridLayoutViewCarouselMode.acRecordExpandButtonExecute(Sender: TObject);
begin
  LayoutView.OptionsCustomize.RecordExpanding := acRecordExpandButton.Checked;
end;

procedure TfrmGridLayoutViewCarouselMode.acMultiSelectRecordsExecute(Sender: TObject);
begin
  LayoutView.OptionsSelection.MultiSelect := acMultiSelectRecords.Checked;
end;

procedure TfrmGridLayoutViewCarouselMode.acRecordCaptionsExecute(Sender: TObject);
begin
  LayoutView.OptionsView.RecordCaption.Visible := acRecordCaptions.Checked;
end;

function TfrmGridLayoutViewCarouselMode.GetDescription: string;
begin
  Result := sdxFrameLayoutViewCarouselModeDescription;
end;

function TfrmGridLayoutViewCarouselMode.NeedSetup: Boolean;
begin
  Result := True;
end;

initialization
  dxFrameManager.RegisterFrame(GridLayoutViewCarouselModeFrameID, TfrmGridLayoutViewCarouselMode,
    GridLayoutViewCarouselModeFrameName, GridLayoutViewCarouselModeImageIndex, GridViewGroupIndex, -1, -1);

end.
