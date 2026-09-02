unit dxNavBarViewsFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ImgList, Vcl.ActnList, Vcl.ComCtrls, Vcl.Menus,
  dxNavBarStyles, dxNavBarCollns, dxNavBarBase, dxNavBar, dxNavBarSkinBasedViews,
  cxClasses, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinsdxNavBarPainter, dxSkinsdxBarPainter, dxBar, cxContainer,
  cxEdit, cxLabel, dxSkinsForm, cxGroupBox, cxPC, cxCheckBox, dxSkinscxPCPainter,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxButtons, dxTreeView, cxImageComboBox,
  System.Contnrs, dxBarSkinnedCustForm, cxPCdxBarPopupMenu, dxBarBuiltInMenu, dxSkinsDefaultPainters,
  dxNavBarControlBaseFormUnit, dxRibbonSkins, dxRibbonCustomizationForm,
  dxRibbon, dxSkinsdxNavBarAccordionViewPainter, dxLayoutcxEditAdapters, dxLayoutContainer, dxLayoutControl,
  dxLayoutLookAndFeels, cxImageList, dxLayoutControlAdapters, System.Actions;

type
  TdxNavBarControlDemoUnitForm2 = class(TdxNavBarControlDemoUnitForm)
    alMain: TActionList;
    actShowCaptions: TAction;
    actShowSpecialGroup: TAction;
    actAllowSelectLinks: TAction;
    actEachGroupHasSelectedLink: TAction;
    actShowGroupHints: TAction;
    actShowLinkHints: TAction;
    nbMain: TdxNavBar;
    bgMail: TdxNavBarGroup;
    bgNews: TdxNavBarGroup;
    bgOther: TdxNavBarGroup;
    bgTasks: TdxNavBarGroup;
    bgCalendar: TdxNavBarGroup;
    bgJournal: TdxNavBarGroup;
    bgNotes: TdxNavBarGroup;
    bgContacts: TdxNavBarGroup;
    bgShortcuts: TdxNavBarGroup;
    biInbox: TdxNavBarItem;
    biOutbox: TdxNavBarItem;
    biSentItems: TdxNavBarItem;
    biDeletedItems: TdxNavBarItem;
    biDrafts: TdxNavBarItem;
    biNews: TdxNavBarItem;
    biMyComputer: TdxNavBarItem;
    biMyDocuments: TdxNavBarItem;
    biFavorites: TdxNavBarItem;
    biJunkEmail: TdxNavBarItem;
    stThirdGroupBackGround: TdxNavBarStyleItem;
    stThirdGroupHeader: TdxNavBarStyleItem;
    stThirdGroupHeaderHotTracked: TdxNavBarStyleItem;
    stThirdGroupHeaderPressed: TdxNavBarStyleItem;
    tvNavBar: TdxTreeViewControl;
    btAddGroup: TcxButton;
    btAddLink: TcxButton;
    btDeleteGroup: TcxButton;
    btDeleteLink: TcxButton;
    eGCaption: TcxTextEdit;
    cbGSmallImageIndex: TcxImageComboBox;
    cbGLargeImageIndex: TcxImageComboBox;
    eICaption: TcxTextEdit;
    cbILargeImageIndex: TcxImageComboBox;
    cbISmallImageIndex: TcxImageComboBox;
    imgLarge: TcxImageList;
    imgSmall: TcxImageList;
    dxBarManager1: TdxBarManager;
    miOptions: TdxBarSubItem;
    pmnuItems: TdxBarPopupMenu;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutItem19: TdxLayoutItem;
    dxLayoutItem20: TdxLayoutItem;
    dxLayoutItem21: TdxLayoutItem;
    lgProperties: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    tsSelectedItemProps: TdxLayoutGroup;
    tsSelectedGroupProps: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    cbGExpanded: TdxLayoutCheckBoxItem;
    cbGVisible: TdxLayoutCheckBoxItem;
    cbGShowAsIconView: TdxLayoutCheckBoxItem;
    cbGLinkUseSmallImages: TdxLayoutCheckBoxItem;
    cbGUseSmallImages: TdxLayoutCheckBoxItem;
    cbIVisible: TdxLayoutCheckBoxItem;
    cbIEnabled: TdxLayoutCheckBoxItem;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutCheckBoxItem1: TdxLayoutCheckBoxItem;
    dxLayoutCheckBoxItem2: TdxLayoutCheckBoxItem;
    dxLayoutCheckBoxItem3: TdxLayoutCheckBoxItem;
    dxLayoutCheckBoxItem4: TdxLayoutCheckBoxItem;
    dxLayoutCheckBoxItem5: TdxLayoutCheckBoxItem;
    dxLayoutCheckBoxItem6: TdxLayoutCheckBoxItem;
    dxLayoutEmptySpaceItem1: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem;
    miStyle: TcxComboBox;
    dxLayoutItem9: TdxLayoutItem;
    miColorScheme: TcxComboBox;
    dxLayoutItem10: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure NavBarItemClick(Sender: TObject);
    procedure btAddGroupClick(Sender: TObject);
    procedure btAddLinkClick(Sender: TObject);
    procedure btDeleteGroupClick(Sender: TObject);
    procedure btDeleteLinkClick(Sender: TObject);
    procedure eICaptionPropertiesChange(Sender: TObject);
    procedure cbIEnabledClick(Sender: TObject);
    procedure cbIVisibleClick(Sender: TObject);
    procedure cbISmallImageIndexPropertiesChange(Sender: TObject);
    procedure cbILargeImageIndexPropertiesChange(Sender: TObject);
    procedure tvNavBarSelectionChanged(Sender: TObject);
    procedure nbMainActiveGroupChanged(Sender: TObject);
    procedure nbMainLinkClick(Sender: TObject; ALink: TdxNavBarItemLink);
    procedure nbMainEndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure pmnuItemClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure eGCaptionPropertiesChange(Sender: TObject);
    procedure cbGExpandedClick(Sender: TObject);
    procedure cbGVisibleClick(Sender: TObject);
    procedure cbGShowAsIconViewClick(Sender: TObject);
    procedure cbGUseSmallImagesClick(Sender: TObject);
    procedure cbGLinkUseSmallImagesClick(Sender: TObject);
    procedure cbGSmallImageIndexPropertiesChange(Sender: TObject);
    procedure cbGLargeImageIndexPropertiesChange(Sender: TObject);
    procedure actShowCaptionsExecute(Sender: TObject);
    procedure actShowSpecialGroupExecute(Sender: TObject);
    procedure actAllowSelectLinksExecute(Sender: TObject);
    procedure actEachGroupHasSelectedLinkExecute(Sender: TObject);
    procedure actShowGroupHintsExecute(Sender: TObject);
    procedure actShowLinkHintsExecute(Sender: TObject);
    procedure miStyleNewPropertiesChange(Sender: TObject);
    procedure miColorSchemePropertiesChange(Sender: TObject);
  private
    FColorSchemeItems: TStringList;
    function AddButton(AItemLinks: TdxBarItemLinks; ACaption: string;
      AImageIndex: Integer; ARadioItem: Boolean; AGroupIndex: Integer;
      AClickHandler: TNotifyEvent): TdxBarButton;
    procedure CheckColorScheme;
    procedure SelectDefaultGroup;
    procedure SetNodeImageIndex(ANode: TdxTreeViewNode; AImageIndex: Integer);
    procedure UpdateGroupProperties;
    procedure UpdateItemProperties;
    procedure UpdateItemsDropDownMenu;
    procedure UpdateGroupPropertiesState;
    procedure UpdateItemPropertiesState;
    procedure UpdateTreeView;
    function GetCurrentGroup: TdxNavBarGroup;
    function GetCurrentItem: TdxNavBarItem;
    function GetCurrentLink: TdxNavBarItemLink;
  protected
    function GetBarManager: TdxBarManager; override;
    function GetNavBarControl: TdxNavBar; override;
    function GetDescription: string; override;
  public
    class function GetID: Integer; override;
    class function GetLoadingInfo: string; override;
    function HasOptions: Boolean; override;
    property CurrentGroup: TdxNavBarGroup read GetCurrentGroup;
    property CurrentItem: TdxNavBarItem read GetCurrentItem;
    property CurrentLink: TdxNavBarItemLink read GetCurrentLink;
  end;

