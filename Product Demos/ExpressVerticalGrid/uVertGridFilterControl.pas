unit uVertGridFilterControl;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxVertGridFrame, Vcl.StdCtrls, Vcl.ExtCtrls, cxStyles, cxGraphics,
  cxEdit, cxControls, cxInplaceContainer, cxVGrid, cxDBVGrid, cxFilter, cxData,
  cxLookAndFeelPainters, cxButtons, cxFilterControl, cxCurrencyEdit,
  cxLookAndFeels, Vcl.Menus, cxContainer, cxLabel, dxLayoutContainer, cxClasses, dxLayoutControl, dxLayoutControlAdapters,
  dxScrollbarAnnotations, dxLayoutLookAndFeels,
  dxLayoutcxEditAdapters, cxTextEdit, cxMaskEdit, cxDropDownEdit, dxShellDialogs;

type
  TfrmVerticalGridFilterControl = class(TVerticalGridFrame)
    OpenDialog: TdxOpenFileDialog;
    SaveDialog: TdxSaveFileDialog;
    dxLayoutItem1: TdxLayoutItem;
    VerticalGrid: TcxDBVerticalGrid;
    VerticalGridFIRSTNAME: TcxDBEditorRow;
    VerticalGridLASTNAME: TcxDBEditorRow;
    VerticalGridCOMPANYNAME: TcxDBEditorRow;
    VerticalGridPAYMENTTYPE: TcxDBEditorRow;
    VerticalGridPRODUCTID: TcxDBEditorRow;
    VerticalGridCUSTOMER: TcxDBEditorRow;
    VerticalGridPURCHASEDATE: TcxDBEditorRow;
    VerticalGridPAYMENTAMOUNT: TcxDBEditorRow;
    VerticalGridCOPIES: TcxDBEditorRow;
    dxLayoutItem2: TdxLayoutItem;
    FilterControl: TcxFilterControl;
    dxLayoutItem3: TdxLayoutItem;
    btnApply: TcxButton;
    dxLayoutItem4: TdxLayoutItem;
    btnReset: TcxButton;
    dxLayoutItem5: TdxLayoutItem;
    btOpen: TcxButton;
    dxLayoutItem6: TdxLayoutItem;
    btSave: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutEmptySpaceItem1: TdxLayoutEmptySpaceItem;
    cbCriteriaDisplayStyle: TcxComboBox;
    dxLayoutItem7: TdxLayoutItem;
    procedure btnApplyClick(Sender: TObject);
    procedure btnResetClick(Sender: TObject);
    procedure btOpenClick(Sender: TObject);
    procedure btSaveClick(Sender: TObject);
    procedure cbCriteriaDisplayStylePropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
  protected
    function GetDescription: string; override;
  public
    constructor Create(AOwner: TComponent); override;
    function HasOptions: Boolean; override;
  end;

implementation

uses
  maindata, dxFrames, FrameIDs, uStrsConst, cxFilterControlStrs, dxCore;

{$R *.dfm}

constructor TfrmVerticalGridFilterControl.Create(AOwner: TComponent);
var
  AList: TcxFilterCriteriaItemList;
begin
  inherited Create(AOwner);
  OpenDialog.Title := cxGetResourceString(@cxSFilterControlDialogOpenDialogCaption);
  OpenDialog.DefaultExt := cxGetResourceString(@cxSFilterControlDialogFileExt);
  OpenDialog.Filter := cxGetResourceString(@cxSFilterControlDialogFileFilter);
  SaveDialog.Title := cxGetResourceString(@cxSFilterControlDialogSaveDialogCaption);
  SaveDialog.DefaultExt := OpenDialog.DefaultExt;
  SaveDialog.Filter := cxGetResourceString(@cxSFilterControlDialogFileFilter);

  VerticalGrid.DataController.Filter.Active := False;
  VerticalGrid.DataController.Filter.AddItem(nil, VerticalGridCOPIES.Properties.ItemLink, foGreaterEqual, 3, '3');
  VerticalGrid.DataController.Filter.AddItem(nil, VerticalGridCOPIES.Properties.ItemLink, foLessEqual, 7, '7');
  AList := VerticalGrid.DataController.Filter.Root.AddItemList(fboOr);
  AList.AddItem(VerticalGridPURCHASEDATE.Properties.ItemLink, foToday, Null, '');
  AList.AddItem(VerticalGridPURCHASEDATE.Properties.ItemLink, foInPast, Null, '');
  VerticalGrid.DataController.Filter.Active := True;

  FilterControl.UpdateFilter;
end;

procedure TfrmVerticalGridFilterControl.btnApplyClick(Sender: TObject);
begin
  FilterControl.ApplyFilter;
end;

procedure TfrmVerticalGridFilterControl.btnResetClick(Sender: TObject);
begin
  FilterControl.UpdateFilter;
  FilterControl.FilterText;
end;

procedure TfrmVerticalGridFilterControl.btOpenClick(Sender: TObject);
begin
  OpenDialog.FileName := '';
  if OpenDialog.Execute then
    FilterControl.LoadFromFile(OpenDialog.FileName);
end;

procedure TfrmVerticalGridFilterControl.btSaveClick(Sender: TObject);
begin
  if SaveDialog.Execute then
    FilterControl.SaveToFile(SaveDialog.FileName);
end;

procedure TfrmVerticalGridFilterControl.cbCriteriaDisplayStylePropertiesEditValueChanged(Sender: TObject);
begin
  if cbCriteriaDisplayStyle.ItemIndex = 0 then
    VerticalGrid.FilterBox.CriteriaDisplayStyle := fcdsTokens
  else
    VerticalGrid.FilterBox.CriteriaDisplayStyle := fcdsText;
end;

function TfrmVerticalGridFilterControl.GetDescription: string;
begin
  Result := sdxFrameVerticalFilterControl;
end;

function TfrmVerticalGridFilterControl.HasOptions: Boolean;
begin
  Result := False;
end;

initialization
  dxFrameManager.RegisterFrame(VerticalGridFilterControlFrameID, TfrmVerticalGridFilterControl,
    VerticalGridFilterControlName, VerticalGridFilterControlImageIndex, NewAndHighlightedGroupIndex, VerticalGridSideBarGroupIndex);


end.
