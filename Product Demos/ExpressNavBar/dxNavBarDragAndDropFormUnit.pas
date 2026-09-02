unit dxNavBarDragAndDropFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ImgList, Vcl.ActnList, Vcl.ComCtrls, Vcl.Menus,
  dxNavBarStyles, dxNavBarCollns, dxNavBarBase, dxNavBar, dxNavBarSkinBasedViews,
  cxClasses, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinsdxNavBarPainter, dxSkinsdxBarPainter, dxBar, cxContainer,
  cxEdit, cxLabel, dxSkinsForm, cxGroupBox, cxPC, cxCheckBox, dxSkinscxPCPainter,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxButtons, cxTreeView, cxImageComboBox,
  System.Contnrs, dxBarSkinnedCustForm, cxPCdxBarPopupMenu, dxBarBuiltInMenu, dxSkinsDefaultPainters,
  dxNavBarControlBaseFormUnit, dxRibbonSkins, dxRibbonCustomizationForm,
  dxRibbon, dxSkinsdxNavBarAccordionViewPainter, dxListView, dxLayoutcxEditAdapters, dxLayoutContainer, dxLayoutControl,
  dxLayoutLookAndFeels, cxImageList, dxGDIPlusClasses, System.Actions;

type
  TfrmDragAndDrop = class(TdxNavBarControlDemoUnitForm)
    lvComponents: TdxListViewControl;
    imRecycleBin: TImage;
    nbMain: TdxNavBar;
    bgStandard: TdxNavBarGroup;
    bgSystem: TdxNavBarGroup;
    bgDX: TdxNavBarGroup;
    bgTemp: TdxNavBarGroup;
    biLabel: TdxNavBarItem;
    biEdit: TdxNavBarItem;
    biMemo: TdxNavBarItem;
    biCheckBox: TdxNavBarItem;
    biRadioButton: TdxNavBarItem;
    biGroupBox: TdxNavBarItem;
    biPanel: TdxNavBarItem;
    biImage: TdxNavBarItem;
    biMainMenu: TdxNavBarItem;
    biTimer: TdxNavBarItem;
    biGrid: TdxNavBarItem;
    biTreeList: TdxNavBarItem;
    biBarManager: TdxNavBarItem;
    biPivot: TdxNavBarItem;
    biLayout: TdxNavBarItem;
    biTile: TdxNavBarItem;
    biNavBar: TdxNavBarItem;
    iComponents: TcxImageList;
    biBarCode: TdxNavBarItem;
    biGauge: TdxNavBarItem;
    biPDFViewer: TdxNavBarItem;
    biMap: TdxNavBarItem;
    cxImageCollection1: TcxImageCollection;
    cxImageCollection1Item1: TcxImageCollectionItem;
    cxImageCollection1Item2: TcxImageCollectionItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    lcbAllowDragLink: TdxLayoutCheckBoxItem;
    lcbAllowDropLink: TdxLayoutCheckBoxItem;
    dxLayoutEmptySpaceItem1: TdxLayoutEmptySpaceItem;
    lcbAllowDragGroup: TdxLayoutCheckBoxItem;
    lcbAllowDropGroup: TdxLayoutCheckBoxItem;
    dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem;
    lcbAllowSelectLinks: TdxLayoutCheckBoxItem;
    dxBarManager1: TdxBarManager;
    procedure imRecycleBinDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure nbMainEndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure lvComponentsStartDrag(Sender: TObject;
      var DragObject: TDragObject);
    procedure lvComponentsEndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure lcbAllowDragLinkClick(Sender: TObject);
    procedure lcbAllowSelectLinksClick(Sender: TObject);
  protected
    function GetDescription: string; override;
    function GetBarManager: TdxBarManager; override;
    function GetNavBarControl: TdxNavBar; override;
    //
    procedure UpdateNavBarDragDropOptions(ACheckBox: TdxLayoutCheckBoxItem);
  public
    class function GetID: Integer; override;
    class function GetLoadingInfo: string; override;
    function HasOptions: Boolean; override;
  end;

implementation

{$R *.dfm}

{ TfrmDragAndDrop }