implementation

uses
  dxCore, dxNavBarViewsFact, dxNavBarConsts, Winapi.ShellAPI, dxDemoUtils, System.Types;

{$R *.dfm}

{ TdxNavBarControlDemoUnitForm2 }

procedure TdxNavBarControlDemoUnitForm2.actShowCaptionsExecute(Sender: TObject);
begin
  TAction(Sender).Checked := not TAction(Sender).Checked;
  nbMain.ShowGroupCaptions := TAction(Sender).Checked;
end;

procedure TdxNavBarControlDemoUnitForm2.actShowSpecialGroupExecute(Sender: TObject);
begin
  TAction(Sender).Checked := not TAction(Sender).Checked;
  nbMain.ShowSpecialGroup := TAction(Sender).Checked;
end;

procedure TdxNavBarControlDemoUnitForm2.actAllowSelectLinksExecute(Sender: TObject);
begin
  TAction(Sender).Checked := not TAction(Sender).Checked;
  nbMain.AllowSelectLinks := TAction(Sender).Checked;
end;

procedure TdxNavBarControlDemoUnitForm2.actEachGroupHasSelectedLinkExecute(
  Sender: TObject);
begin
  TAction(Sender).Checked := not TAction(Sender).Checked;
  nbMain.EachGroupHasSelectedLink := TAction(Sender).Checked;
