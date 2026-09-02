unit uGridFixedColumns;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxGridFrame, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxContainer, cxEdit, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, Vcl.ActnList, Vcl.ImgList, dxmdaset,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridLevel, cxLabel, cxGrid, Vcl.ExtCtrls, cxImageComboBox, cxFindPanel,
  cxDropDownEdit, cxTextEdit, cxMaskEdit, cxSpinEdit, cxCheckBox, cxGroupBox, maindata,
  cxCurrencyEdit, cxDBLookupComboBox, cxCalendar, dxGDIPlusClasses, cxImage, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutContainer, Vcl.StdCtrls, cxButtons, dxLayoutControl, dxLayoutcxEditAdapters, dxCustomDemoFrameUnit, dxToggleSwitch,
  dxDateRanges, dxLayoutLookAndFeels, dxScrollbarAnnotations, System.Actions,
  dxBar, cxImageList, dxColorDialog, dxPanel, cxGeometry,
  dxFramedControl, System.ImageList;

type
  TfrmGridFixedColumns = class(TdxGridFrame)
    GridLevel1: TcxGridLevel;
    TableView: TcxGridDBTableView;
    TableViewCompanyName: TcxGridDBColumn;
    TableViewContactName: TcxGridDBColumn;
    TableViewContactTitle: TcxGridDBColumn;
    TableViewCity: TcxGridDBColumn;
    TableViewCountry: TcxGridDBColumn;
    TableViewAddress: TcxGridDBColumn;
    TableViewPostalCode: TcxGridDBColumn;
    TableViewPhone: TcxGridDBColumn;
    TableViewFax: TcxGridDBColumn;
    TableViewRegion: TcxGridDBColumn;
    bpmHeaderPopup: TdxBarPopupMenu;
    bmHeaderPopup: TdxBarManager;
    blbNotFixed: TdxBarLargeButton;
    blbFixedLeft: TdxBarLargeButton;
    blbFixedRight: TdxBarLargeButton;
    blbFixedLeftDynamic: TdxBarLargeButton;
    cbColumn: TcxImageComboBox;
    liColumn: TdxLayoutItem;
    cbFixStyle: TcxImageComboBox;
    liFixStyle: TdxLayoutItem;
    ilImages: TcxImageList;
    seFixedSeparatorWidth: TcxSpinEdit;
    liFixedSeparatorWidth: TdxLayoutItem;
    pbFixedColumnOverlayColor: TPaintBox;
    liFixedColumnHighlightColor: TdxLayoutItem;
    cdFixedColumnOverlayColor: TdxColorDialog;
    btnResetFixedColumnHighlightColor: TcxButton;
    liResetFixedColumnHighlightColor: TdxLayoutItem;
    lgFixedColumnHighlightColor: TdxLayoutGroup;
    lliFixedColumnHighlightColor: TdxLayoutLabeledItem;
    ligFixedColumnHighlightColor: TdxLayoutGroup;
    lcbHighlightFixedColumns: TdxLayoutCheckBoxItem;
    procedure blbFixedClick(Sender: TObject);
    procedure cbFixStylePropertiesEditValueChanged(Sender: TObject);
    procedure cbColumnPropertiesEditValueChanged(Sender: TObject);
    procedure seFixedSeparatorWidthPropertiesEditValueChanged(Sender: TObject);
    procedure pbFixedColumnOverlayColorPaint(Sender: TObject);
    procedure pbFixedColumnOverlayColorClick(Sender: TObject);
    procedure btnResetFixedColumnHighlightColorClick(Sender: TObject);
    procedure lcbHighlightFixedColumnsClick(Sender: TObject);
  strict private
    FPopupColumn: TcxCustomGridColumn;

    function GetComboBoxColumn: TcxCustomGridColumn;
  protected
    procedure ChangeFixedKind(AColumn: TcxCustomGridColumn; AKind: TcxGridColumnFixedKind); virtual;
    procedure DoGridPopupMenuPopup(ASenderMenu: TComponent; AHitTest: TcxCustomGridHitTest;
      X,Y: Integer; var AllowPopup: Boolean); override;
    function GetDescription: string; override;
    function NeedSetup: Boolean; override;
    procedure PopulateColumnComboBox; virtual;
    procedure PopulateSortedColumns(AList: TStringList); virtual;

    property ComboBoxColumn: TcxCustomGridColumn read GetComboBoxColumn;
    property PopupColumn: TcxCustomGridColumn read FPopupColumn;
  public
    constructor Create(AOwner: TComponent); override;
  end;

