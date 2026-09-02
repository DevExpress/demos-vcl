unit DesktopDemoMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ImgList,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxClasses, dxSkinsForm, dxCustomTileControl,
  dxTileControl, dxSkinsCore, dxSkinsDefaultPainters, dxGDIPlusClasses, cxImageList, dxBar, dxSkinMetropolisDark,
  DesktopDemoData, dxForms;

type
  TDesktopDemoMainForm = class(TdxForm)
    bbAnimateTextWithFrames: TdxBarButton;
    bliAnimationInterval: TdxBarListItem;
    bliAnimationMode: TdxBarListItem;
    bsiAnimationInterval: TdxBarSubItem;
    bmBars: TdxBarManager;
    GroupMyWorkspace: TdxTileControlGroup;
    GroupInTheNews: TdxTileControlGroup;
    GroupMiscellaneous: TdxTileControlGroup;
    ItemCalendar: TdxTileControlItem;
    ItemCamera: TdxTileControlItem;
    ItemDesktop: TdxTileControlItem;
    ItemFinances: TdxTileControlItem;
    ItemFoods: TdxTileControlItem;
    ItemFoodsdxTileControlItemFrame1: TdxTileControlItemFrame;
    ItemFoodsdxTileControlItemFrame2: TdxTileControlItemFrame;
    ItemGames: TdxTileControlItem;
    ItemHealth: TdxTileControlItem;
    ItemHealthdxTileControlItemFrame1: TdxTileControlItemFrame;
    ItemHealthdxTileControlItemFrame2: TdxTileControlItemFrame;
    ItemHelp: TdxTileControlItem;
    ItemIE: TdxTileControlItem;
    ItemMail: TdxTileControlItem;
    ItemMaps: TdxTileControlItem;
    ItemMusic: TdxTileControlItem;
    ItemNews: TdxTileControlItem;
    ItemPeople: TdxTileControlItem;
    ItemPhotos: TdxTileControlItem;
    ItemReadingList: TdxTileControlItem;
    ItemSkyDrive: TdxTileControlItem;
    ItemSports: TdxTileControlItem;
    ItemStore: TdxTileControlItem;
    ItemTravel: TdxTileControlItem;
    ItemVideo: TdxTileControlItem;
    ItemWeather: TdxTileControlItem;
    pmFrameAnimations: TdxBarPopupMenu;
    siAnimationMode: TdxBarSubItem;
    tcaClearSelection: TdxTileControlActionBarItem;
    tcaCustomizeOn: TdxTileControlActionBarItem;
    tcaExit: TdxTileControlActionBarItem;
    tcDesktop: TdxTileControl;
    tcaResizeSmall: TdxTileControlActionBarItem;
    tcaResizeRegular: TdxTileControlActionBarItem;
    tcaResizeLarge: TdxTileControlActionBarItem;
    tcaResizeExtraLarge: TdxTileControlActionBarItem;
    GroupEveryDayApps: TdxTileControlGroup;
    ItemMessaging: TdxTileControlItem;
    ItemAlarmClock: TdxTileControlItem;
    ItemCalculator: TdxTileControlItem;
    GroupHelp: TdxTileControlGroup;
    ItemFeedback: TdxTileControlItem;
    ItemGetStarted: TdxTileControlItem;
    ItemSettings: TdxTileControlItem;

    procedure AnimationOptionsChanged(Sender: TObject);
    procedure ItemFoodsActiveFrameChanged(Sender: TdxTileControlItem);
    procedure pmFrameAnimationsPopup(Sender: TObject);
    procedure tcaClearSelectionClick(Sender: TdxTileControlActionBarItem);
    procedure tcaCustomizeOnClick(Sender: TdxTileControlActionBarItem);
    procedure tcaExitClick(Sender: TdxTileControlActionBarItem);
    procedure tcDesktopContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
    procedure tcDesktopItemCheck(Sender: TdxCustomTileControl; AItem: TdxTileControlItem);
    procedure tcDesktopKeyPress(Sender: TObject; var Key: Char);
    procedure tcaResizeSmallClick(Sender: TdxTileControlActionBarItem);
    procedure FormCreate(Sender: TObject);
  strict private
    function CanResizeItem(AItem: TdxTileControlItem; ASize: TdxTileControlItemSize): Boolean;
    procedure InitializeAnimationMode;
    procedure UpdateActionBarsItems;
  end;