end;

procedure TdxNavBarControlDemoUnitForm2.actShowGroupHintsExecute(Sender: TObject);
begin
  TAction(Sender).Checked := not TAction(Sender).Checked;
  nbMain.ShowGroupsHint := TAction(Sender).Checked;
end;

procedure TdxNavBarControlDemoUnitForm2.actShowLinkHintsExecute(Sender: TObject);
begin
  TAction(Sender).Checked := not TAction(Sender).Checked;
  nbMain.ShowLinksHint := TAction(Sender).Checked;
end;

function TdxNavBarControlDemoUnitForm2.AddButton(AItemLinks: TdxBarItemLinks;
  ACaption: string; AImageIndex: Integer; ARadioItem: Boolean;
  AGroupIndex: Integer; AClickHandler: TNotifyEvent): TdxBarButton;
begin
  Result := dxBarManager1.AddButton;
  Result.Caption := ACaption;
  Result.ImageIndex := AImageIndex;
  if ARadioItem then
  begin
    Result.ButtonStyle := bsChecked;
    Result.GroupIndex := AGroupIndex;
  end;
  if Assigned(AClickHandler) then
    Result.OnClick := AClickHandler
  else
    Result.Enabled := False;
  Result.Tag := AItemLinks.Add(Result).Index;
end;

procedure TdxNavBarControlDemoUnitForm2.btAddGroupClick(Sender: TObject);
var
  AGroup: TdxNavBarGroup;
  AParentNode, ANode: TdxTreeViewNode;
begin
  AGroup := nbMain.Groups.Add;
  AGroup.OnClick := NavBarItemClick;
  if CurrentGroup <> nil then
  begin
    if TObject(tvNavBar.Selected.Data) is TdxNavBarGroup then
      AParentNode := tvNavBar.Selected
    else AParentNode := tvNavBar.Selected.Parent;
    ANode := tvNavBar.Items.InsertObject(AParentNode, AGroup.Caption, AGroup);
    AGroup.Index := CurrentGroup.Index;
  end
  else
    ANode := tvNavBar.Items.AddObject(nil, AGroup.Caption, AGroup);
  ANode.ImageIndex := AGroup.SmallImageIndex;
  ANode.SelectedImageIndex := ANode.ImageIndex;
  tvNavBar.Selected := ANode;
  tvNavBar.FullExpand;
  UpdateGroupProperties;
  UpdateItemProperties;
end;

procedure TdxNavBarControlDemoUnitForm2.btAddLinkClick(Sender: TObject);
begin
  if CurrentGroup <> nil then
    with TcxButton(Sender).ClientToScreen(Point(0, TcxButton(Sender).Height)) do
      pmnuItems.Popup(X, Y);
end;

procedure TdxNavBarControlDemoUnitForm2.btDeleteGroupClick(Sender: TObject);
var
  AGroup: TdxNavBarGroup;
begin
  if CurrentGroup <> nil then
  begin
    AGroup := CurrentGroup;
    if TObject(tvNavBar.Selected.Data) is TdxNavBarGroup then
      tvNavBar.Items.Delete(tvNavBar.Selected)
    else tvNavBar.Items.Delete(tvNavBar.Selected.Parent);
    nbMain.Groups.Delete(AGroup.Index);

    SelectDefaultGroup;
    UpdateGroupProperties;
    UpdateItemProperties
  end;
