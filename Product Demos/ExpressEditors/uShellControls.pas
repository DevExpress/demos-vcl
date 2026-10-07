unit uShellControls;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls, Winapi.ShlObj, Winapi.ShellAPI,
  dxCore, cxGeometry, cxShellCommon, Vcl.Menus, dxLayoutContainer, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, dxLayoutLookAndFeels, cxClasses,
  Vcl.ImgList, cxImageList, System.Actions, Vcl.ActnList, dxBreadcrumbEdit, dxShellFilePreview,
  dxShellBreadcrumbEdit, Vcl.StdCtrls, cxButtons, dxTreeView, dxShellControls,
  dxListView, cxLabel, Vcl.ExtCtrls, cxGroupBox, dxLayoutControl, dxCustomDemoFrameUnit,
  dxUIAdorners;

type
  TfrmShellControls = class(TdxCustomDemoFrame)
    pbSelectedItemIcon: TPaintBox;
    lvFiles: TdxShellListView;
    tvFolders: TdxShellTreeView;
    btnViews: TcxButton;
    btnFilePreview: TcxButton;
    bceAddressBar: TdxShellBreadcrumbEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    lgBreadCrumbs: TdxLayoutGroup;
    lgFolders: TdxLayoutGroup;
    lgInfo: TdxLayoutGroup;
    liAddressBarContainer: TdxLayoutItem;
    liShellTreeView: TdxLayoutItem;
    liFolderSplitterItem: TdxLayoutSplitterItem;
    liShellListView: TdxLayoutItem;
    liPreviewPaneSplitter: TdxLayoutSplitterItem;
    liPreviewPane: TdxLayoutItem;
    libtnViews: TdxLayoutItem;
    libtnFilePreview: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    libtnNewFolder: TdxLayoutItem;
    dxLayoutItem1: TdxLayoutItem;
    acRefresh: TAction;
    acBrowseParent: TAction;
    acAbout: TAction;
    acNewFolder: TAction;
    ilImages: TcxImageList;
    edStyleController: TcxEditStyleController;
    ilViews: TcxImageList;
    alViews: TActionList;
    actExtraLarge: TAction;
    actLarge: TAction;
    actMedium: TAction;
    actSmall: TAction;
    actList: TAction;
    actDetails: TAction;
    pmViews: TPopupMenu;
    pmiExtraLargeIcons: TMenuItem;
    pmiLargeIcons: TMenuItem;
    pmiMediumIcons: TMenuItem;
    pmiSmallIcons: TMenuItem;
    pmSeparator1: TMenuItem;
    pmiList: TMenuItem;
    pmSeparator2: TMenuItem;
    pmiDetails: TMenuItem;
    pmSeparator3: TMenuItem;
    pmiTiles: TMenuItem;
    pmSeparator4: TMenuItem;
    pmiContent: TMenuItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    pmLayout: TPopupMenu;
    Detailspane1: TMenuItem;
    Navigationpane1: TMenuItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    lbName: TdxLayoutLabeledItem;
    lbInfo: TdxLayoutLabeledItem;
    dxLayoutSkinLookAndFeel2: TdxLayoutSkinLookAndFeel;
    procedure acBrowseParentExecute(Sender: TObject);
    procedure acNewFolderExecute(Sender: TObject);
    procedure acRefreshExecute(Sender: TObject);
    procedure btnFilePreviewClick(Sender: TObject);
    procedure btnViewsClick(Sender: TObject);
    procedure DoButtonCustomDraw(Sender: TObject; ACanvas: TcxCanvas; AViewInfo:
        TcxButtonViewInfo; var AHandled: Boolean);
    procedure Detailspane1Click(Sender: TObject);
    procedure DoViewClick(Sender: TObject);
    procedure lvFilesAfterNavigation(Sender: TdxCustomShellListView; APIDL:
        PItemIDList; ADisplayName: string);
    procedure lvFilesItemsPopulated(Sender: TObject);
    procedure lvFilesSelectionChanged(Sender: TObject);
    procedure lvFilesSelectItem(Sender: TdxCustomListView; AItem: TdxListItem;
        ASelected: Boolean);
    procedure Navigationpane1Click(Sender: TObject);
    procedure pbSelectedItemIconPaint(Sender: TObject);
  private
    ShellLargeImages: TImageList;
    PreviewVisible: Boolean;
    FPreviewPane: TdxFilePreviewPane;
    procedure DoViewChanged(Sender: TObject);
    procedure GetLVItemInfoByItemIndex(AIndex: Integer; var AFileInfo: TSHFileInfo);
    procedure InitializeShellLargeImages;
    procedure InitializeShellViewMenu;
    procedure UpdatePreviewFile;
    procedure UpdatePreviewPane;
    procedure UpdateSelectionInfo;
    procedure UpdateViews;
  protected
    function GetDescription: string; override;
  public
    constructor Create(AOwner: TComponent); override;
  end;

