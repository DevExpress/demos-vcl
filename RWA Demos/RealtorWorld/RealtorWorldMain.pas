unit RealtorWorldMain;

interface

uses
  Vcl.Forms, Data.DB, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Graphics, RealtorWorldDM,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxCustomTileControl,
  cxClasses, System.Classes, Vcl.Controls, dxTileControl, cxImage, dxGDIPlusClasses,
  dxSkinsForm, dxSkinsDefaultPainters, RealtorWorldListing, RealtorWorldAgents,
  RealtorWorldResearch, RealtorWorldUnderConstruction, RealtorWorldLoanCalculator,
  RealtorWorldMortgageRate, RealtorWorldStatistic, Winapi.ShellAPI, dxForms, cxGeometry,
  dxCore;

type
  TfrmRealtorWorld = class(TdxForm)
    dxSkinController1: TdxSkinController;
    dxTile: TdxTileControl;
    dxTileControlGroup1: TdxTileControlGroup;
    dxTileControlGroup2: TdxTileControlGroup;
    TileControlGroup3: TdxTileControlGroup;
    tcaBlackTheme: TdxTileControlActionBarItem;
    tcaClearSelection: TdxTileControlActionBarItem;
    tcaExit: TdxTileControlActionBarItem;
    tcaMakeTileItemLarger: TdxTileControlActionBarItem;
    tcaMakeTileItemSmaller: TdxTileControlActionBarItem;
    tcaWhiteTheme: TdxTileControlActionBarItem;
    tlAgents: TdxTileControlItem;
    tlLoanCalculator: TdxTileControlItem;
    tlMortgageRates: TdxTileControlItem;
    tlPhotos: TdxTileControlItem;
    tlResearch: TdxTileControlItem;
    tlStatistics: TdxTileControlItem;
    tlSystemInformation: TdxTileControlItem;
    tlUserManagement: TdxTileControlItem;
    tlZillow: TdxTileControlItem;
    procedure FormCreate(Sender: TObject);
    procedure tcaChangeThemeClick(Sender: TdxTileControlActionBarItem);
    procedure tcaExitClick(Sender: TdxTileControlActionBarItem);
    procedure tlActivateDetail(Sender: TdxTileControlItem);
    procedure tlUnderConstructionClick(Sender: TdxTileControlItem);
    procedure tlZillowClick(Sender: TdxTileControlItem);
    procedure dxTileItemCheck(Sender: TdxCustomTileControl; AItem: TdxTileControlItem);
    procedure tcaMakeTileItemLargerClick(Sender: TdxTileControlActionBarItem);
    procedure tcaClearSelectionClick(Sender: TdxTileControlActionBarItem);
  private
    procedure SelectSkin(ABlackSkin: Boolean);
    procedure InitializeTileControlItemPhotos;
    procedure UpdateActionBarsItems;
  public
    procedure InitializeTileControlItemAgents(ADataSet: TDataSet; AParentItem: TObject;
                const AOnClick: TdxTileControlItemEvent = nil);
  end;

var
  frmRealtorWorld: TfrmRealtorWorld;

implementation

uses
  RealtorWorldBaseFrame;

{$R *.dfm}

procedure TfrmRealtorWorld.dxTileItemCheck(
  Sender: TdxCustomTileControl; AItem: TdxTileControlItem);
begin
  UpdateActionBarsItems;
end;

procedure TfrmRealtorWorld.FormCreate(Sender: TObject);
var
  I: Integer;
begin
  dxSkinController1.NativeStyle := False;
  SelectSkin(True);
  dxTile.LookAndFeel.AssignedValues := [];
  InitializeTileControlItemPhotos;
  InitializeTileControlItemAgents(DMRealtorWorld.clHomesAndAgents, tlAgents);
  UpdateActionBarsItems;
  dxTile.Controller.StopItemContentAnimation;
  try
    for I := 0 to dxTile.Items.Count - 1 do
      if dxTile.Items[I].Frames.Count > 0 then
        dxTile.Items[I].ActiveFrame := dxTile.Items[I].Frames[0];
  finally
    dxTile.Controller.StartItemContentAnimation;
  end;