end;

procedure TdxNavBarControlDemoUnitForm2.btDeleteLinkClick(Sender: TObject);
var
  ALink: TdxNavBarItemLink;
begin
  if CurrentLink <> nil then
  begin
    ALink := CurrentLink;
    if TObject(tvNavBar.Selected.Data) is TdxNavBarItemLink then
      tvNavBar.Items.Delete(tvNavBar.Selected);
    ALink.Group.RemoveLink(ALink.Index);

    SelectDefaultGroup;
    UpdateGroupProperties;
    UpdateItemProperties
  end;
end;

procedure TdxNavBarControlDemoUnitForm2.cbGExpandedClick(Sender: TObject);
begin
  if CurrentGroup <> nil then
    CurrentGroup.Expanded := (Sender as TdxLayoutCheckBoxItem).Checked;
end;

procedure TdxNavBarControlDemoUnitForm2.cbGLargeImageIndexPropertiesChange(
  Sender: TObject);
begin
  if CurrentGroup <> nil then
    CurrentGroup.LargeImageIndex := cbGLargeImageIndex.ItemIndex;
end;

procedure TdxNavBarControlDemoUnitForm2.cbGLinkUseSmallImagesClick(
  Sender: TObject);
begin
  if CurrentGroup <> nil then
    CurrentGroup.LinksUseSmallImages := TdxLayoutCheckBoxItem(Sender).Checked;
end;

procedure TdxNavBarControlDemoUnitForm2.cbGShowAsIconViewClick(Sender: TObject);
begin
  if CurrentGroup <> nil then
    CurrentGroup.ShowAsIconView := TdxLayoutCheckBoxItem(Sender).Checked;
end;

procedure TdxNavBarControlDemoUnitForm2.cbGSmallImageIndexPropertiesChange(
  Sender: TObject);
begin
  if CurrentGroup = nil then
    Exit;
  CurrentGroup.SmallImageIndex := cbGSmallImageIndex.ItemIndex;
  tvNavBar.Selected.ImageIndex := CurrentGroup.SmallImageIndex;
  tvNavBar.Selected.StateImageIndex := CurrentGroup.SmallImageIndex;
  tvNavBar.Selected.SelectedImageIndex := CurrentGroup.SmallImageIndex;
end;

procedure TdxNavBarControlDemoUnitForm2.cbGUseSmallImagesClick(Sender: TObject);
begin
  if CurrentGroup <> nil then
    CurrentGroup.UseSmallImages := TdxLayoutCheckBoxItem(Sender).Checked;
end;

procedure TdxNavBarControlDemoUnitForm2.cbGVisibleClick(Sender: TObject);
begin
  if CurrentGroup <> nil then
    CurrentGroup.Visible := TdxLayoutCheckBoxItem(Sender).Checked;
end;

procedure TdxNavBarControlDemoUnitForm2.cbIEnabledClick(Sender: TObject);
begin
  if CurrentItem <> nil then
    CurrentItem.Enabled := TdxLayoutCheckBoxItem(Sender).Checked;
end;

procedure TdxNavBarControlDemoUnitForm2.cbILargeImageIndexPropertiesChange(
  Sender: TObject);
begin
  if CurrentItem <> nil then
    CurrentItem.LargeImageIndex := cbILargeImageIndex.ItemIndex;
end;

procedure TdxNavBarControlDemoUnitForm2.cbISmallImageIndexPropertiesChange(
  Sender: TObject);
begin
  if CurrentItem <> nil then
  begin
    CurrentItem.SmallImageIndex := cbISmallImageIndex.ItemIndex;
    tvNavBar.Selected.ImageIndex := CurrentItem.SmallImageIndex;
    tvNavBar.Selected.StateImageIndex := CurrentItem.SmallImageIndex;
    tvNavBar.Selected.SelectedImageIndex := CurrentItem.SmallImageIndex;
  end;
end;

procedure TdxNavBarControlDemoUnitForm2.cbIVisibleClick(Sender: TObject);
begin
  if CurrentItem <> nil then
    CurrentItem.Visible := TdxLayoutCheckBoxItem(Sender).Checked;
