unit DockingMegaDemoMain;

{$I cxVer.inc}

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, dxDockPanel, Vcl.Menus, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.ImgList, Vcl.Clipbrd, dxBar, Vcl.ActnList, dxDockControl, Vcl.StdActns, dxBarExtItems, cxClasses, cxLookAndFeels,
  dxSkinsForm, dxSkinsCore, dxSkinsdxDockControlPainter, dxSkinsdxBarPainter, dxBarSkinnedCustForm, cxGraphics, cxMemo,
  cxControls, cxLookAndFeelPainters, cxContainer, cxEdit, cxGroupBox, cxLabel, cxTextEdit, dxTreeView, cxListView, cxPC,
  dxSkinsdxNavBarPainter, dxNavBarCollns, dxNavBarBase, dxNavBar, cxButtons, cxCheckBox, cxMaskEdit, cxDropDownEdit,
  cxScrollBox, dxForms, cxImage, cxImageList, dxGDIPlusClasses, cxStyles, cxInplaceContainer, cxVGrid, cxOI,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxBarEditItem, cxRichEdit, dxLayoutContainer,
  dxLayoutControl, cxFilter, dxScrollbarAnnotations, dxCore, dxLayoutLookAndFeels;

const
  sdxLayoutSuffix = '.layout';
  sdxMessage = 'The "%s" command has been executed';

