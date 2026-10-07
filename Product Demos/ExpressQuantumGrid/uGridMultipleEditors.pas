unit uGridMultipleEditors;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxGridFrame, cxStyles, cxControls, cxGrid, Vcl.ExtCtrls, Vcl.StdCtrls,
  cxCustomData, cxGraphics, cxFilter, cxData, cxEdit, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridLevel,
  cxEditRepositoryItems, cxDataStorage, cxCheckBox, cxContainer, cxLabel,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters, cxNavigator, dxLayoutContainer, cxButtons,
  dxLayoutControl, dxCustomDemoFrameUnit, dxLayoutcxEditAdapters, dxToggleSwitch, Vcl.ActnList, dxDateRanges,
  dxScrollbarAnnotations, System.Actions, dxLayoutLookAndFeels,
  cxGroupBox, dxPanel, cxGeometry, dxFramedControl;

type
  TfrmMultiEditorsGrid = class(TdxGridFrame)
    Level: TcxGridLevel;
    TableView: TcxGridTableView;
    clnSkill: TcxGridColumn;
    clnGrade: TcxGridColumn;
    clnName: TcxGridColumn;
    EditRepository: TcxEditRepository;
    ImageComboLanguages: TcxEditRepositoryImageComboBoxItem;
    ImageComboCommunication: TcxEditRepositoryImageComboBoxItem;
    SpinItemYears: TcxEditRepositorySpinItem;
    DateItemStartWorkFrom: TcxEditRepositoryDateItem;
    acGroupsExpanded: TAction;
    cbGroupsExpanded: TdxLayoutCheckBoxItem;
    procedure clnGradeGetProperties(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord;
      var AProperties: TcxCustomEditProperties);
    procedure acGroupsExpandedExecute(Sender: TObject);
  private
    { Private declarations }
  protected
    function GetDescription: string; override;
    function NeedSetup: Boolean; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

  TSkillDataSource = class(TcxCustomDataSource)
  private
    FTableView: TcxGridTableView;
    FCommunicationLevelCount: Integer;
    FLanguagesCount: Integer;
    Grades: Variant;
  protected
    function GetRecordCount: Integer; override;
    function GetValue(ARecordHandle: TcxDataRecordHandle;
      AItemHandle: TcxDataItemHandle): Variant; override;
    procedure SetValue(ARecordHandle: TcxDataRecordHandle;
        AItemHandle: TcxDataItemHandle; const AValue: Variant); override;
  public
    constructor Create(ATableView: TcxGridTableView;
        ACommunicationLevelCount, ALanguagesCount: Integer);
  end;


implementation

{$R *.dfm}

uses
  dxFrames, FrameIDs, uStrsConst;


{ TSkillDataSource }

const
  NameCount = 5;
  SkillCount = 6;
  Names: Array[0..NameCount - 1] of string = ('Jerry Campbell', 'Ryan Fischer',  
                'Tom Hamlett', 'Steve Lee', 'Jeffrey McClain'); 
  Skills: Array[0..SkillCount - 1] of string = (sdxMultipleEditorsFrame_Programming,
                sdxMultipleEditorsFrame_PrimaryLanguage,
                sdxMultipleEditorsFrame_SecondaryLanguage,
                sdxMultipleEditorsFrame_Communication,
                sdxMultipleEditorsFrame_StartWork,
                sdxMultipleEditorsFrame_CustomInformation);

constructor TSkillDataSource.Create(ATableView: TcxGridTableView;
        ACommunicationLevelCount, ALanguagesCount: Integer);
var
  I: Integer;