var
  frmShellControls: TfrmShellControls;

implementation

uses
  System.Types, Winapi.ActiveX, Winapi.PropSys, dxOffice11, Winapi.CommCtrl, System.RTLConsts, dxCoreClasses, cxDWMApi,
  dxFrames, FrameIDs, uStrsConst;

{$R *.dfm}

const
  SID_INewItemAdvisor = '{24D16EE5-10F5-4DE3-8766-D23779BA7A6D}';
  IID_INewItemAdvisor: TGUID = SID_INewItemAdvisor;

  sdxItemsCount = '%d items';
  sdxItemsSelected = '%d items selected';

  cmdExtraLargeIconId = 1;
  cmdLargeIconId = 2;
  cmdIconId = 3;
  cmdSmallIconId = 4;
  cmdListId = 5;
  cmdDetailId = 6;

type
  TdxShellListViewAccess = class(TdxShellListView);
  TdxShellListViewItemProducerAccess = class(TdxShellListViewItemProducer);
  TcxCustomButtonAccess = class(TcxCustomButton);
  TcxButtonViewInfoAccess = class(TcxButtonViewInfo);
  TcxButtonPainterAccess = class(TcxButtonPainter);

  INewItemAdvisor = interface
    [SID_INewItemAdvisor]
    function IsTypeSupported (const AType: LPCWSTR): HRESULT; stdcall;
    function GetPropertiesToApply (APropertyStore: Winapi.PropSys.IPropertyStore; const iid: TIID; out pv): HRESULT; stdcall;
    function QueryObject (const iid1: TIID; const iid2: TIID; out pv): HRESULT; stdcall;
  end;

procedure GetItemInfo(APidl: PItemIDList; var AFileInfo: TSHFileInfo; ADisposePidl: Boolean = False);
begin
  ZeroMemory(@AFileInfo, SizeOf(AFileInfo));
  cxShellGetThreadSafeFileInfo(PChar(APidl), 0, AFileInfo, SizeOf(AFileInfo),
    SHGFI_PIDL or SHGFI_DISPLAYNAME or SHGFI_TYPENAME or SHGFI_SYSICONINDEX);
  if ADisposePidl then
    DisposePidl(APidl);
end;

constructor TfrmShellControls.Create(AOwner: TComponent);
begin
  InitializeShellLargeImages;
  inherited Create(AOwner);
  FPreviewPane := TdxFilePreviewPane.Create(Self);
  FPreviewPane.Align := alClient;
  PreviewVisible := False;
  if IsWinVistaOrLater and IsXPManifestEnabled then
  begin
    lvFiles.ViewStyle := TdxListViewStyle.Icon;
    lvFiles.ThumbnailOptions.ShowThumbnails := True;
    lvFiles.ThumbnailOptions.Size := cxSize(48, 48);
    lvFiles.ViewStyleReport.RowSelect := True;
    tvFolders.OptionsView.ShowLines := False;
    tvFolders.OptionsBehavior.HotTrack := True;
    tvFolders.OptionsSelection.RowSelect := True;
  end;
  InitializeShellViewMenu;
  tvFolders.Items.Item[0].Expand();
  UpdateSelectionInfo;
  UpdateViews;
  UpdatePreviewPane;
  TdxShellListViewAccess(lvFiles).OnViewChanged := DoViewChanged;
end;

procedure TfrmShellControls.acBrowseParentExecute(Sender: TObject);
begin
  bceAddressBar.BrowseParent;
end;

procedure TfrmShellControls.acNewFolderExecute(Sender: TObject);
begin
  TdxShellListViewAccess(lvFiles).CreateNewFolder;
end;

procedure TfrmShellControls.acRefreshExecute(Sender: TObject);
begin
  bceAddressBar.UpdateContent;
  tvFolders.UpdateContent;
  lvFiles.UpdateContent;
end;

procedure TfrmShellControls.btnFilePreviewClick(Sender: TObject);
begin
  PreviewVisible := not PreviewVisible;
  if PreviewVisible then
    btnFilePreview.OptionsImage.ImageIndex := 8
  else
    btnFilePreview.OptionsImage.ImageIndex := 9;
  UpdatePreviewPane;