type
  TDockingMegaDemoMainForm = class(TdxForm)
    actEditCopy: TEditCopy;
    actEditCut: TEditCut;
    actEditPaste: TEditPaste;
    actEditSelectAll: TEditSelectAll;
    actEditUndo: TEditUndo;
    ActionList: TActionList;
    BarManager: TdxBarManager;
    BarPopupMenu: TdxBarPopupMenu;
    bbCallstack: TdxBarButton;
    bbClose: TdxBarButton;
    bbNew: TdxBarButton;
    bbOpen: TdxBarButton;
    bbOpenProject: TdxBarButton;
    bbOpenSingle: TdxBarButton;
    bbPause: TdxBarButton;
    bbPrint: TdxBarButton;
    bbRun: TdxBarButton;
    bbRunUntilReturn: TdxBarButton;
    bbSave: TdxBarButton;
    bbSaveAll: TdxBarButton;
    bbSaveAs: TdxBarButton;
    bbSaveLayout: TdxBarButton;
    bbShowMessages: TdxBarButton;
    bbShowObjectInspector: TdxBarButton;
    bbShowProjectManager: TdxBarButton;
    bbShowStructure: TdxBarButton;
    bbShowToolPalette: TdxBarButton;
    bbShowWatches: TdxBarButton;
    bbStepOver: TdxBarButton;
    bbStop: TdxBarButton;
    bbTraceInto: TdxBarButton;
    bbUndo: TdxBarButton;
    bgDX: TdxNavBarGroup;
    bgStandard: TdxNavBarGroup;
    bgSystem: TdxNavBarGroup;
    bgTemp: TdxNavBarGroup;
    biBarCode: TdxNavBarItem;
    biBarManager: TdxNavBarItem;
    biButton: TdxNavBarItem;
    biCheckBox: TdxNavBarItem;
    biEdit: TdxNavBarItem;
    biGauge: TdxNavBarItem;
    biGrid: TdxNavBarItem;
    biGroupBox: TdxNavBarItem;
    biImage: TdxNavBarItem;
    biLabel: TdxNavBarItem;
    biLayout: TdxNavBarItem;
    biMainMenu: TdxNavBarItem;
    biMap: TdxNavBarItem;
    biNavBar: TdxNavBarItem;
    biPanel: TdxNavBarItem;
    biPDFViewer: TdxNavBarItem;
    biPivot: TdxNavBarItem;
    biRadioButton: TdxNavBarItem;
    biTile: TdxNavBarItem;
    biTimer: TdxNavBarItem;
    biTreeList: TdxNavBarItem;
    bliRecentFiles: TdxBarListItem;
    bliRecentProjects: TdxBarListItem;
    bsiDebugWindows: TdxBarSubItem;
    cbObjects: TcxComboBox;
    cxRTTIInspector1: TcxRTTIInspector;
    DockingManager: TdxDockingManager;
    dpCallStack: TdxDockPanel;
    dpOutput: TdxDockPanel;
    dpProjectManager: TdxDockPanel;
    dpProperties: TdxDockPanel;
    dpStartPage: TdxDockPanel;
    dpStructure: TdxDockPanel;
    dpToolbox: TdxDockPanel;
    dpUnit1: TdxDockPanel;
    dpWatch: TdxDockPanel;
    dsHost: TdxDockSite;
    dxBarButton1: TdxBarLargeButton;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    dxBarButton2: TdxBarLargeButton;
    dxBarButton3: TdxBarLargeButton;
    dxBarButton4: TdxBarLargeButton;
    dxBarButton5: TdxBarLargeButton;
    dxBarButton6: TdxBarLargeButton;
    dxBarButton7: TdxBarLargeButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButtonAutoHide: TdxBarButton;
    dxBarButtonDockable: TdxBarButton;
    dxBarButtonExit: TdxBarLargeButton;
    dxBarButtonFloating: TdxBarButton;
    dxBarButtonHide: TdxBarButton;
    dxBarDockStyle: TdxBarSubItem;
    dxBarDockStyleStandard: TdxBarButton;
    dxBarDockStyleVS2005: TdxBarButton;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarSubItemFile: TdxBarSubItem;
    dxBarSubItemInsert: TdxBarSubItem;
    dxBarSubItemWindow: TdxBarSubItem;
    dxbDebug: TdxBar;
    dxbDesktop: TdxBar;
    dxLayoutDockSite1: TdxLayoutDockSite;
    dxLayoutDockSite2: TdxLayoutDockSite;
    dxLayoutDockSite3: TdxLayoutDockSite;
    dxLayoutDockSite5: TdxLayoutDockSite;
    dxNavBar1: TdxNavBar;
    dxTabContainerDockSite1: TdxTabContainerDockSite;
    dxTabContainerDockSite2: TdxTabContainerDockSite;
    dxVertContainerDockSite1: TdxVertContainerDockSite;
    dxVertContainerDockSite2: TdxVertContainerDockSite;
    edtDesktopPresets: TcxBarEditItem;
    iComponentsIcons: TcxImageList;
    ilDockIcons: TcxImageList;
    ilProjectManager: TcxImageList;
    ilStructure: TcxImageList;
    imBarIcons: TcxImageList;
    lvCallStack: TcxListView;
    lvWatches: TcxListView;
    meMessages: TcxMemo;
    pmRecentProjects: TdxBarPopupMenu;
    reUnit1: TcxRichEdit;
    reWelcome: TcxRichEdit;
    siEdit: TdxBarSubItem;
    siHelp: TdxBarSubItem;
    siReopen: TdxBarSubItem;
    siRun: TdxBarSubItem;
    siStyles: TdxBarSubItem;
    SkinController: TdxSkinController;
    tvProjectManager: TdxTreeViewControl;
    tvStructure: TdxTreeViewControl;
    bbLoadLayout: TdxBarButton;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    lliDescription: TdxLayoutLabeledItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutCxLookAndFeel1: TdxLayoutCxLookAndFeel;

    procedure bbCallstackClick(Sender: TObject);
    procedure bbSaveLayoutClick(Sender: TObject);
    procedure bbShowMessagesClick(Sender: TObject);
    procedure bbShowObjectInspectorClick(Sender: TObject);
    procedure bbShowProjectManagerClick(Sender: TObject);
    procedure bbShowStructureClick(Sender: TObject);
    procedure bbShowToolPaletteClick(Sender: TObject);
    procedure bbShowWatchesClick(Sender: TObject);
    procedure cbObjectsPropertiesChange(Sender: TObject);
    procedure DockingManagerLayoutChanged(Sender: TdxCustomDockControl);
    procedure dpContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
    procedure dxBarButtonAutoHideClick(Sender: TObject);
    procedure dxBarButtonDockableClick(Sender: TObject);
    procedure dxBarButtonExitClick(Sender: TObject);
    procedure dxBarButtonFloatingClick(Sender: TObject);
    procedure dxBarButtonHideClick(Sender: TObject);
    procedure dxBarDockStyleStandardClick(Sender: TObject);
    procedure edtDesktopPresetsChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure LogActionHandler(Sender: TObject);
    procedure tvStructureSelectionChanged(Sender: TObject);
    procedure tvProjectManagerCustomDrawNode(Sender: TdxCustomTreeView;
      ACanvas: TcxCanvas; ANodeViewInfo: TdxTreeViewNodeViewInfo;
      var AHandled: Boolean);
  private
    FPopupMenuDockControl: TdxCustomDockControl;
    FUpdatingSelection: Boolean;

    function GetLayoutFileName: string;
    function GetSelectedObject: TPersistent;
    procedure SetEnableState(AContainer: TWinControl; AValue: Boolean);
    procedure SetSelectedObject(const Value: TPersistent);
  private
    procedure ShowAndActivateDockPanel(APanel: TdxDockPanel);
    procedure PopulateLayouts;
    procedure UpdateObjectListSelection;
    procedure UpdateStructureView;
    procedure UpdateStructureViewSelection;
  protected
    property SelectedObject: TPersistent read GetSelectedObject write SetSelectedObject;
  end;