procedure TfrmDragAndDrop.imRecycleBinDragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  if (dxNavBarDragObject <> nil) and ((dxNavBarDragObject.SourceLink <> nil) or
    (dxNavBarDragObject.SourceGroup <> nil)) then
  begin
    Accept := True;
    if State = dsDragEnter then
      imRecycleBin.Picture := cxImageCollection1Item2.Picture
    else if State = dsDragLeave then
      imRecycleBin.Picture := cxImageCollection1Item1.Picture;
  end
  else Accept := False;
end;

procedure TfrmDragAndDrop.nbMainEndDrag(Sender, Target: TObject; X, Y: Integer);
begin
  if Target is TImage then
  begin
    if dxNavBarDragObject.SourceGroup <> nil then
      nbMain.Groups.Delete(dxNavBarDragObject.SourceGroup.Index);
    if dxNavBarDragObject.SourceLink <> nil then
      dxNavBarDragObject.SourceLink.Group.RemoveLink(dxNavBarDragObject.SourceLink.Index);
    imRecycleBin.Picture := cxImageCollection1Item1.Picture;
  end;
end;

procedure TfrmDragAndDrop.UpdateNavBarDragDropOptions(ACheckBox: TdxLayoutCheckBoxItem);
begin
  if ACheckBox.Checked then
    nbMain.DragDropFlags := nbMain.DragDropFlags + [TdxNavBarDragDropFlag(ACheckBox.Tag)]
  else
    nbMain.DragDropFlags := nbMain.DragDropFlags - [TdxNavBarDragDropFlag(ACheckBox.Tag)];
end;

procedure TfrmDragAndDrop.FormCreate(Sender: TObject);
var
  I: Integer;
begin
  imRecycleBin.Picture := cxImageCollection1Item1.Picture;
  for I := 0 to nbMain.Items.Count - 1 do
    with lvComponents.Items.Add do
    begin
      Caption := nbMain.Items[I].Caption;
      ImageIndex := nbMain.Items[I].SmallImageIndex;
      Data := nbMain.Items[I];
    end;

  lcbAllowDragLink.Checked := fAllowDragLink in nbMain.DragDropFlags;
  lcbAllowDropLink.Checked := fAllowDropLink in nbMain.DragDropFlags;

  lcbAllowDragGroup.Checked := fAllowDragGroup in nbMain.DragDropFlags;
  lcbAllowDropGroup.Checked := fAllowDropGroup in nbMain.DragDropFlags;

  lcbAllowSelectLinks.Checked := nbMain.AllowSelectLinks;
end;

procedure TfrmDragAndDrop.lvComponentsStartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
  if lvComponents.SelectedItemCount > 0 then
    dxNavBarDragObject := TdxNavBarDragObject.Create(nbMain, DragObject, nil, nil,
      TdxNavBarItem(lvComponents.SelectedItems[0].Data));
end;

procedure TfrmDragAndDrop.lcbAllowDragLinkClick(Sender: TObject);
begin
  UpdateNavBarDragDropOptions(Sender as TdxLayoutCheckBoxItem);
end;

procedure TfrmDragAndDrop.lcbAllowSelectLinksClick(Sender: TObject);
begin
 nbMain.AllowSelectLinks := lcbAllowSelectLinks.Checked;
end;

procedure TfrmDragAndDrop.lvComponentsEndDrag(Sender, Target: TObject; X,
  Y: Integer);
begin
  dxNavBarDragObject.Free;
  dxNavBarDragObject := nil;
end;

function TfrmDragAndDrop.GetDescription: string;
begin
  Result := 'Using drag and drop, you can move NavBar elements to the Recycle Bin or move elements from the Items List to the NavBar.'
end;

function TfrmDragAndDrop.GetBarManager: TdxBarManager;
begin
  Result := dxBarManager1;
end;

class function TfrmDragAndDrop.GetID: Integer;
begin
  Result := 2;
end;

class function TfrmDragAndDrop.GetLoadingInfo: string;
begin
  Result := 'Drag And Drop Demo';
end;

function TfrmDragAndDrop.HasOptions: Boolean;
begin
  Result := True;
end;

function TfrmDragAndDrop.GetNavBarControl: TdxNavBar;
begin
  Result := nbMain;
end;

initialization
  TfrmDragAndDrop.Register;

end.