end;

procedure TdxNavBarControlDemoUnitForm2.CheckColorScheme;
var
  ASchemes: IdxNavBarColorSchemes;
  I, ASelectedIndex: Integer;
  ANameList: TStringList;
begin
  ASchemes := GetNavBarColorSchemes(nbMain.Painter);
  FColorSchemeItems.Clear;
  ANameList := TStringList.Create;
  try
    if ASchemes <> nil then
      ASchemes.PopulateNames(ANameList);
    if (GetSkinResFileName <> '') and
      (nbMain.View in  [dxNavBarSkinExplorerBarView, dxNavBarSkinNavigatorPaneView, dxNavBarAccordionView, dxNavBarHamburgerMenu]) then
      dxSkinsUserSkinPopulateSkinNames(GetSkinResFileName, ANameList);
    if (ASchemes <> nil) and (ANameList.Count > 1) and
      not (nbMain.View in [dxNavBarSkinExplorerBarView, dxNavBarSkinNavigatorPaneView, dxNavBarAccordionView, dxNavBarHamburgerMenu]) then
    begin
      ASelectedIndex := 0;
      for I := 0 to ANameList.Count - 1 do
      begin
        miColorScheme.Properties.Items.Add(ANameList[I]);
        FColorSchemeItems.Add(ANameList[I]);
        if SameText(ANameList[I], sdxFirstSelectedSkinName) then
          ASelectedIndex := I;
      end;
      miColorScheme.Enabled := True;
      miColorScheme.ItemIndex := ASelectedIndex;
    end
    else
    begin
      miColorScheme.Enabled := False;
      nbMain.LookAndFeel.NativeStyle := False;
      case nbMain.View of
        dxNavBarXPExplorerBarView, dxNavBarVistaExplorerBarView,
        dxNavBarAdvExplorerBarView, dxNavBarXP1View, dxNavBarXP2View:
          begin
            nbMain.LookAndFeel.NativeStyle := True;
          end;
        dxNavBarBaseView:
          begin
            nbMain.LookAndFeel.Kind := lfStandard;
          end;
        dxNavBarExplorerBarView, dxNavBarUltraFlatExplorerView:
          begin
            nbMain.LookAndFeel.Kind := lfUltraFlat;
          end;
        dxNavBarFlatView, dxNavBarOffice1View, dxNavBarOffice2View,
        dxNavBarOffice3View, dxNavBarVSToolBoxView:
          begin
            nbMain.LookAndFeel.Kind := lfFlat;
          end;
        dxNavBarOffice11NavigatorPaneView, dxNavBarOffice11TaskPaneView,
        dxNavBarOffice11ExplorerBarView:
          begin
            nbMain.LookAndFeel.Kind := lfOffice11;
          end;
      end;
    end;
  finally
    ANameList.Free;
  end;
end;

procedure TdxNavBarControlDemoUnitForm2.eGCaptionPropertiesChange(
  Sender: TObject);
begin
  if CurrentGroup <> nil then
  begin
    CurrentGroup.Caption := eGCaption.Text;
    tvNavBar.Selected.Caption := CurrentGroup.Caption;
  end;
end;

procedure TdxNavBarControlDemoUnitForm2.eICaptionPropertiesChange(
  Sender: TObject);
var
  I: Integer;
begin
  if CurrentItem <> nil then
  begin
    CurrentItem.Caption := eICaption.Text;
    for I := 0 to tvNavBar.Items.Count - 1 do
      if (TObject(tvNavBar.Items[I].Data) is TdxNavBarItemLink) and
        (TdxNavBarItemLink(tvNavBar.Items[I].Data).Item = CurrentItem) then
        begin
          tvNavBar.Items[I].Caption := CurrentItem.Caption;
          Break;
        end;
  end;
end;

procedure TdxNavBarControlDemoUnitForm2.FormActivate(Sender: TObject);
begin
  UpdateGroupProperties;
  UpdateItemProperties;
end;

