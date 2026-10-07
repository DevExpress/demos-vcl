unit cxTreeListFilterControlFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxDBTreeListBaseFormUnit, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxCustomData, cxStyles,
  cxTL, cxTLdxBarBuiltInMenu,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxLayoutContainer,
  Vcl.ActnList, cxClasses, dxLayoutLookAndFeels,
  cxInplaceContainer, cxTLData, cxDBTL, dxLayoutControl,
  dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxFilterControl,
  cxMaskEdit, dxScrollbarAnnotations, System.Actions, dxLayoutcxEditAdapters,
  cxContainer, cxEdit, cxTextEdit, cxDropDownEdit, dxShellDialogs, cxFilter;

type
  TfrmFilterControl = class(TcxDBTreeListDemoUnitForm)
    SaveDialog: TdxSaveFileDialog;
    OpenDialog: TdxOpenFileDialog;
    liFilterControl: TdxLayoutItem;
    FilterControl: TcxFilterControl;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    btnApply: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    btnReset: TcxButton;
    dxLayoutItem4: TdxLayoutItem;
    btOpen: TcxButton;
    dxLayoutItem5: TdxLayoutItem;
    btSave: TcxButton;
    dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem;
    tlDBRecId: TcxDBTreeListColumn;
    tlDBId: TcxDBTreeListColumn;
    tlDBParentId: TcxDBTreeListColumn;
    tlDBJobTitle: TcxDBTreeListColumn;
    tlDBFirstName: TcxDBTreeListColumn;
    tlDBLastName: TcxDBTreeListColumn;
    tlDBCity: TcxDBTreeListColumn;
    tlDBStateProvinceName: TcxDBTreeListColumn;
    tlDBPhone: TcxDBTreeListColumn;
    tlDBEmailAddress: TcxDBTreeListColumn;
    tlDBAddressLine1: TcxDBTreeListColumn;
    tlDBPostalCode: TcxDBTreeListColumn;
    cbCriteriaDisplayStyle: TcxComboBox;
    dxLayoutItem6: TdxLayoutItem;
    procedure btnApplyClick(Sender: TObject);
    procedure btnResetClick(Sender: TObject);
    procedure btOpenClick(Sender: TObject);
    procedure btSaveClick(Sender: TObject);
    procedure cxComboBox1PropertiesEditValueChanged(Sender: TObject);
  public
    function HasOptions: Boolean; override;
    procedure FrameActivated; override;
    class function GetID: Integer; override;
  end;

implementation

{$R *.dfm}

uses
  dxCore, cxFilterControlStrs, cxTreeListDataModule;

{ TfrmFilterControl }

function TfrmFilterControl.HasOptions: Boolean;
begin
  Result := False;
end;

procedure TfrmFilterControl.FrameActivated;
var
  AList: TcxFilterCriteriaItemList;
begin
  inherited FrameActivated;
  TreeList.FullExpand;
  OpenDialog.Title := cxGetResourceString(@cxSFilterControlDialogOpenDialogCaption);
  OpenDialog.DefaultExt := cxGetResourceString(@cxSFilterControlDialogFileExt);
  OpenDialog.Filter := cxGetResourceString(@cxSFilterControlDialogFileFilter);
  SaveDialog.Title := cxGetResourceString(@cxSFilterControlDialogSaveDialogCaption);
  SaveDialog.DefaultExt := OpenDialog.DefaultExt;
  SaveDialog.Filter := cxGetResourceString(@cxSFilterControlDialogFileFilter);
  TreeList.Filter.Active := False;
  TreeList.Filter.AddItem(nil, tlDBJobTitle, foContains, 'Manager', 'Manager');
  AList := TreeList.Filter.Root.AddItemList(fboOr);
  AList.AddItem(tlDBStateProvinceName, foEqual, 'California', 'California');
  AList.AddItem(tlDBStateProvinceName, foEqual, 'Georgia', 'Georgia');
  AList.AddItem(tlDBStateProvinceName, foEqual, 'Texas', 'Texas');
  TreeList.Filter.Active := True;
  FilterControl.UpdateFilter;
end;

class function TfrmFilterControl.GetID: Integer;
begin
  Result := 57;
end;

procedure TfrmFilterControl.btnApplyClick(Sender: TObject);
begin
  FilterControl.ApplyFilter;
end;

procedure TfrmFilterControl.btnResetClick(Sender: TObject);
begin
  FilterControl.UpdateFilter;
end;

procedure TfrmFilterControl.btOpenClick(Sender: TObject);
begin
  OpenDialog.FileName := '';
  if OpenDialog.Execute then
    FilterControl.LoadFromFile(OpenDialog.FileName);
end;

procedure TfrmFilterControl.btSaveClick(Sender: TObject);
begin
  if SaveDialog.Execute then
    FilterControl.SaveToFile(SaveDialog.FileName);
end;

procedure TfrmFilterControl.cxComboBox1PropertiesEditValueChanged(Sender: TObject);
begin
  if cbCriteriaDisplayStyle.ItemIndex = 0 then
    tlDB.FilterBox.CriteriaDisplayStyle := fcdsTokens
  else
    tlDB.FilterBox.CriteriaDisplayStyle := fcdsText;
end;

initialization
  TfrmFilterControl.Register;

end.