implementation

uses
  dxCore, dxFrames, FrameIDs, uStrsConst, dxCoreGraphics, cxGridCustomPopupMenu;

{$R *.dfm}

constructor TfrmGridFixedColumns.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  PopulateColumnComboBox;
  TableView.DataController.Groups.FullExpand;
  TableView.Controller.GoToFirst;
  GridPopupMenu.RegisterPopupMenu(bpmHeaderPopup, [gvhtColumnHeader], TcxGridOnPopupProc(nil), TableView);
end;

procedure TfrmGridFixedColumns.ChangeFixedKind(AColumn: TcxCustomGridColumn; AKind: TcxGridColumnFixedKind);
begin
  if AColumn.FixedKind <> AKind then
  begin
    case AKind of
      fkLeft:
        if TableView.VisibleColumnCountByFixedKind[fkLeft] > 0 then
          AColumn.Index := TableView.VisibleColumns[TableView.VisibleColumnCountByFixedKind[fkLeft] - 1].Index + 1
        else
          AColumn.Index := TableView.VisibleColumns[0].Index;
      fkRight:
        if TableView.VisibleColumnCountByFixedKind[fkRight] > 0 then
          AColumn.Index := TableView.VisibleColumns[TableView.VisibleColumnCount - TableView.VisibleColumnCountByFixedKind[fkRight]].Index - 1
        else
          AColumn.Index := TableView.VisibleColumns[TableView.VisibleColumnCount - 1].Index;
    end;
    AColumn.FixedKind := AKind;
  end;
end;

procedure TfrmGridFixedColumns.DoGridPopupMenuPopup(ASenderMenu: TComponent;
  AHitTest: TcxCustomGridHitTest; X,Y: Integer; var AllowPopup: Boolean);
var
  AItemIndex: Integer;
  ABarItem: TdxBarItem;
  AButton: TdxBarLargeButton;
begin
  if AHitTest.HitTestCode = htColumnHeader then
  begin
    FPopupColumn := TcxGridColumnHeaderHitTest(AHitTest).Column;
    AItemIndex := Integer(PopupColumn.FixedKind);
    ABarItem := bpmHeaderPopup.ItemLinks[AItemIndex].Item;
    AButton := TdxBarLargeButton(ABarItem);
    AButton.Down := True;
  end;
end;

function TfrmGridFixedColumns.GetDescription: string;
begin
  Result := sdxFrameFixedColumnsDescription;
end;

procedure TfrmGridFixedColumns.lcbHighlightFixedColumnsClick(Sender: TObject);
begin
  TableView.OptionsView.HighlightFixedColumns := lcbHighlightFixedColumns.Checked;
end;

function TfrmGridFixedColumns.NeedSetup: Boolean;
begin
  Result := True;
end;

procedure TfrmGridFixedColumns.pbFixedColumnOverlayColorClick(Sender: TObject);
const
  AAlpha = 40;
var
  AColor: TColor;
  APaintBox: TPaintBox absolute Sender;
begin
  cdFixedColumnOverlayColor.Color := TableView.OptionsView.FixedColumnHighlightColor;
  if cdFixedColumnOverlayColor.Execute then
  begin
    AColor := dxAlphaColorToColor(cdFixedColumnOverlayColor.Color);
    TableView.OptionsView.FixedColumnHighlightColor := dxColorToAlphaColor(AColor, AAlpha);
    liResetFixedColumnHighlightColor.Visible := (TableView.OptionsView.FixedColumnHighlightColor <> TdxAlphaColors.Default) and
      (TableView.OptionsView.FixedColumnHighlightColor <> TdxAlphaColors.Empty);
    APaintBox.Invalidate;
  end;
end;