procedure TdxNavBarControlDemoUnitForm2.FormCreate(Sender: TObject);

  procedure AddImageComboBoxItem(ACombo: TcxImageComboBox; AIndex: Integer);
  var
    AImageComboItem: TcxImageComboBoxItem;
  begin
    AImageComboItem := ACombo.Properties.Items.Add;
    AImageComboItem.ImageIndex := AIndex;
    AImageComboItem.Value := AIndex;
    AImageComboItem.Description := IntToStr(AIndex);
  end;

  procedure InitImageIndexComboBoxes;
  var
    I: Integer;
  begin
    for I := 0 to imgSmall.Count - 1 do
    begin
      AddImageComboBoxItem(cbGSmallImageIndex, I);
      AddImageComboBoxItem(cbISmallImageIndex, I);
    end;
    for I := 0 to imgLarge.Count - 1 do
    begin
      AddImageComboBoxItem(cbGLargeImageIndex, I);
      AddImageComboBoxItem(cbILargeImageIndex, I);
    end;
  end;

var
  I: Integer;
begin
  lgProperties.TabbedOptions.HideTabs := True;

  FColorSchemeItems := TStringList.Create;
  for I := 0 to dxNavBarViewsFactory.Count - 1 do
    miStyle.Properties.Items.Add(dxNavBarViewsFactory.Names[I]);
  miStyle.ItemIndex := dxNavBarViewsFactory.IndexOfID(nbMain.View);

  actShowCaptions.Checked := nbMain.ShowGroupCaptions;
  actAllowSelectLinks.Checked := nbMain.AllowSelectLinks;
  actEachGroupHasSelectedLink.Checked := nbMain.EachGroupHasSelectedLink;
  actShowGroupHints.Checked := nbMain.ShowGroupsHint;
  actShowLinkHints.Checked := nbMain.ShowLinksHint;

  InitImageIndexComboBoxes;
  UpdateTreeView;
  SelectDefaultGroup;
  UpdateGroupProperties;
  UpdateItemProperties;
  UpdateItemsDropDownMenu;
end;

procedure TdxNavBarControlDemoUnitForm2.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FColorSchemeItems);
end;

function TdxNavBarControlDemoUnitForm2.GetBarManager: TdxBarManager;
begin
  Result := dxBarManager1;
end;

function TdxNavBarControlDemoUnitForm2.GetCurrentGroup: TdxNavBarGroup;
begin
  if tvNavBar.Selected <> nil then
  begin
    if TObject(tvNavBar.Selected.Data) is TdxNavBarGroup then
      Result := TdxNavBarGroup(tvNavBar.Selected.Data)
    else Result := TdxNavBarGroup(tvNavBar.Selected.Parent.Data);
  end
  else Result := nil;
end;

function TdxNavBarControlDemoUnitForm2.GetCurrentItem: TdxNavBarItem;
begin
  if CurrentLink <> nil then
    Result := CurrentLink.Item
  else Result := nil;
end;

function TdxNavBarControlDemoUnitForm2.GetCurrentLink: TdxNavBarItemLink;
begin
  if tvNavBar.Selected <> nil then
  begin
    if TObject(tvNavBar.Selected.Data) is TdxNavBarGroup then
      Result := nil
    else Result := TdxNavBarItemLink(tvNavBar.Selected.Data);
  end
  else Result := nil;
end;

class function TdxNavBarControlDemoUnitForm2.GetID: Integer;
begin
  Result := 1;
end;

class function TdxNavBarControlDemoUnitForm2.GetLoadingInfo: string;
begin
  Result := 'Views Demo';
end;

function TdxNavBarControlDemoUnitForm2.HasOptions: Boolean;
begin
  Result := True;
end;

function TdxNavBarControlDemoUnitForm2.GetNavBarControl: TdxNavBar;
begin
  Result := nbMain;
end;

function TdxNavBarControlDemoUnitForm2.GetDescription: string;
begin
  Result := 'Select a TreeView item to change the properties of the corresponding group or item.';
end;

procedure TdxNavBarControlDemoUnitForm2.miColorSchemePropertiesChange(Sender: TObject);
var
  ASchemes: IdxNavBarColorSchemes;
  ANameList: TStringList;
begin
  ASchemes := GetNavBarColorSchemes(nbMain.Painter);
  ANameList := TStringList.Create;
  try
    if nbMain.View in [dxNavBarSkinExplorerBarView, dxNavBarSkinNavigatorPaneView, dxNavBarAccordionView] then
    begin
      nbMain.LookAndFeel.NativeStyle := False;
      dxSkinsUserSkinLoadFromFile(GetSkinResFileName, miColorScheme.Text);
      nbMain.LookAndFeel.SkinName := sdxSkinsUserSkinName;
    end
    else
    begin
      ASchemes.PopulateNames(ANameList);
      ASchemes.SetName(ANameList[miColorScheme.ItemIndex]);
      nbMain.LookAndFeel.NativeStyle := True;
    end;
  finally
    ANameList.Free;
  end;
