unit uGridCalloutPopup;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxGridFrame, cxGraphics, cxControls, cxLookAndFeels, dxCore,
  cxLookAndFeelPainters, cxStyles, cxContainer, cxEdit, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, cxGridCustomView, cxGridCustomTableView,
  cxGridWinExplorerView, cxGridDBWinExplorerView, cxClasses, cxGridLevel,
  cxLabel, cxGrid, Vcl.ExtCtrls, MainData, cxCheckBox, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, dxGallery, dxGalleryControl, cxGroupBox, dxCalloutPopup,
  dxLayoutLookAndFeels, Vcl.Menus, dxMapControlTypes, dxMapItem, dxGdiPlusClasses,
  dxMapControlBingMapImageryDataProvider, dxBingMapLocationDataService,
  dxBingMapRouteDataService, dxLayoutControlAdapters, dxLayoutcxEditAdapters,
  dxLayoutContainer, cxMemo, cxRichEdit, dxMapControlInformationProvider,
  dxMapControlBingMapInformationProviders, dxCustomMapItemLayer, dxMapItemLayer,
  dxMapLayer, dxMapImageTileLayer, dxMapControl, dxImageSlider, cxImage,
  cxDBEdit, Vcl.StdCtrls, cxButtons, dxLayoutControl, cxCurrencyEdit, Vcl.ActnList,
  cxDBLabel, dxDateRanges, dxScrollbarAnnotations, System.Actions,
  dxPanel, cxGeometry, dxFramedControl;

