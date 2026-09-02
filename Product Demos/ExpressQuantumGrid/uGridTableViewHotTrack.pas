unit uGridTableViewHotTrack;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxGridFrame, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxLayoutContainer, maindata,
  cxGridLevel, cxClasses, dxLayoutLookAndFeels, System.Actions, Vcl.ActnList,
  cxGrid, dxLayoutControl, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, dxScrollbarAnnotations,
  Data.DB, cxDBData, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, dxLayoutcxEditAdapters, cxContainer, cxCheckBox, dxCore,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, dxColorEdit, dxLayoutControlAdapters,
  Vcl.Menus, Vcl.ImgList, cxImageList, dxColorDialog,
  Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxGroupBox, dxPanel, cxGeometry,
  dxFramedControl;

type
  TfrmTableViewHotTrack = class(TdxGridFrame)
    Level: TcxGridLevel;
    TableView: TcxGridDBTableView;
    TableViewCompanyName: TcxGridDBColumn;
    TableViewContactName: TcxGridDBColumn;
    TableViewContactTitle: TcxGridDBColumn;
    TableViewCity: TcxGridDBColumn;
    TableViewCountry: TcxGridDBColumn;
    TableViewAddress: TcxGridDBColumn;
    acHotTrackSelection: TAction;
    lgCustomColors: TdxLayoutGroup;
    strStyles: TcxStyleRepository;
    stHotTrack: TcxStyle;
    cbHotTrackSelection: TdxLayoutCheckBoxItem;
    cbHotTrack: TcxComboBox;
    liHotTrack: TdxLayoutItem;
    pbBackgroundColor: TPaintBox;
    liColor: TdxLayoutItem;
    pbFontColor: TPaintBox;
    liTextColor: TdxLayoutItem;
    cdColors: TdxColorDialog;
    liResetBackColor: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    btnResetBackColor: TcxButton;
    ilImages: TcxImageList;
    btnResetFontColor: TcxButton;
    liResetFontColor: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    procedure acHotTrackSelectionExecute(Sender: TObject);
    procedure btnResetColorClick(Sender: TObject);
    procedure cbHotTrackPropertiesEditValueChanged(Sender: TObject);
    procedure pbColorClick(Sender: TObject);
    procedure pbColorPaint(Sender: TObject);
    procedure TableViewSelectionChanged(Sender: TcxCustomGridTableView);
  strict private
    FHasPredefinedSelection: Boolean;
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
  System.UITypes,
  dxFrames, FrameIDs, uStrsConst, dxGDIPlusClasses, dxCoreGraphics;

{ TfrmTableViewHotTrack }

constructor TfrmTableViewHotTrack.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FHasPredefinedSelection := True;
end;

procedure TfrmTableViewHotTrack.ChangeVisibility(AShow: Boolean);
begin
  inherited ChangeVisibility(AShow);
  if FHasPredefinedSelection then
  begin
    TableView.Controller.TopRowIndex := 0;
    TableView.Controller.FocusRecord(9, True);
    TableView.ViewData.Rows[3].Selected := True;
    TableView.ViewData.Rows[5].Selected := True;
    TableView.ViewData.Rows[8].Selected := True;
    TableView.ViewData.Rows[9].Selected := True;
    TableView.ViewData.Rows[10].Selected := True;
    FHasPredefinedSelection := True;
  end;
end;

function TfrmTableViewHotTrack.GetDescription: string;
begin
  Result := sdxFrameTableViewHotTrackDescription;
end;

function TfrmTableViewHotTrack.NeedSetup: Boolean;
begin
  Result := True;
end;

procedure TfrmTableViewHotTrack.acHotTrackSelectionExecute(Sender: TObject);
begin
  TableView.OptionsBehavior.HotTrackSelection := acHotTrackSelection.Checked;
end;

procedure TfrmTableViewHotTrack.btnResetColorClick(Sender: TObject);
var
  AButton: TcxButton absolute Sender;
begin
  if AButton.Tag = 1 then
  begin
    stHotTrack.Color := clDefault;
    liResetBackColor.Visible := False;
    pbBackgroundColor.Invalidate;
  end
  else
  begin
    stHotTrack.TextColor := clDefault;
    liResetFontColor.Visible := False;
    pbFontColor.Invalidate;
  end;
end;

procedure TfrmTableViewHotTrack.cbHotTrackPropertiesEditValueChanged(Sender: TObject);
begin
  TableView.OptionsBehavior.HotTrack := cbHotTrack.ItemIndex <> 2;
  acHotTrackSelection.Enabled := TableView.OptionsBehavior.HotTrack;
  lgCustomColors.Enabled := TableView.OptionsBehavior.HotTrack;
  TableView.OptionsSelection.CellMultiSelect := cbHotTrack.ItemIndex = 1;
  TableView.OptionsSelection.InvertSelect := cbHotTrack.ItemIndex <> 1;
  TableView.OptionsSelection.MultiSelect := True;
  TableView.DataController.SyncSelectionFocusedRecord;
  TableView.Controller.FocusedColumn.Selected := True;
end;

procedure TfrmTableViewHotTrack.pbColorClick(Sender: TObject);
var
  APaintBox: TPaintBox absolute Sender;
begin
  if APaintBox.Tag = 1 then
    cdColors.Color := TdxAlphaColors.FromColor(stHotTrack.Color)
  else
    cdColors.Color := TdxAlphaColors.FromColor(stHotTrack.TextColor);
  if cdColors.Execute then
  begin
    if APaintBox.Tag = 1 then
    begin
      stHotTrack.Color := TdxAlphaColors.ToColor(cdColors.Color);
      liResetBackColor.Visible := (stHotTrack.Color <> clDefault) and (stHotTrack.Color <> clNone);
    end
    else
    begin
      stHotTrack.TextColor := TdxAlphaColors.ToColor(cdColors.Color);
      liResetFontColor.Visible := (stHotTrack.TextColor <> clDefault) and (stHotTrack.TextColor <> clNone);
    end;
    APaintBox.Invalidate;
  end;
end;

procedure TfrmTableViewHotTrack.pbColorPaint(Sender: TObject);
var
  AColor: TColor;
  APaintBox: TPaintBox absolute Sender;
begin
  cxDrawTransparencyCheckerboard(APaintBox.Canvas.Handle, APaintBox.ClientRect, 6);
  dxGPPaintCanvas.BeginPaint(APaintBox.Canvas.Handle, APaintBox.ClientRect);
  try
    if APaintBox.Tag = 1 then
      AColor := stHotTrack.Color
    else
      AColor := stHotTrack.TextColor;
    if (AColor <> clDefault) and (AColor <> clNone) then
      dxGPPaintCanvas.FillRectangle(APaintBox.ClientRect, TdxAlphaColors.FromColor(AColor));
  finally
    dxGPPaintCanvas.EndPaint;
  end;
end;

procedure TfrmTableViewHotTrack.TableViewSelectionChanged(Sender: TcxCustomGridTableView);
begin
  FHasPredefinedSelection := False;
end;

initialization
  dxFrameManager.RegisterFrame(TableViewHotTrackFrameID, TfrmTableViewHotTrack, TableViewHotTrackFrameName,
    -1, NewUpdatedGroupIndex, TableBandedTableGroupIndex, -1);

end.