end;

procedure TdxNavBarControlDemoUnitForm2.miStyleNewPropertiesChange(Sender: TObject);
begin
  nbMain.View := dxNavBarViewsFactory.IDs[miStyle.ItemIndex];
  CheckColorScheme;
end;

procedure TdxNavBarControlDemoUnitForm2.NavBarItemClick(Sender: TObject);
var
  I: Integer;
begin
  for I := 0 to tvNavBar.Items.Count - 1 do
    if tvNavBar.Items[I].Data = Sender then
    begin
      tvNavBar.Items[I].Selected := True;
      Break;
    end
    else
      if (TObject(tvNavBar.Items[I].Data) is TdxNavBarItemLink) and
        (TdxNavBarItemLink(tvNavBar.Items[I].Data).Item = Sender) and
        (tvNavBar.Items[I].Data = nbMain.PressedLink) then
      begin
        tvNavBar.Items[I].Selected := True;
        Break;
      end;
end;

procedure TdxNavBarControlDemoUnitForm2.nbMainActiveGroupChanged(
  Sender: TObject);
begin
  NavBarItemClick(nbMain.ActiveGroup);
end;

procedure TdxNavBarControlDemoUnitForm2.nbMainEndDrag(Sender, Target: TObject;
  X, Y: Integer);
begin
  UpdateTreeView;
end;

procedure TdxNavBarControlDemoUnitForm2.nbMainLinkClick(Sender: TObject;
  ALink: TdxNavBarItemLink);
begin
  NavBarItemClick(ALink);
end;

procedure TdxNavBarControlDemoUnitForm2.pmnuItemClick(Sender: TObject);
var
  AItem: TdxNavBarItem;
  ALink: TdxNavBarItemLink;
  ANode: TdxTreeViewNode;
begin
  if CurrentGroup <> nil then
  begin
    AItem := nbMain.Items[TdxBarItem(Sender).Tag];
    ALink := CurrentGroup.CreateLink(AItem);
    if TObject(tvNavBar.Selected.Data) is TdxNavBarGroup then
      ANode := tvNavBar.Selected
    else ANode := tvNavBar.Selected.Parent;
    ANode := tvNavBar.Items.AddChildObject(ANode, AItem.Caption, ALink);
    SetNodeImageIndex(ANode, AItem.SmallImageIndex);
    ANode.Selected := True;
    tvNavBar.FullExpand;
  end;
end;

procedure TdxNavBarControlDemoUnitForm2.SelectDefaultGroup;
begin
  if tvNavBar.Items.Count > 0 then
    tvNavBar.Selected := tvNavBar.Items.Item[0];
end;

procedure TdxNavBarControlDemoUnitForm2.SetNodeImageIndex(ANode: TdxTreeViewNode;
  AImageIndex: Integer);
begin
  ANode.ImageIndex := AImageIndex;
  ANode.StateImageIndex := AImageIndex;
  ANode.SelectedImageIndex := AImageIndex;
end;

procedure TdxNavBarControlDemoUnitForm2.tvNavBarSelectionChanged(Sender: TObject);
begin
  UpdateGroupProperties;
  UpdateItemProperties;
  if tvNavBar.Selected = nil then
    Exit;

  if tvNavBar.Selected.Level = 0 then
    lgProperties.ItemIndex := 0
  else
    lgProperties.ItemIndex := 1;
end;

procedure TdxNavBarControlDemoUnitForm2.UpdateGroupProperties;
begin
  if CurrentGroup <> nil then
  begin
    eGCaption.Text := CurrentGroup.Caption;
    cbGExpanded.Checked := CurrentGroup.Expanded;
    cbGVisible.Checked := CurrentGroup.Visible;
    cbGLinkUseSmallImages.Checked := CurrentGroup.LinksUseSmallImages;
    cbGUseSmallImages.Checked := CurrentGroup.UseSmallImages;
    cbGShowAsIconView.Checked := CurrentGroup.ShowAsIconView;
    cbGSmallImageIndex.ItemIndex := CurrentGroup.SmallImageIndex;
    cbGLargeImageIndex.ItemIndex := CurrentGroup.LargeImageIndex;
  end;
  UpdateGroupPropertiesState