type
  TfrmGridCalloutPopup = class(TdxGridFrame)
    GridLevel1: TcxGridLevel;
    gvHomes: TcxGridDBWinExplorerView;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    dxCalloutPopup1: TdxCalloutPopup;
    icSlider: TcxImageCollection;
    dxLayoutControl1: TdxLayoutControl;
    cxButton1: TcxButton;
    cxDBImage1: TcxDBImage;
    imgsHome: TdxImageSlider;
    dxMapControl1: TdxMapControl;
    dxMapControl1ImageTileLayer1: TdxMapImageTileLayer;
    dxMapControl1ItemLayer1: TdxMapItemLayer;
    dxMapControl1BingMapGeoCodingDataProvider1: TdxMapControlBingMapGeoCodingDataProvider;
    reFeatures: TcxRichEdit;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    gvHomesRecId: TcxGridDBWinExplorerViewItem;
    gvHomesID: TcxGridDBWinExplorerViewItem;
    gvHomesAddress: TcxGridDBWinExplorerViewItem;
    gvHomesBeds: TcxGridDBWinExplorerViewItem;
    gvHomesBaths: TcxGridDBWinExplorerViewItem;
    gvHomesHouseSize: TcxGridDBWinExplorerViewItem;
    gvHomesLotSize: TcxGridDBWinExplorerViewItem;
    gvHomesPrice: TcxGridDBWinExplorerViewItem;
    gvHomesFeatures: TcxGridDBWinExplorerViewItem;
    gvHomesYearBuilt: TcxGridDBWinExplorerViewItem;
    gvHomesType: TcxGridDBWinExplorerViewItem;
    gvHomesStatus: TcxGridDBWinExplorerViewItem;
    gvHomesPhoto: TcxGridDBWinExplorerViewItem;
    gvHomesAgentId: TcxGridDBWinExplorerViewItem;
    ActionList1: TActionList;
    Action1: TAction;
    cxDBLabel1: TcxDBLabel;
    cxDBLabel2: TcxDBLabel;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutGroup7: TdxLayoutGroup;
    cxLabel1: TcxLabel;
    dxCalloutPopup2: TdxCalloutPopup;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutItem11: TdxLayoutItem;
    cxButton4: TcxButton;
    Timer1: TTimer;
    procedure gvHomesMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dxMapControl1BingMapGeoCodingDataProvider1Response(
      Sender: TObject; AResponse: TdxBingMapLocationDataServiceResponse;
      var ADestroyResponse: Boolean);
    procedure Action1Execute(Sender: TObject);
    procedure dxCalloutPopup1Show(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure dxCalloutPopup1Hide(Sender: TObject);
    procedure ActionList1Update(Action: TBasicAction; var Handled: Boolean);
  private
    procedure InitializeFeaturesOfHouse;
    procedure InitializeHomeInfo(AId: Integer);
    procedure InitializePropertyContact;
    procedure InitializePropertyDetails;
    procedure InitializePropertyMap;
    procedure InitializePropertyPhotos;
    procedure ReplaceInFeatures(const ATokenStr, S: string; AReplaceColor: PColor = nil);
  protected
    function GetDescription: string; override;
    function GetSplashCaption: string; override;
    function NeedWaitForm: Boolean; override;
  public
    constructor Create(AOwner: TComponent); override;
  end;

var
  frmGridCalloutPopup: TfrmGridCalloutPopup;

implementation

{$R *.dfm}
{$R *.res}

uses
  dxFrames, FrameIDs, uStrsConst;

const
  SGreeting = 'Hi,' + dxCRLF + 'My name is %s %s.' + dxCRLF + 'If you are interested in this house, please contact me by phone or by email.';

function DXBingKey: string;
var
  Buffer: array [0..255] of Char;
begin
  SetString(Result, Buffer, LoadString(FindResourceHInstance(HInstance), 102, Buffer, Length(Buffer)));
end;

{ TfrmGridCalloutPopup }

procedure TfrmGridCalloutPopup.ActionList1Update(Action: TBasicAction; var Handled: Boolean);
begin
  inherited;
  Action1.Enabled := Visible;
end;

constructor TfrmGridCalloutPopup.Create(AOwner: TComponent);
begin
  inherited;
  dxMapControl1BingMapGeoCodingDataProvider1.BingKey := DXBingKey;
  (dxMapControl1ImageTileLayer1.Provider as TdxMapControlBingMapImageryDataProvider).BingKey := DXBingKey;
end;

procedure TfrmGridCalloutPopup.Action1Execute(Sender: TObject);
begin
  if dxCalloutPopup2.IsVisible then
    dxCalloutPopup2.Close
  else
    dxCalloutPopup1.Close;
end;

procedure TfrmGridCalloutPopup.dxCalloutPopup1Hide(Sender: TObject);
begin
  Timer1.Enabled := False;
end;

procedure TfrmGridCalloutPopup.dxCalloutPopup1Show(Sender: TObject);
begin
  Timer1.Enabled := True;
end;

procedure TfrmGridCalloutPopup.dxMapControl1BingMapGeoCodingDataProvider1Response(
  Sender: TObject; AResponse: TdxBingMapLocationDataServiceResponse;
  var ADestroyResponse: Boolean);
var
  AMapItem: TdxMapPushpin;
begin
  if AResponse.IsSuccess and (AResponse.Locations.Count > 0) then
  begin
    AMapItem := dxMapControl1ItemLayer1.AddItem(TdxMapPushpin) as TdxMapPushpin;
    AMapItem.Location.GeoPoint := AResponse.Locations[0].Point;
    AMapItem.Hint := AResponse.Locations[0].GetDisplayText;
    dxMapControl1.CenterPoint := AMapItem.Location;
  end;
end;

function TfrmGridCalloutPopup.GetDescription: string;
begin
  Result := sdxFrameCalloutPopupDescription;
end;

function TfrmGridCalloutPopup.GetSplashCaption: string;
begin
  Result := GridCalloutPopupFrameName;
end;

function TfrmGridCalloutPopup.NeedWaitForm: Boolean;
begin
  Result := True;
end;

procedure TfrmGridCalloutPopup.gvHomesMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  AViewInfo: TcxCustomGridCellViewInfo;
  ARecordViewInfo: TcxGridWinExplorerViewRecordViewInfo;
  R: TRect;
begin
   if [ssLeft, ssTouch] * Shift <> [] then
   begin
     AViewInfo := gvHomes.GetHitTest(X, Y).ViewInfo;
     ARecordViewInfo := nil;
     if AViewInfo is TcxGridWinExplorerViewRecordViewInfo then
       ARecordViewInfo := TcxGridWinExplorerViewRecordViewInfo(AViewInfo)
     else
       if AViewInfo is TcxGridWinExplorerViewCustomCellViewInfo then
         ARecordViewInfo := TcxGridWinExplorerViewCustomCellViewInfo(AViewInfo).RecordViewInfo;
     if ARecordViewInfo <> nil then
     begin
       R := ARecordViewInfo.ClientBounds;
       InitializeHomeInfo(gvHomes.DataController.Values[ARecordViewInfo.GridRecord.Index, gvHomesID.Index]);
       dxCalloutPopup1.Popup(Grid, R);
     end;
   end;
end;

procedure TfrmGridCalloutPopup.InitializeFeaturesOfHouse;
var
  AFeatures, AAddress, ARooms, AYearBuilt, ASquares, APrice: string;
  DefTextColor: TColor;
begin
  DefTextColor := RootLookAndFeel.GetAvailablePainter().DefaultContentTextColor;

  AAddress := dmMain.mdHomes.FieldByName('Address').AsString;
  ReplaceInFeatures('__Address__', AAddress);
  ARooms := dmMain.mdHomes.FieldByName('Beds').AsString + ' bedrooms, ' +
    dmMain.mdHomes.FieldByName('Baths').AsString + ' bathrooms';
  ReplaceInFeatures('__Rooms__', ARooms, @DefTextColor);

  ASquares := 'House size ' +
    CurrToStrF(dmMain.mdHomes.FieldByName('HouseSize').AsFloat, ffNumber, 0) + ' Sq Ft, ' +
    'lot size ' + Format('%.2f',
    [dmMain.mdHomes.FieldByName('LotSize').AsFloat]) + ' Acres';
  ReplaceInFeatures('__Squares__', ASquares, @DefTextColor);

  AYearBuilt := 'Built in ' + dmMain.mdHomes.FieldByName('YearBuilt').AsString;
  ReplaceInFeatures('__YearBuilt__', AYearBuilt, @DefTextColor);

  APrice := CurrToStrF(dmMain.mdHomes.FieldByName('Price').AsCurrency, ffCurrency, 0);
  ReplaceInFeatures('__Price__', APrice);

  AFeatures := Trim(dmMain.mdHomes.FieldByName('Features').AsString);
  AFeatures := StringReplace(AFeatures, ', ', #13, [rfReplaceAll]);

  ReplaceInFeatures('__Features__', AFeatures, @DefTextColor);
end;

procedure TfrmGridCalloutPopup.InitializeHomeInfo(AId: Integer);
begin
  dmMain.mdHomes.Locate('Id', AId, []);
  InitializePropertyContact;
  if Grid.Visible then
  begin
    dxLayoutGroup5.Visible := True;
    InitializePropertyMap;
  end
  else
    dxLayoutGroup5.Visible := False;
  InitializePropertyPhotos;
  InitializePropertyDetails;
  dxLayoutGroup1.ItemIndex := 0;
end;

procedure TfrmGridCalloutPopup.InitializePropertyContact;
begin
  dmMain.mdAgents.Locate('ID', dmMain.mdHomesAgentID.Value, []);
  cxLabel1.Caption := Format(SGreeting, [dmMain.mdAgentsFirstName.Value, dmMain.mdAgentsLastName.Value,
    dmMain.mdAgentsPhone.Value, dmMain.mdAgentsEmail.Value]);
end;

procedure TfrmGridCalloutPopup.InitializePropertyDetails;
var
  AStream: TResourceStream;
begin
  reFeatures.Lines.BeginUpdate;
  try
    reFeatures.Lines.Clear;
    reFeatures.Properties.StreamModes := [];
    AStream := TResourceStream.Create(HInstance, 'HomeDetailsTemplate', RT_RCDATA);
    reFeatures.Lines.LoadFromStream(AStream);
    AStream.Free;
    reFeatures.Properties.StreamModes := [resmSelection];
    InitializeFeaturesOfHouse;
  finally
    reFeatures.Lines.EndUpdate;
  end;
end;

procedure TfrmGridCalloutPopup.InitializePropertyMap;
begin
  dxMapControl1BingMapGeoCodingDataProvider1.CancelRequests;
  dxMapControl1ItemLayer1.MapItems.Clear;
  dxMapControl1BingMapGeoCodingDataProvider1.SearchAsync(dmMain.mdHomesAddress.AsString);
  dxMapControl1.Zoom(16, False);
end;

procedure TfrmGridCalloutPopup.InitializePropertyPhotos;
var
  AGraphic: TdxSmartImage;
  AHomeID: Integer;
begin
  icSlider.Items.BeginUpdate;
  try
    icSlider.Items.Clear;
    AGraphic := TdxSmartImage.Create;
    try
      AHomeID := dmMain.mdHomesID.Value;
      if AHomeID > 7 then
        AHomeID := AHomeID div 4;
      dmMain.mdHomesInterior.Locate('ParentID', AHomeID, []);
      while not dmMain.mdHomesInterior.EOF and
        (dmMain.mdHomesInteriorParentID.AsInteger = AHomeID) do
      begin
        AGraphic.LoadFromFieldValue(dmMain.mdHomesInteriorPhoto.Value);
        icSlider.Items.Add.Picture.Graphic := AGraphic;
        dmMain.mdHomesInterior.Next;
      end;
    finally
      AGraphic.Free;
    end;
    imgsHome.ItemIndex := 0;
  finally
    icSlider.Items.EndUpdate(True);
  end;
end;

procedure TfrmGridCalloutPopup.ReplaceInFeatures(const ATokenStr, S: string; AReplaceColor: PColor = nil);
var
  ASelLength: Integer;
begin
  ASelLength := Length(ATokenStr);
  reFeatures.SelStart := reFeatures.FindTexT(ATokenStr, 0, -1, []);
  reFeatures.SelLength := ASelLength;
  if Assigned(AReplaceColor) then
    reFeatures.SelAttributes.Color := AReplaceColor^;
  reFeatures.SelText := S;
end;

procedure TfrmGridCalloutPopup.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := False;
  if dxCalloutPopup1.IsVisible then
    dxCalloutPopup2.Popup(cxDBImage1);
end;

initialization
  dxFrameManager.RegisterFrame(GridCalloutPopupViewFrameID, TfrmGridCalloutPopup,
    GridCalloutPopupFrameName, GridCalloutPopupImageIndex, -1, PreviewAndViewGroupIndex, -1);

end.