var
  DockingMegaDemoMainForm: TDockingMegaDemoMainForm;

implementation

uses dxDemoUtils, System.Variants;

type
  TdxTreeViewNodeViewInfoAccess = class(TdxTreeViewNodeViewInfo);
  TdxCustomTreeViewAccess = class(TdxCustomTreeView);

{$R *.dfm}

{ TDockingMegaDemoMainForm }

procedure TDockingMegaDemoMainForm.ShowAndActivateDockPanel(APanel: TdxDockPanel);
begin
  if APanel <> nil then
  begin
    if not APanel.Visible then
      APanel.Visible := True;
    dxDockingController.ActiveDockControl := APanel;
  end;
end;

procedure TDockingMegaDemoMainForm.UpdateObjectListSelection;
begin
  cbObjects.ItemIndex := cbObjects.Properties.Items.IndexOfObject(SelectedObject);
end;

procedure TDockingMegaDemoMainForm.UpdateStructureView;

  function AddComponent(AComponent: TComponent; ANode: TdxTreeViewNode): TdxTreeViewNode;
  var
    ANodeName: string;
  begin
    if AComponent.Name <> '' then
      ANodeName := AComponent.Name
    else
      ANodeName := AComponent.ClassName;

    cbObjects.Properties.Items.AddObject(ANodeName, AComponent);

    Result := tvStructure.Items.AddChildObject(ANode, ANodeName, AComponent);
    Result.ImageIndex := Ord(AComponent is TControl);
    Result.SelectedImageIndex := Result.ImageIndex;
  end;

  procedure AddSite(AControl: TdxCustomDockControl; ANode: TdxTreeViewNode);
  var
    AChild: TdxTreeViewNode;
    I: Integer;
  begin
    AChild := AddComponent(AControl, ANode);
    for I := 0 to AControl.ChildCount - 1 do
      AddSite(AControl.Children[I], AChild);
  end;

begin
  if not tvStructure.HandleAllocated then
    Exit;

  cbObjects.Properties.Items.BeginUpdate;
  tvStructure.Items.BeginUpdate;
  try
    cbObjects.Properties.Items.Clear;
    tvStructure.Items.Clear;

    AddComponent(DockingManager, nil);
    AddSite(dsHost, nil);
    tvStructure.FullExpand;
  finally
    tvStructure.Items.EndUpdate;
    cbObjects.Properties.Items.EndUpdate;
  end;

  UpdateStructureViewSelection;
  UpdateObjectListSelection;
end;

procedure TDockingMegaDemoMainForm.UpdateStructureViewSelection;
var
  I: Integer;
begin
  tvStructure.Selected := nil;
  for I := 0 to tvStructure.Items.Count - 1 do
  begin
    if tvStructure.Items[I].Data = SelectedObject then
      tvStructure.Selected := tvStructure.Items[I];
  end;
end;

procedure TDockingMegaDemoMainForm.dxBarButtonExitClick(Sender: TObject);
begin
  Close;
end;

procedure TDockingMegaDemoMainForm.dxBarDockStyleStandardClick(Sender: TObject);
begin
  if dxBarDockStyleVS2005.Down then
  begin
    DockingManager.DockStyle := dsVS2005;
    DockingManager.Options := DockingManager.Options + [doFillDockingSelection];
  end
  else
  begin
    DockingManager.DockStyle := dsStandard;
    DockingManager.Options := DockingManager.Options - [doFillDockingSelection];
  end;
end;

procedure TDockingMegaDemoMainForm.edtDesktopPresetsChange(Sender: TObject);
begin
  if FileExists(GetLayoutFileName) then
    dxDockingController.LoadLayoutFromIniFile(GetLayoutFileName);
end;