end;

procedure TdxNavBarControlDemoUnitForm2.UpdateGroupPropertiesState;
begin
  btDeleteGroup.Enabled := CurrentGroup <> nil;
  eGCaption.Enabled := CurrentGroup <> nil;
  if not eGCaption.Enabled then
    eGCaption.Text := '';
  cbGExpanded.Enabled := CurrentGroup <> nil;
  if not cbGExpanded.Enabled then
    cbGExpanded.Checked := False;
  cbGVisible.Enabled := CurrentGroup <> nil;
  if not cbGVisible.Enabled then
    cbGVisible.Checked := False;
  cbGLinkUseSmallImages.Enabled := CurrentGroup <> nil;
  if not cbGLinkUseSmallImages.Enabled then
    cbGLinkUseSmallImages.Checked := False;
  cbGUseSmallImages.Enabled := CurrentGroup <> nil;
  if not cbGUseSmallImages.Enabled then
    cbGUseSmallImages.Checked := False;
  cbGShowAsIconView.Enabled := CurrentGroup <> nil;
  if not cbGShowAsIconView.Enabled then
    cbGShowAsIconView.Checked := False;
end;

procedure TdxNavBarControlDemoUnitForm2.UpdateItemProperties;
begin
  if CurrentItem <> nil then
  begin
    eICaption.Text := CurrentItem.Caption;
    cbIEnabled.Checked := CurrentItem.Enabled;
    cbIVisible.Checked := CurrentItem.Visible;
    cbISmallImageIndex.ItemIndex := CurrentItem.SmallImageIndex;
    cbILargeImageIndex.ItemIndex := CurrentItem.LargeImageIndex;
  end;
  UpdateItemPropertiesState;
end;

procedure TdxNavBarControlDemoUnitForm2.UpdateItemPropertiesState;
begin
  btAddLink.Enabled := CurrentGroup <> nil;
  btDeleteLink.Enabled := CurrentLink <> nil;
  eICaption.Enabled := CurrentLink <> nil;
  if not eICaption.Enabled then
    eICaption.Text := '';
  cbIEnabled.Enabled := CurrentLink <> nil;
  if not cbIEnabled.Enabled then
    cbIEnabled.Checked := False;
  cbIVisible.Enabled := CurrentLink <> nil;
  if not cbIVisible.Enabled then
    cbIVisible.Checked := False;
end;

procedure TdxNavBarControlDemoUnitForm2.UpdateItemsDropDownMenu;
var
  I: Integer;
begin
  for I := 0 to nbMain.Items.Count - 1 do
    AddButton(pmnuItems.ItemLinks, nbMain.Items[I].Caption,
      nbMain.Items[I].SmallImageIndex, False, 0, pmnuItemClick);
end;

procedure TdxNavBarControlDemoUnitForm2.UpdateTreeView;
var
  ANode, AChildNode: TdxTreeViewNode;
  I, J: Integer;
begin
  tvNavBar.Items.BeginUpdate;
  try
    tvNavBar.Items.Clear;
    tvNavBar.Images := nbMain.SmallImages;
    for I := 0 to nbMain.Groups.Count - 1 do
    begin
      ANode := tvNavBar.Items.AddObject(nil, nbMain.Groups[I].Caption, nbMain.Groups[I]);
      SetNodeImageIndex(ANode, nbMain.Groups[I].SmallImageIndex);
      for J := 0 to nbMain.Groups[I].LinkCount - 1 do
        if nbMain.Groups[I].Links[J].Item <> nil then
        begin
          AChildNode := tvNavBar.Items.AddChildObject(ANode,
            nbMain.Groups[I].Links[J].Item.Caption, nbMain.Groups[I].Links[J]);
          SetNodeImageIndex(AChildNode, nbMain.Groups[I].Links[J].Item.SmallImageIndex);
        end;
    end;
    tvNavBar.FullExpand;
  finally
    tvNavBar.Items.EndUpdate;
  end;
end;

initialization
  TdxNavBarControlDemoUnitForm2.Register;

end.