end;

procedure TfrmRealtorWorld.InitializeTileControlItemPhotos;
var
  AFrame: TdxTileControlItemFrame;
  AText2, AText3: string;
  AParentID, AHomeID: Integer;
  dsHomes, dsHomesInterior: TDataSet;

  procedure SetTexts(AItem: TdxTileControlCustomItem);
  begin
    AItem.Style.Font.Size := ScaleFactor.Apply(13);
    AItem.Text2.Value := AText2;
    AItem.Text2.IndentHorz := 0;
    AItem.Text2.IndentVert := 0;
    AItem.Text2.Transparent := False;
    AItem.Text3.Value := AText3;
    AItem.Text3.IndentHorz := 0;
    AItem.Text3.IndentVert := 0;
    AItem.Text3.Transparent := False;
  end;

begin
  dsHomes := DMRealtorWorld.clHomesAndHomes;
  dsHomesInterior := DMRealtorWorld.clHomePhotos;
  dsHomes.First;
  while not dsHomes.EOF do
  begin
    AFrame := tlPhotos.Frames.Add;
    AFrame.Glyph.Mode := ifmFill;
    AFrame.Glyph.Image.LoadFromFieldValue(dsHomes.FieldByName('Photo').Value);
    AFrame.Tag := dsHomes.FieldByName('ID').AsInteger;
    AHomeID := AFrame.Tag;
    AParentID := dsHomes.FieldByName('ID').AsInteger mod 7 + 1;
    AText2 := ' ' + dsHomes.FieldByName('Beds').AsString + ' Beds' + #10 + ' ' + dsHomes.FieldByName('Baths').AsString + ' Baths ';
    AText3 := ' ' + CurrToStrF(dsHomes.FieldByName('Price').AsFloat, ffCurrency, 0) + ' ';
    SetTexts(AFrame);
    dsHomesInterior.Locate('ParentID', AParentID, []);
    while not dsHomesInterior.EOF and
      (dsHomesInterior.FieldByName('ParentID').AsInteger = AParentID) do
    begin
      AFrame := tlPhotos.Frames.Add;
      AFrame.Glyph.Mode := ifmFill;
      AFrame.Glyph.Image.LoadFromFieldValue(dsHomesInterior.FieldByName('Photo').Value);
      AFrame.Tag := AHomeID;
      SetTexts(AFrame);
      dsHomesInterior.Next;
    end;
    dsHomes.Next;
  end;
end;

procedure TfrmRealtorWorld.SelectSkin(ABlackSkin: Boolean);
const
  SkinFileNames: array[Boolean] of string = ('MetroWhite.skinres', 'MetroBlack.skinres');
begin
  dxSkinsUserSkinLoadFromFile(DMRealtorWorld.DataPath + SkinFileNames[ABlackSkin]);
  tcaBlackTheme.Visible := not ABlackSkin;
  tcaWhiteTheme.Visible := ABlackSkin;
end;

procedure TfrmRealtorWorld.InitializeTileControlItemAgents(ADataSet: TDataSet; AParentItem: TObject;
            const AOnClick: TdxTileControlItemEvent = nil);
var
  AItem: TdxTileControlCustomItem;
  AGlyph: TdxTileControlItemCustomGlyph;