end;

procedure TfrmShellControls.btnViewsClick(Sender: TObject);
var
  ACurrentViewId, I: Integer;
begin
  ACurrentViewId := TdxShellListViewAccess(lvFiles).GetCurrentViewId;
  for I := 0 to alViews.ActionCount - 1 do
    if alViews.Actions[I].Tag > ACurrentViewId then
    begin
      alViews.Actions[I].Execute;
      Exit;
    end;
  alViews.Actions[0].Execute;
end;

procedure TfrmShellControls.DoButtonCustomDraw(Sender: TObject; ACanvas:
    TcxCanvas; AViewInfo: TcxButtonViewInfo; var AHandled: Boolean);
begin
  AHandled := AViewInfo.State in [cxbsNormal, cxbsDisabled];
  if AHandled then
  begin
    cxDrawTransparentControlBackground(Sender as TcxButton, ACanvas, AViewInfo.Bounds);
    TcxButtonViewInfoAccess(AViewInfo).DrawContent(ACanvas);
    if AViewInfo.HasDropDownButton and not cxRectIsEmpty(AViewInfo.DropDownArrowRect) and
      (AViewInfo.Painter.LookAndFeelStyle = lfsSkin) then
      AViewInfo.Painter.LookAndFeelPainter.DrawScaledDropDownButtonArrow(ACanvas, AViewInfo.DropDownArrowRect,
        AViewInfo.DropDownButtonState, TcxButtonPainterAccess(AViewInfo.Painter).ScaleFactor);
  end;
end;

procedure TfrmShellControls.Detailspane1Click(Sender: TObject);
begin
  lgInfo.Visible := (Sender as TMenuItem).Checked;
end;

procedure TfrmShellControls.DoViewClick(Sender: TObject);
begin
  TdxShellListViewAccess(lvFiles).ChangeView((Sender as TComponent).Tag);
  UpdateViews;
end;

procedure TfrmShellControls.DoViewChanged(Sender: TObject);
begin
  UpdateViews;
end;

function TfrmShellControls.GetDescription: string;
begin
  Result := sdxFrameShellControlsDescription;
end;

procedure TfrmShellControls.GetLVItemInfoByItemIndex(AIndex: Integer; var
    AFileInfo: TSHFileInfo);
var
  AIdl: PItemIDList;
begin
  AIdl := lvFiles.GetItemAbsolutePIDL(AIndex);
  GetItemInfo(AIdl, AFileInfo);
end;

procedure TfrmShellControls.InitializeShellLargeImages;
var
  AFileInfo: TSHFileInfo;
begin
  ShellLargeImages := TImageList.Create(Self);
  ShellLargeImages.ShareImages := True;
  ShellLargeImages.Handle := SHGetFileInfo('', 0, AFileInfo, SizeOf(AFileInfo), SHGFI_SYSICONINDEX or SHGFI_LARGEICON);
  ImageList_SetBkColor(ShellLargeImages.Handle, CLR_NONE);
end;

procedure TfrmShellControls.InitializeShellViewMenu;
begin
  actExtraLarge.Tag := cmdExtraLargeIconId;
  actLarge.Tag := cmdLargeIconId;
  actMedium.Tag := cmdIconId;
  actSmall.Tag := cmdSmallIconId;
  actList.Tag := cmdListId;
  actDetails.Tag := cmdDetailId;
end;

procedure TfrmShellControls.lvFilesAfterNavigation(Sender:
    TdxCustomShellListView; APIDL: PItemIDList; ADisplayName: string);
var
  AShellItem: IShellItem;
  AAttr: Cardinal;
  ANewItemAdvisor: INewItemAdvisor;
begin
  if IsWinSevenOrLater and Succeeded(SHCreateItemFromIDList(APIDL, IID_IShellItem, AShellItem)) then
  begin
    if Succeeded(AShellItem.BindToHandler(nil, BHID_SFViewObject, IID_INewItemAdvisor, ANewItemAdvisor)) then
      libtnNewFolder.Visible := Succeeded(ANewItemAdvisor.IsTypeSupported(PChar('Folder')))
    else
      if Succeeded(AShellItem.GetAttributes(SFGAO_READONLY or SFGAO_STORAGE, AAttr)) then
        libtnNewFolder.Visible := AAttr and (SFGAO_READONLY or SFGAO_STORAGE) = SFGAO_STORAGE
      else
        libtnNewFolder.Visible := False;
  end
  else
    libtnNewFolder.Visible := lvFiles.Path <> '';
  UpdatePreviewFile;