var
  DesktopDemoMainForm: TDesktopDemoMainForm;

implementation

uses
  System.DateUtils, dxAnimation, dxCore;

{$R *.dfm}

type
  TdxTileControlAccess = class(TdxTileControl);

{ TDesktopDemoMainForm }

function TDesktopDemoMainForm.CanResizeItem(AItem: TdxTileControlItem; ASize: TdxTileControlItemSize): Boolean;
begin
  Result := (AItem.Frames.Count = 0) and ((ASize <> tcisSmall) or (AItem.Tag = 1));
end;

procedure TDesktopDemoMainForm.FormCreate(Sender: TObject);
begin
  ItemCalendar.Text2.Value := IntToStr(DayOfTheMonth(Now));
  ItemCalendar.Text4.Value := FormatSettings.ShortDayNames[DayOfWeek(Now)];
  InitializeAnimationMode;
  UpdateActionBarsItems;
end;

procedure TDesktopDemoMainForm.InitializeAnimationMode;
const
  AnimationIntervals: array[0..5] of Integer = (
    0, 500, 1000, 1500, 2000, 3000
  );
  AnimationModeToString: array[TdxDrawAnimationMode] of string = (
    'Right to left scroll',
    'Bottom to top scroll',
    'Left to right scroll',
    'Top to bottom scroll',
    'Fade', 'Segmented fade',
    'Random segmented fade',
    'Fading scroll left',
    'Fading scroll up',
    'Fading scroll right',
    'Fading scroll down'
  );
var
  AMode: TdxDrawAnimationMode;
  AIndex: Integer;
begin
  for AMode := Low(AMode) to High(AMode) do
    bliAnimationMode.Items.Add(AnimationModeToString[AMode]);
  for AIndex := Low(AnimationIntervals) to High(AnimationIntervals) do
    bliAnimationInterval.Items.AddObject(IntToStr(AnimationIntervals[AIndex]), TObject(AnimationIntervals[AIndex]));
end;

procedure TDesktopDemoMainForm.ItemFoodsActiveFrameChanged(Sender: TdxTileControlItem);
const
  AnimationModeSwitch: array[TdxDrawAnimationMode] of TdxDrawAnimationMode = (
    amScrollRight, amScrollDown, amScrollLeft, amScrollUp,
    amFade, amSegmentedFade, amRandomSegmentedFade,
    amScrollRightFade, amScrollDownFade, amScrollLeftFade, amScrollUpFade
  );
begin
  Sender.AnimationMode := AnimationModeSwitch[Sender.AnimationMode];
end;

procedure TDesktopDemoMainForm.tcaCustomizeOnClick(Sender: TdxTileControlActionBarItem);
begin
  tcDesktop.OptionsBehavior.GroupRenaming := True;
end;

procedure TDesktopDemoMainForm.tcDesktopKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
  begin
    if tcDesktop.DragAndDropState <> ddsNone then
      tcDesktop.FinishDragAndDrop(False)
    else if tcDesktop.OptionsBehavior.GroupRenaming then
      tcDesktop.OptionsBehavior.GroupRenaming := False
    else
      Close;
  end;
end;

procedure TDesktopDemoMainForm.tcaExitClick(Sender: TdxTileControlActionBarItem);
begin
  Close;
end;

procedure TDesktopDemoMainForm.tcaResizeSmallClick(Sender: TdxTileControlActionBarItem);
var
  AItem: TdxTileControlItem;
  AItemSize: TdxTileControlItemSize;
  I: Integer;
begin
  AItemSize := TdxTileControlItemSize(Sender.Tag);
  for I := tcDesktop.CheckedItemCount - 1 downto 0 do
  begin
    AItem := tcDesktop.CheckedItems[I];
    if CanResizeItem(AItem, AItemSize) then
      AItem.Size := AItemSize;
  end;
end;

procedure TDesktopDemoMainForm.tcaClearSelectionClick(Sender: TdxTileControlActionBarItem);
var
  I: Integer;