begin
  ADataSet.First;
  while not ADataSet.EOF do
  begin
    AItem := nil;
    AGlyph := nil;
    if AParentItem is TdxTileControlItem then
    begin
      AItem := TdxTileControlItem(AParentItem).Frames.Add;
      AGlyph := TdxTileControlItemFrame(AItem).Glyph;
    end
    else
      if AParentItem is TdxTileControl then
      begin
        AItem := TdxTileControl(AParentItem).CreateItem(True);
        AItem.Style := tlAgents.Style;
        AGlyph := TdxTileControlItem(AItem).Glyph;
      end;
    if Assigned(AItem) then
    begin
      AGlyph.Image.LoadFromFieldValue(ADataSet.FieldByName('Photo').Value);
      AGlyph.Image.Scale(70, 100);
      AGlyph.Align := oaMiddleRight;
      AItem.Tag := ADataSet.FieldByName('ID').AsInteger;
      AItem.Style.Font.Size := 12;
      AItem.Text1.Align := oaTopLeft;
      AItem.Text1.Value := ADataSet.FieldByName('FirstName').AsString + ' ' + ADataSet.FieldByName('LastName').AsString;
      AItem.Text2.Align := oaBottomLeft;
      AItem.Text2.Value := ADataSet.FieldByName('Phone').AsString;
      if AItem is TdxTileControlItem then
        TdxTileControlItem(AItem).OnClick := AOnClick;
    end;
    ADataSet.Next;
  end;
end;

procedure TfrmRealtorWorld.tcaChangeThemeClick(Sender: TdxTileControlActionBarItem);
begin
  SelectSkin(Sender.Tag = 0);
end;

procedure TfrmRealtorWorld.tcaClearSelectionClick(
  Sender: TdxTileControlActionBarItem);
var
  I: Integer;
begin
  for I := dxTile.CheckedItemCount - 1 downto 0 do
    dxTile.CheckedItems[I].Checked := False;
end;

procedure TfrmRealtorWorld.tlActivateDetail(Sender: TdxTileControlItem);
begin
  if Sender.DetailOptions.DetailControl = nil then
    Sender.DetailOptions.DetailControl := GetDetailControlClass(Sender.Tag).Create(Self);
  TfrmBase(Sender.DetailOptions.DetailControl).SelectItem(tlPhotos.ActiveFrame.Tag,
    tlAgents.ActiveFrame.Tag);
end;

procedure TfrmRealtorWorld.tcaExitClick(Sender: TdxTileControlActionBarItem);
begin
  Close;
end;

procedure TfrmRealtorWorld.tcaMakeTileItemLargerClick(Sender: TdxTileControlActionBarItem);
var
  I: Integer;
begin
  for I := 0 to dxTile.CheckedItemCount - 1 do
    dxTile.CheckedItems[I].IsLarge := Sender.Tag = 1;
end;

procedure TfrmRealtorWorld.tlZillowClick(Sender: TdxTileControlItem);
begin
  ShellExecute(0, 'open', 'http://www.zillow.com', nil, nil, SW_SHOW);
end;

procedure TfrmRealtorWorld.UpdateActionBarsItems;
var
  AAllCheckedItemsAreLarge: Boolean;
  AAllCheckedItemsAreSmall: Boolean;
  AItem: TdxTileControlItem;
  I: Integer;
begin
  AAllCheckedItemsAreLarge := True;
  AAllCheckedItemsAreSmall := True;
  for I := 0 to dxTile.CheckedItemCount - 1 do
  begin
    AItem := dxTile.CheckedItems[I];
    AAllCheckedItemsAreLarge := AAllCheckedItemsAreLarge and (AItem.RowCount = 1) and AItem.IsLarge;
    AAllCheckedItemsAreSmall := AAllCheckedItemsAreSmall and (AItem.RowCount = 1) and not AItem.IsLarge;
  end;
  tcaMakeTileItemSmaller.Visible := (dxTile.CheckedItemCount > 0) and AAllCheckedItemsAreLarge;
  tcaMakeTileItemLarger.Visible := (dxTile.CheckedItemCount > 0) and AAllCheckedItemsAreSmall;
  tcaClearSelection.Visible := dxTile.CheckedItemCount > 0;
end;

procedure TfrmRealtorWorld.tlUnderConstructionClick(Sender: TdxTileControlItem);
begin
  if Sender.DetailOptions.DetailControl = nil then
  begin
    Sender.DetailOptions.DetailControl := TfrmUnderConstruction.Create(Self);
    Sender.DetailOptions.DetailControl.Name := Sender.Name + 'DetailControl';
  end;
end;

initialization
  TdxVisualRefinements.LightBorders := True;
end.