begin
  FTableView := ATableView;
  FCommunicationLevelCount := ACommunicationLevelCount;
  FLanguagesCount := ALanguagesCount;
  Grades := VarArrayCreate([0, NameCount * SkillCount - 1], varVariant);
  Randomize;
  for I := 0 to NameCount - 1 do
  begin
    Grades[I * SkillCount] := 1 + Random(10);
    Grades[I * SkillCount + 1] := Random(FLanguagesCount - 1);
    Grades[I * SkillCount + 2] := Random(FLanguagesCount - 1);
    while Grades[I * SkillCount + 1]  = Grades[I * SkillCount + 2] do
      Grades[I * SkillCount + 2] := Random(FLanguagesCount - 1);
    Grades[I * SkillCount + 3] := Random(FCommunicationLevelCount - 1);
    Grades[I * SkillCount + 4] := EncodeDate(1992 + Random(10), 1 + Random(12), 1 + Random(27));
    Grades[I * SkillCount + 5] := sdxMultipleEditorsFrame_PutInformation;
  end;
end;

function TSkillDataSource.GetRecordCount: Integer;
begin
  Result := NameCount * SkillCount;
end;

function TSkillDataSource.GetValue(ARecordHandle: TcxDataRecordHandle;
  AItemHandle: TcxDataItemHandle): Variant;
var
  AColumnId: Integer;
begin
  AColumnId := FTableView.Columns[Integer(AItemHandle)].DataBinding.Item.ID;
  case AColumnId of
    0: Result := Names[Integer(ARecordHandle) div SkillCount];
    1: Result := Skills[Integer(ARecordHandle) - (Integer(ARecordHandle) div SkillCount) * SkillCount];
    2: Result := Grades[Integer(ARecordHandle)];
    else Result := Null;
  end;
end;

procedure TSkillDataSource.SetValue(ARecordHandle: TcxDataRecordHandle;
  AItemHandle: TcxDataItemHandle; const AValue: Variant);
begin
  if FTableView.Columns[Integer(AItemHandle)].DataBinding.Item.ID = 2 then
    Grades[Integer(ARecordHandle)] := AValue;
end;

{ TfrmMultiEditorsGrid }

constructor TfrmMultiEditorsGrid.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  TableView.DataController.CustomDataSource := TSkillDataSource.Create(TableView,
        ImageComboLanguages.Properties.Items.Count,
        ImageComboCommunication.Properties.Items.Count);
  TableView.DataController.CustomDataSource.DataChanged;
  clnSkill.DataBinding.ValueTypeClass := TcxStringValueType;
  clnGrade.DataBinding.ValueTypeClass := TcxVariantValueType;
  clnName.DataBinding.ValueTypeClass := TcxStringValueType;
  TableView.DataController.Groups.FullExpand;
end;

destructor TfrmMultiEditorsGrid.Destroy;
begin
  TableView.DataController.CustomDataSource.Free;
  inherited Destroy;
end;

function TfrmMultiEditorsGrid.GetDescription: string;
begin
  Result := sdxFrameMultiEditorsDescription;
end;

function TfrmMultiEditorsGrid.NeedSetup: Boolean;
begin
  Result := True;
end;

procedure TfrmMultiEditorsGrid.clnGradeGetProperties(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
begin
  case ARecord.RecordIndex mod SkillCount of
    0: AProperties := SpinItemYears.Properties;
    1, 2: AProperties := ImageComboLanguages.Properties;
    3: AProperties := ImageComboCommunication.Properties;
    4: AProperties := DateItemStartWorkFrom.Properties;
  end;
end;

procedure TfrmMultiEditorsGrid.acGroupsExpandedExecute(Sender: TObject);
begin
  if acGroupsExpanded.Checked then
    TableView.DataController.Options := TableView.DataController.Options + [dcoGroupsAlwaysExpanded]
  else
    TableView.DataController.Options := TableView.DataController.Options - [dcoGroupsAlwaysExpanded];
end;

initialization
  dxFrameManager.RegisterFrame(GridMultiEditorsFrameID, TfrmMultiEditorsGrid,
    GridMultiEditorsFrameName, GridMultiEditorsImageIndex, EditingGroupIndex, -1, -1);

end.
