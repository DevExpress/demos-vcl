unit uGridInplaceEditForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxGridFrame, dxFrames, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxContainer, cxEdit, cxLabel, cxGrid,
  Vcl.ExtCtrls, FrameIDs, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, Vcl.ImgList, dxmdaset, cxGridCustomView, cxClasses, cxGridLevel,
  cxSpinEdit, cxCheckBox, cxDropDownEdit, cxImage, cxCurrencyEdit,
  dxLayoutContainer, cxGridInplaceEditForm, Vcl.Menus, Vcl.StdCtrls, cxRadioGroup,
  cxButtons, cxGroupBox, Vcl.ActnList, maindata, cxHyperLinkEdit, dxLayoutControlAdapters, cxImageList,
  dxLayoutControl, dxCustomDemoFrameUnit, dxDateRanges, dxScrollbarAnnotations, System.Actions,
  dxLayoutLookAndFeels, dxPanel, cxGeometry,
  dxFramedControl;

type
  TfrmGridInplaceEditForm = class(TdxGridFrame)
    GridLevel1: TcxGridLevel;
    TableView: TcxGridDBTableView;
    TableViewTrademark: TcxGridDBColumn;
    TableViewModel: TcxGridDBColumn;
    TableViewHP: TcxGridDBColumn;
    TableViewTorque: TcxGridDBColumn;
    TableViewTransmissSpeedCount: TcxGridDBColumn;
    TableViewTransmissAutomatic: TcxGridDBColumn;
    TableViewMPG_City: TcxGridDBColumn;
    TableViewMPG_Highway: TcxGridDBColumn;
    TableViewCategory: TcxGridDBColumn;
    TableViewDescription: TcxGridDBColumn;
    TableViewHyperlink: TcxGridDBColumn;
    TableViewPicture: TcxGridDBColumn;
    TableViewPrice: TcxGridDBColumn;
    alAction: TActionList;
    actCustomizeEditForm: TAction;
    actInplace: TAction;
    actInplaceEditForm: TAction;
    actInplaceEditFormHCR: TAction;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    btnCustomizeEditForm: TcxButton;
    dxLayoutGroup2: TdxLayoutGroup;
    actDetachedEditForm: TAction;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutGroup7: TdxLayoutGroup;
    rbInplace: TdxLayoutRadioButtonItem;
    rbInplaceEditForm: TdxLayoutRadioButtonItem;
    rbInplaceEditFormHideCurrentRow: TdxLayoutRadioButtonItem;
    rbDetachedEditForm: TdxLayoutRadioButtonItem;
    procedure actCustomizeEditFormExecute(Sender: TObject);
    procedure actEditModeChange(Sender: TObject);
    procedure TableViewDetachedEditFormInitialize(Sender: TcxGridTableView; AForm: TForm);
  protected
    function GetDescription: string; override;
    function NeedSetup: Boolean; override;
  public
    constructor Create(AOwner: TComponent); override;
  end;

var
  frmGridInplaceEditForm: TfrmGridInplaceEditForm;

implementation

{$R *.dfm}

uses
  uStrsConst;

procedure TfrmGridInplaceEditForm.actCustomizeEditFormExecute(Sender: TObject);
begin
  TableView.Controller.ShowEditFormCustomizationDialog;
end;

procedure TfrmGridInplaceEditForm.actEditModeChange(Sender: TObject);
begin
  if Sender = actInplace then
    TableView.OptionsBehavior.EditMode := emInplace
  else
    if Sender = actInplaceEditForm then
      TableView.OptionsBehavior.EditMode := emInplaceEditForm
    else
      if Sender = actInplaceEditFormHCR then
        TableView.OptionsBehavior.EditMode := emInplaceEditFormHideCurrentRow
      else
        TableView.OptionsBehavior.EditMode := emModalEditForm;
  actCustomizeEditForm.Enabled := Sender <> actInplace;
end;

constructor TfrmGridInplaceEditForm.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  (TableView.Controller.FocusedRow as TcxGridDataRow).EditFormVisible := True;
end;

function TfrmGridInplaceEditForm.GetDescription: string;
begin
  Result := sdxFrameInplaceEditFormDescription;
end;

function TfrmGridInplaceEditForm.NeedSetup: Boolean;
begin
  Result := True;
end;

procedure TfrmGridInplaceEditForm.TableViewDetachedEditFormInitialize(Sender: TcxGridTableView; AForm: TForm);
begin
  AForm.BorderStyle := bsDialog;
end;

initialization
  dxFrameManager.RegisterFrame(GridEditFormFrameID, TfrmGridInplaceEditForm,
    GridEditFormFrameName, GridEditFormImageIndex, NewUpdatedGroupIndex, EditingGroupIndex, -1);

end.