function TDockingMegaDemoMainForm.GetLayoutFileName: string;
begin
  if VarIsNull(edtDesktopPresets.EditValue) then
    Result := 'None'
  else
    Result := edtDesktopPresets.EditValue;

  Result := ExtractFilePath(Application.ExeName) + Result + sdxLayoutSuffix;
end;

function TDockingMegaDemoMainForm.GetSelectedObject: TPersistent;
begin
  Result := cxRTTIInspector1.InspectedObject;
end;

procedure TDockingMegaDemoMainForm.dpContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
var
  pt: TPoint;
  AControl: TdxCustomDockControl;
begin
  GetCursorPos(pt);
  AControl := dxDockingController.GetDockControlAtPos(pt);
  if AControl <> nil then
  begin
    FPopupMenuDockControl := AControl;
    dxBarButtonDockable.Down := FPopupMenuDockControl.Dockable;
    dxBarButtonFloating.Down := FPopupMenuDockControl.FloatDockSite <> nil;
    dxBarButtonAutoHide.Enabled := FPopupMenuDockControl.CanAutoHide;
    dxBarButtonAutoHide.Down := FPopupMenuDockControl.AutoHide;
    BarPopupMenu.PopupFromCursorPos;
    Handled := True;
  end;
end;

procedure TDockingMegaDemoMainForm.dxBarButtonDockableClick(Sender: TObject);
begin
  if FPopupMenuDockControl <> nil then
  begin
    FPopupMenuDockControl.Dockable := (Sender as TdxBarButton).Down;
    FPopupMenuDockControl := nil;
  end;
end;

procedure TDockingMegaDemoMainForm.dxBarButtonHideClick(Sender: TObject);
begin
  if FPopupMenuDockControl <> nil then
  begin
    FPopupMenuDockControl.Visible := False;
    FPopupMenuDockControl := nil;
  end;
end;

procedure TDockingMegaDemoMainForm.dxBarButtonFloatingClick(Sender: TObject);
var
  pt: TPoint;
begin
  if (FPopupMenuDockControl <> nil) and (FPopupMenuDockControl.DockState <> dsFloating) then
  begin
    GetCursorPos(pt);
    FPopupMenuDockControl.MakeFloating(pt.X, pt.Y);
    FPopupMenuDockControl := nil;
  end;
end;

procedure TDockingMegaDemoMainForm.dxBarButtonAutoHideClick(Sender: TObject);
begin
  if FPopupMenuDockControl <> nil then
  begin
    FPopupMenuDockControl.AutoHide := (Sender as TdxBarButton).Down;
    FPopupMenuDockControl := nil;
  end;
end;

procedure TDockingMegaDemoMainForm.FormShow(Sender: TObject);
begin
  UpdateStructureView;
  dxNavBar1.MakeGroupVisible(bgDX);
end;

procedure TDockingMegaDemoMainForm.bbCallstackClick(Sender: TObject);
begin
  ShowAndActivateDockPanel(dpCallStack);
end;

procedure TDockingMegaDemoMainForm.LogActionHandler(Sender: TObject);
begin
  meMessages.Lines.Add(Format(sdxMessage, [TdxBarItem(Sender).Caption]));
  ShowAndActivateDockPanel(dpOutput);
end;

procedure TDockingMegaDemoMainForm.PopulateLayouts;
var
  AItems: TStrings;
  ASavedName: Variant;
  SR: TSearchRec;
begin
  AItems := (edtDesktopPresets.Properties as TcxComboBoxProperties).Items;
  AItems.BeginUpdate;
  try
    ASavedName := edtDesktopPresets.EditValue;
    try
      AItems.Clear;
      if FindFirst(ExtractFilePath(Application.ExeName) + '*' + sdxLayoutSuffix, faAnyFile, SR) = 0 then
      try
        repeat
          AItems.Add(Copy(SR.Name, 1, Length(SR.Name) - Length(sdxLayoutSuffix)));
        until FindNext(SR) <> 0;
      finally
        FindClose(SR);
      end;
    finally
      edtDesktopPresets.EditValue := ASavedName;
    end;
  finally
    AItems.EndUpdate;
  end;
end;

procedure TDockingMegaDemoMainForm.bbSaveLayoutClick(Sender: TObject);
begin
  dxDockingController.SaveLayoutToIniFile(GetLayoutFileName);
  PopulateLayouts;
end;

procedure TDockingMegaDemoMainForm.bbShowMessagesClick(Sender: TObject);
begin
  ShowAndActivateDockPanel(dpOutput);