end;

procedure TfrmShellControls.lvFilesItemsPopulated(Sender: TObject);
begin
  UpdateSelectionInfo;
end;

procedure TfrmShellControls.lvFilesSelectionChanged(Sender: TObject);
begin
  UpdatePreviewFile;
end;

procedure TfrmShellControls.lvFilesSelectItem(Sender: TdxCustomListView; AItem:
    TdxListItem; ASelected: Boolean);
begin
  UpdateSelectionInfo;
end;

procedure TfrmShellControls.Navigationpane1Click(Sender: TObject);
begin
  liShellTreeView.Visible := (Sender as TMenuItem).Checked;
  liFolderSplitterItem.Visible := liShellTreeView.Visible;
end;

procedure TfrmShellControls.pbSelectedItemIconPaint(Sender: TObject);
begin
  ShellLargeImages.Draw(pbSelectedItemIcon.Canvas, 0, 0, pbSelectedItemIcon.Tag);
end;

procedure TfrmShellControls.UpdatePreviewFile;
var
  AFolder: TcxShellFolder;
begin
  if FPreviewPane.Visible then
  begin
    if lvFiles.SelectedItemCount > 0 then
    begin
      AFolder := lvFiles.Folders[lvFiles.SelectedItems[lvFiles.SelectedItemCount - 1].Index];
      if not (AFolder.IsFolder or AFolder.IsZip) and FileExists(AFolder.PathName) then
        FPreviewPane.FileName := AFolder.PathName
      else
        FPreviewPane.FileName := '';
    end
    else
      FPreviewPane.FileName := '';
  end;
end;

procedure TfrmShellControls.UpdatePreviewPane;
begin
  FPreviewPane.Visible := PreviewVisible;
  if PreviewVisible then
  begin
    lcFrame.BeginUpdate;
    try
      liPreviewPane.Control := FPreviewPane;
      liPreviewPaneSplitter.Visible := True;
      liPreviewPane.Visible := True;
      btnFilePreview.Hint := 'Hide the preview pane';
      btnFilePreview.OptionsImage.ImageIndex := 8;
    finally
      lcFrame.EndUpdate;
    end;
    UpdatePreviewFile;
  end
  else
  begin
    lcFrame.BeginUpdate;
    try
      liPreviewPaneSplitter.Visible := False;
      liPreviewPane.Control := nil;
      liPreviewPane.Visible := False;
      btnFilePreview.Hint := 'Show the preview pane';
      btnFilePreview.OptionsImage.ImageIndex := 9;
    finally
      lcFrame.EndUpdate;
    end;
  end;
end;

procedure TfrmShellControls.UpdateSelectionInfo;
var
  AFileInfo: TSHFileInfo;
begin
  if lvFiles.SelectedItemCount = 0 then
  begin
    GetItemInfo(lvFiles.AbsolutePIDL, AFileInfo, True);
    lbName.Caption := AFileInfo.szDisplayName;
    lbInfo.Caption := Format(sdxItemsCount, [lvFiles.Items.Count]);
    pbSelectedItemIcon.Tag := AFileInfo.iIcon;
  end
  else
  begin
    GetLVItemInfoByItemIndex(lvFiles.SelectedItems[0].Index, AFileInfo);
    pbSelectedItemIcon.Tag := AFileInfo.iIcon;

    if lvFiles.SelectedItemCount > 1 then
    begin
      lbName.Caption := Format(sdxItemsSelected, [lvFiles.SelectedItemCount]);
      lbInfo.Caption := '';
    end
    else
    begin
      lbName.Caption := AFileInfo.szDisplayName;
      lbInfo.Caption := AFileInfo.szTypeName;
    end;
  end;
  pbSelectedItemIcon.Invalidate;
end;

procedure TfrmShellControls.UpdateViews;
var
  ACurrentViewId, I: Integer;
begin
  ACurrentViewId := TdxShellListViewAccess(lvFiles).GetCurrentViewId;
  for I := 0 to alViews.ActionCount - 1 do
    if alViews.Actions[I].Tag = ACurrentViewId then
    begin
      TCustomAction(alViews.Actions[I]).Checked := True;
      btnViews.OptionsImage.ImageIndex := TCustomAction(alViews.Actions[I]).ImageIndex;
      Break;
    end;
end;

initialization
  dxFrameManager.RegisterFrame(ShellControlsFrameID, TfrmShellControls, ShellControlsFrameName, -1,
    HighlightedFeatureGroupIndex, -1, -1);
end.