begin
  for I := tcDesktop.CheckedItemCount - 1 downto 0 do
    tcDesktop.CheckedItems[I].Checked := False;
end;

procedure TDesktopDemoMainForm.UpdateActionBarsItems;
var
  AItem: TdxTileControlItem;
  ASize: TdxTileControlItemSize;
  AVisibilities: array[TdxTileControlItemSize] of TdxDefaultBoolean;
  I: Integer;
begin
  tcaClearSelection.Visible := tcDesktop.CheckedItemCount > 0;

  for ASize := Low(TdxTileControlItemSize) to High(TdxTileControlItemSize) do
    AVisibilities[ASize] := bDefault;
  for I := 0 to tcDesktop.CheckedItemCount - 1 do
  begin
    AItem := tcDesktop.CheckedItems[I];
    for ASize := Low(TdxTileControlItemSize) to High(TdxTileControlItemSize) do
    begin
      if not CanResizeItem(AItem, ASize) then
        AVisibilities[ASize] := bFalse
      else
        if (AItem.Size <> ASize) and (AVisibilities[ASize] = bDefault) then
          AVisibilities[ASize] := bTrue;
    end;
  end;

  tcaResizeSmall.Visible := AVisibilities[tcisSmall] = bTrue;
  tcaResizeRegular.Visible := AVisibilities[tcisRegular] = bTrue;
  tcaResizeLarge.Visible := AVisibilities[tcisLarge] = bTrue;
  tcaResizeExtraLarge.Visible := AVisibilities[tcisExtraLarge] = bTrue;
end;

procedure TDesktopDemoMainForm.tcDesktopContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
var
  AItem: TdxTileControlItem;
begin
  AItem := TdxTileControlAccess(tcDesktop).Controller.HottrackedItem;
  if (AItem <> nil) and not AItem.Checked then
  begin
    AItem.Checked := True;
    if AItem.Checked and (AItem.Frames.Count > 0) then
      pmFrameAnimations.Popup(MousePos.X, MousePos.Y);
    Handled := True;
  end;
end;

procedure TDesktopDemoMainForm.tcDesktopItemCheck(Sender: TdxCustomTileControl; AItem: TdxTileControlItem);
begin
  UpdateActionBarsItems;
end;

procedure TDesktopDemoMainForm.AnimationOptionsChanged(Sender: TObject);
var
  ACheckedItem: TdxTileControlItem;
  AAnimationMode: TdxDrawAnimationMode;
  AAnimationInterval: Integer;
  I: Integer;
begin
  if bliAnimationMode.ItemIndex >= 0 then
    AAnimationMode := TdxDrawAnimationMode(bliAnimationMode.ItemIndex)
  else
    AAnimationMode := amScrollUp;

  if bliAnimationInterval.ItemIndex >= 0 then
    AAnimationInterval := Integer(bliAnimationInterval.Items.Objects[bliAnimationInterval.ItemIndex])
  else
    AAnimationInterval := -1;

  for I := tcDesktop.CheckedItemCount - 1 downto 0 do
  begin
    ACheckedItem := tcDesktop.CheckedItems[I];
    ACheckedItem.OptionsAnimate.AnimateText := bbAnimateTextWithFrames.Down;
    ACheckedItem.AnimationInterval := AAnimationInterval;
    ACheckedItem.AnimationMode := AAnimationMode;
    ACheckedItem.Checked := False;
  end;
end;

procedure TDesktopDemoMainForm.pmFrameAnimationsPopup(Sender: TObject);
var
  ACheckedItem: TdxTileControlItem;
begin
  if tcDesktop.CheckedItemCount > 0 then
  begin
    ACheckedItem := tcDesktop.CheckedItems[0];
    bliAnimationMode.ItemIndex := Ord(ACheckedItem.AnimationMode);
    bliAnimationInterval.ItemIndex := bliAnimationInterval.Items.IndexOfObject(TObject(ACheckedItem.AnimationInterval));
    bbAnimateTextWithFrames.Down := ACheckedItem.OptionsAnimate.AnimateText;
  end;
end;

initialization
  TdxVisualRefinements.LightBorders := True;
end.