procedure TfrmGridFixedColumns.pbFixedColumnOverlayColorPaint(Sender: TObject);
var
  AColor: TColor;
  APaintBox: TPaintBox absolute Sender;
begin
  cxDrawTransparencyCheckerboard(APaintBox.Canvas.Handle, APaintBox.ClientRect, 6);
  if (TableView.OptionsView.FixedColumnHighlightColor <> TdxAlphaColors.Default) and
    (TableView.OptionsView.FixedColumnHighlightColor <> TdxAlphaColors.Empty) then
  begin
    dxGPPaintCanvas.BeginPaint(APaintBox.Canvas.Handle, APaintBox.ClientRect);
    try
      AColor := dxAlphaColorToColor(TableView.OptionsView.FixedColumnHighlightColor);
      dxGPPaintCanvas.FillRectangle(APaintBox.ClientRect, dxColorToAlphaColor(AColor));
    finally
      dxGPPaintCanvas.EndPaint;
    end;
  end;
end;

procedure TfrmGridFixedColumns.PopulateColumnComboBox;
var
  I: Integer;
  AList: TStringList;
  AItem: TcxImageComboBoxItem;
  AColumn: TcxCustomGridColumn;
begin
  AList := TStringList.Create;
  try
    PopulateSortedColumns(AList);
    for I := 0 to AList.Count - 1 do
    begin
      AItem := cbColumn.Properties.Items.Add;
      AItem.Value := I;
      AItem.Description := AList[I];
      AItem.Tag := NativeInt(AList.Objects[I]);
      AColumn := TcxCustomGridColumn(AItem.Tag);
      AItem.ImageIndex := AColumn.HeaderImageIndex;
      if AColumn.VisibleIndex = 0 then
        cbColumn.ItemIndex := I;
    end;
  finally
    AList.Free;
  end;
end;

procedure TfrmGridFixedColumns.PopulateSortedColumns(AList: TStringList);
var
  I: Integer;
begin
  for I := 0 to TableView.ColumnCount - 1 do
    AList.AddObject(TableView.Columns[I].Caption, TableView.Columns[I]);
  AList.Sort;
end;

procedure TfrmGridFixedColumns.seFixedSeparatorWidthPropertiesEditValueChanged(Sender: TObject);
begin
  TableView.OptionsView.FixedColumnSeparatorWidth := seFixedSeparatorWidth.Value;
end;

function TfrmGridFixedColumns.GetComboBoxColumn: TcxCustomGridColumn;
var
  AItem: TcxImageComboBoxItem;
begin
  AItem := cbColumn.Properties.Items[cbColumn.ItemIndex];
  Result := TcxCustomGridColumn(AItem.Tag);
end;

procedure TfrmGridFixedColumns.blbFixedClick(Sender: TObject);
var
  AButton: TdxBarLargeButton;
begin
  AButton := TdxBarLargeButton(Sender);
  ChangeFixedKind(PopupColumn, TcxGridColumnFixedKind(AButton.Tag));
end;

procedure TfrmGridFixedColumns.btnResetFixedColumnHighlightColorClick(Sender: TObject);
var
  AButton: TcxButton absolute Sender;
begin
  TableView.OptionsView.FixedColumnHighlightColor := TdxAlphaColors.Default;
  liResetFixedColumnHighlightColor.Visible := False;
  pbFixedColumnOverlayColor.Invalidate;
end;

procedure TfrmGridFixedColumns.cbColumnPropertiesEditValueChanged(Sender: TObject);
begin
  cbFixStyle.ItemIndex := Integer(ComboBoxColumn.FixedKind);
end;

procedure TfrmGridFixedColumns.cbFixStylePropertiesEditValueChanged(Sender: TObject);
begin
  ChangeFixedKind(ComboBoxColumn, TcxGridColumnFixedKind(cbFixStyle.ItemIndex));
end;

initialization
  dxFrameManager.RegisterFrame(GridFixedColumnsFrameID, TfrmGridFixedColumns,
    GridFixedColumnsFrameName, -1, NewUpdatedGroupIndex, TableBandedTableGroupIndex, -1);

end.