end;

procedure TDockingMegaDemoMainForm.bbShowObjectInspectorClick(Sender: TObject);
begin
  ShowAndActivateDockPanel(dpProperties);
end;

procedure TDockingMegaDemoMainForm.bbShowProjectManagerClick(Sender: TObject);
begin
  ShowAndActivateDockPanel(dpProjectManager);
end;

procedure TDockingMegaDemoMainForm.bbShowStructureClick(Sender: TObject);
begin
  ShowAndActivateDockPanel(dpStructure);
end;

procedure TDockingMegaDemoMainForm.bbShowToolPaletteClick(Sender: TObject);
begin
  ShowAndActivateDockPanel(dpToolbox);
end;

procedure TDockingMegaDemoMainForm.bbShowWatchesClick(Sender: TObject);
begin
  ShowAndActivateDockPanel(dpWatch);
end;

procedure TDockingMegaDemoMainForm.cbObjectsPropertiesChange(Sender: TObject);
begin
  SelectedObject := cbObjects.ItemObject as TPersistent;
end;

procedure TDockingMegaDemoMainForm.DockingManagerLayoutChanged(Sender: TdxCustomDockControl);
begin
  UpdateStructureView;
end;

procedure TDockingMegaDemoMainForm.SetSelectedObject(const Value: TPersistent);
begin
  if not FUpdatingSelection then
  begin
    FUpdatingSelection := True;
    try
      cxRTTIInspector1.InspectedObject := Value;
      UpdateStructureViewSelection;
      UpdateObjectListSelection;
    finally
      FUpdatingSelection := False;
    end;
  end;
end;

procedure TDockingMegaDemoMainForm.SetEnableState(AContainer: TWinControl; AValue: Boolean);
var
  I: Integer;
begin
  for I := 0 to AContainer.ControlCount - 1 do
  begin
    AContainer.Controls[I].Enabled := AValue;
    if AContainer.Controls[I] is TWinControl then
      SetEnableState(TWinControl(AContainer.Controls[I]), AValue);
  end;
end;

procedure TDockingMegaDemoMainForm.tvProjectManagerCustomDrawNode(
  Sender: TdxCustomTreeView; ACanvas: TcxCanvas;
  ANodeViewInfo: TdxTreeViewNodeViewInfo; var AHandled: Boolean);
begin
  if ANodeViewInfo.Node.StateImageIndex = -2 then
  begin
    Sender.Canvas.Font.Style := [fsBold];
    TdxTreeViewNodeViewInfoAccess(ANodeViewInfo).AdjustTextRect(Sender.Canvas.Font);
  end;
end;

procedure TDockingMegaDemoMainForm.tvStructureSelectionChanged(Sender: TObject);
begin
  if TdxCustomTreeViewAccess(tvStructure).IsUpdateLocked then
    Exit;
  if tvStructure.Selected <> nil then
    SelectedObject := tvStructure.Selected.Data
  else
    SelectedObject := DockingManager;
end;

procedure TDockingMegaDemoMainForm.FormCreate(Sender: TObject);

  procedure LoadDocument(ARichEdit: TcxRichEdit; AFileName: string);
  begin
    AFileName := ExtractFilePath(Application.ExeName) + AFileName;
    if FileExists(AFileName) then
      ARichEdit.Lines.LoadFromFile(AFileName)
    else
      ARichEdit.Lines.Clear;
  end;

begin
  dpStartPage.OnContextPopup := dpContextPopup;
  dpProperties.OnContextPopup := dpContextPopup;
  dpProjectManager.OnContextPopup := dpContextPopup;
  dpStructure.OnContextPopup := dpContextPopup;
  dpOutput.OnContextPopup := dpContextPopup;
  dpCallStack.OnContextPopup := dpContextPopup;
  dpWatch.OnContextPopup := dpContextPopup;
  dpToolbox.OnContextPopup := dpContextPopup;

  CreateSkinsMenuItems(BarManager, siStyles, SkinController, dxNavBar1);
  CreateHelpMenuItems(BarManager, siHelp);

  PopulateLayouts;

  tvProjectManager.FullExpand;

  LoadDocument(reUnit1, 'Unit1.rtf');
  LoadDocument(reWelcome, 'Welcome.rtf');
end;

initialization
  dxMegaDemoProductIndex := dxDockingIndex;
  TdxVisualRefinements.LightBorders := True;
end.
