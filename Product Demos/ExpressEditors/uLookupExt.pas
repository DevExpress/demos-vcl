unit uLookupExt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxFrameCustomControl, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBExtLookupComboBox, Vcl.ActnList, cxClasses, dxLayoutControl, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, maindata, cxImage, cxCheckBox, cxSpinEdit;

type
  TfrmLookupExt = class(TfrmCustomControl)
    ExtLookupComboBox: TcxExtLookupComboBox;
    dxLayoutItem1: TdxLayoutItem;
    gvLookup: TcxGridDBTableView;
    grLookupLevel1: TcxGridLevel;
    grLookup: TcxGrid;
    gvLookupFullName: TcxGridDBColumn;
    gvLookupPicture: TcxGridDBColumn;
    dxLayoutItem2: TdxLayoutItem;
    cmbAlignment: TcxComboBox;
    dxLayoutItem4: TdxLayoutItem;
    cbDropDownSizeable: TcxCheckBox;
    dxLayoutItem6: TdxLayoutItem;
    cmbKeyFieldName: TcxComboBox;
    dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem3: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem4: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem5: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem6: TdxLayoutEmptySpaceItem;
    gvLookupTitle: TcxGridDBColumn;
    gvLookupDepartment_Name: TcxGridDBColumn;
    acDropDownSizeable: TAction;
    acHighlightSearchText: TAction;
    acUseContainsOperator: TAction;
    cbgIncrementalFiltering: TdxLayoutGroup;
    cbHighlightSearchText: TdxLayoutCheckBoxItem;
    UseContainsOperator: TdxLayoutCheckBoxItem;
    procedure cmbAlignmentPropertiesChange(Sender: TObject);
  private
    function GetResultItem(AIndex: Integer): TcxCustomGridTableItem;
    procedure SetExtLookupProperties;
  protected
    procedure CheckControlStartProperties; override;
    function GetDescription: string; override;
    function GetInspectedObject: TPersistent; override;
  end;

implementation

uses
  dxFrames, FrameIDs, uStrsConst;

{$R *.dfm}

procedure TfrmLookupExt.CheckControlStartProperties;
begin
  dmMain.OpenEmployeesDataset;
  SetExtLookupProperties;
end;

procedure TfrmLookupExt.cmbAlignmentPropertiesChange(Sender: TObject);
begin
  SetExtLookupProperties;
end;

function TfrmLookupExt.GetDescription: string;
begin
  Result := sdxFrameLookupExtDescription;
end;

function TfrmLookupExt.GetInspectedObject: TPersistent;
begin
  Result := ExtLookupComboBox;
end;

function TfrmLookupExt.GetResultItem(AIndex: Integer): TcxCustomGridTableItem;
begin
  case AIndex of
    1: Result := gvLookupDepartment_Name;
    2: Result := gvLookupTitle;
  else
    Result := gvLookupFullName;
  end;
end;

procedure TfrmLookupExt.SetExtLookupProperties;
var
  AFilteringOptions: TcxTextEditIncrementalFilteringOptions;
begin
  ExtLookupComboBox.Properties.Alignment.Horz := TAlignment(cmbAlignment.ItemIndex);
  ExtLookupComboBox.Properties.DropDownSizeable := acDropDownSizeable.Checked;
  ExtLookupComboBox.Properties.ListFieldItem := GetResultItem(cmbKeyFieldName.ItemIndex);

  ExtLookupComboBox.Properties.IncrementalFiltering := cbgIncrementalFiltering.ButtonOptions.CheckBox.Checked;
  AFilteringOptions := [];
  if acHighlightSearchText.Checked then
    Include(AFilteringOptions, ifoHighlightSearchText);
  if acUseContainsOperator.Checked then
    Include(AFilteringOptions, ifoUseContainsOperator);
  ExtLookupComboBox.Properties.IncrementalFilteringOptions := AFilteringOptions;
end;

initialization
  dxFrameManager.RegisterFrame(ExtLookupComboBoxFrameID, TfrmLookupExt, ExtLookupComboBoxFrameName, -1,
    EditorsWithDropDownGroupIndex, -1, -1);

end.
