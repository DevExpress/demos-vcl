unit uContactDetails;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxCustomDemoFrameUnit, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, Vcl.ActnList, dxLayoutContainer,
  cxClasses, dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxTextEdit, Vcl.ComCtrls, dxCore, cxDateUtils,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxMCListBox, cxMRUEdit, cxDropDownEdit, cxImage,
  cxImageComboBox, cxMaskEdit, cxCalendar, cxButtonEdit, cxDBEdit, maindata, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxEditRepositoryItems, cxProgressBar, Datasnap.DBClient, cxGridBandedTableView, cxGridDBBandedTableView,
  cxMemo, dxUIAdorners, cxLabel;

type
  TfrmContactDetails = class(TdxCustomDemoFrame)
    edFirstName: TcxDBTextEdit;
    dxLayoutItem1: TdxLayoutItem;
    edLastName: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    edFullName: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    edBirthDate: TcxDBDateEdit;
    dxLayoutItem4: TdxLayoutItem;
    edTitle: TcxDBTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    cbPrefix: TcxDBImageComboBox;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutEmptySpaceItem1: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem3: TdxLayoutEmptySpaceItem;
    imPhoto: TcxDBImage;
    dxLayoutItem7: TdxLayoutItem;
    edAddressLine: TcxDBTextEdit;
    dxLayoutItem8: TdxLayoutItem;
    edAddressCity: TcxDBTextEdit;
    dxLayoutItem9: TdxLayoutItem;
    edZipCode: TcxDBMaskEdit;
    dxLayoutItem10: TdxLayoutItem;
    edState: TcxDBLookupComboBox;
    dxLayoutItem11: TdxLayoutItem;
    edHomePhone: TcxDBButtonEdit;
    edMobilePhone: TcxDBButtonEdit;
    dxLayoutItem13: TdxLayoutItem;
    edEmail: TcxDBButtonEdit;
    dxLayoutItem14: TdxLayoutItem;
    edSkype: TcxDBButtonEdit;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    edDepartment: TcxDBLookupComboBox;
    dxLayoutItem16: TdxLayoutItem;
    edStatus: TcxDBImageComboBox;
    dxLayoutItem17: TdxLayoutItem;
    edHireDate: TcxDBDateEdit;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutEmptySpaceItem4: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem5: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem6: TdxLayoutEmptySpaceItem;
    lvlTask: TcxGridLevel;
    grTask: TcxGrid;
    dxLayoutItem20: TdxLayoutItem;
    tvEvaluation: TcxGridDBTableView;
    lvlEvaluation: TcxGridLevel;
    grEvaluation: TcxGrid;
    dxLayoutItem21: TdxLayoutItem;
    dxLayoutItem19: TdxLayoutItem;
    cxEditRepository1: TcxEditRepository;
    edrepPrefix: TcxEditRepositoryImageComboBoxItem;
    edrepStatus: TcxEditRepositoryImageComboBoxItem;
    clmCreatedOn: TcxGridDBColumn;
    clmEvaluationSubject: TcxGridDBColumn;
    clmManager: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyleBoldColumn: TcxStyle;
    edrepPriority: TcxEditRepositoryImageComboBoxItem;
    tvTask: TcxGridDBTableView;
    clmPriority: TcxGridDBColumn;
    clmDueDate: TcxGridDBColumn;
    clmSubject: TcxGridDBColumn;
    clmCompletion: TcxGridDBColumn;
    clmDescription: TcxGridDBColumn;
    gdFirstName: TdxGuide;
    gdLastName: TdxGuide;
    gdFullName: TdxGuide;
    gdBirthDate: TdxGuide;
    gdTitle: TdxGuide;
    gdPrefix: TdxGuide;
    gdPhoto: TdxGuide;
    gdDepartment: TdxGuide;
    gdStatus: TdxGuide;
    gdHireDate: TdxGuide;
    gdAddressLine: TdxGuide;
    gdAddressCity: TdxGuide;
    gdState: TdxGuide;
    gdZipCode: TdxGuide;
    gdHomePhone: TdxGuide;
    gdMobilePhone: TdxGuide;
    gdEmail: TdxGuide;
    gdSkype: TdxGuide;
    gdPriority: TdxGuide;
    gdDueDate: TdxGuide;
    gdSubject: TdxGuide;
    gdCompletion: TdxGuide;
    gdCreatedOn: TdxGuide;
    gdEvaluationSubject: TdxGuide;
    gdManager: TdxGuide;
    procedure amAdornersGuideGetCalloutPopupControl(
      AManager: TdxUIAdornerManager; AGuide: TdxGuide;
      out AControl: TWinControl);
  private
    FGuidesLabel: TcxLabel;
  protected
    function FindColumnByGuideName(AName: string; AView: TcxGridTableView): TcxGridColumn;
    function FindTaskColumnByGuideName(AName: string): TcxGridColumn;
    function FindEvaluationColumnByGuideName(AName: string): TcxGridColumn;
    function GetDescription: string; override;
    procedure InitGuidesLabel;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

implementation

uses
  uStrsConst, dxFrames, FrameIDs;

{$R *.dfm}

procedure TfrmContactDetails.amAdornersGuideGetCalloutPopupControl(AManager: TdxUIAdornerManager; AGuide: TdxGuide;
  out AControl: TWinControl);

  function GetInplaceEditorCaption(const APropertiesClassName: string): string;
  begin
    Result := 'In-place Editor: ' + StringReplace(APropertiesClassName, 'Properties', '', []);
  end;

begin
  AControl := FGuidesLabel;
  case AGuide.Tag of
    1:
      FGuidesLabel.Caption := 'Editor: ' + TdxAdornerTargetElementControl(AGuide.TargetElement).Control.ClassName;
    2:
      FGuidesLabel.Caption := GetInplaceEditorCaption(FindTaskColumnByGuideName(AGuide.Name).GetProperties.ClassName);
    3:
      FGuidesLabel.Caption := GetInplaceEditorCaption(FindEvaluationColumnByGuideName(AGuide.Name).GetProperties.ClassName);
  end;
end;

constructor TfrmContactDetails.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  dmMain.OpenContactDetailsDemoData;
  FGuidesLabel := TcxLabel.Create(nil);
  InitGuidesLabel;
end;

destructor TfrmContactDetails.Destroy;
begin
  FreeAndNil(FGuidesLabel);
  inherited Destroy;
end;

function TfrmContactDetails.FindColumnByGuideName(AName: string; AView: TcxGridTableView): TcxGridColumn;
const
  AColumnPrefixCharCount = 3;
  AGuidePrefixCharCount = 2;
var
  I: Integer;
  AColumnName: string;
begin
  Delete(AName, 1, AGuidePrefixCharCount);
  for I := 0 to AView.ColumnCount - 1 do
  begin
    Result := AView.Columns[I];
    AColumnName := Result.Name;
    Delete(AColumnName, 1, AColumnPrefixCharCount);
    if AnsiCompareText(AName, AColumnName) = 0 then
      Exit;
  end;
  Result := nil;
end;

function TfrmContactDetails.FindTaskColumnByGuideName(AName: string): TcxGridColumn;
begin
  Result := FindColumnByGuideName(AName, tvTask);
end;

function TfrmContactDetails.FindEvaluationColumnByGuideName(AName: string): TcxGridColumn;
begin
  Result := FindColumnByGuideName(AName, tvEvaluation);
end;

function TfrmContactDetails.GetDescription: string;
begin
  Result := sdxFrameContactDetailsDescription;
end;

procedure TfrmContactDetails.InitGuidesLabel;
begin
  FGuidesLabel.AutoSize := False;
  FGuidesLabel.Properties.Alignment.Horz := taCenter;
  FGuidesLabel.Properties.Alignment.Vert := taVCenter;
  FGuidesLabel.Width := 250;
  FGuidesLabel.Transparent := True;
end;

initialization
  dxFrameManager.RegisterFrame(ContactDetailsFrameID, TfrmContactDetails, ContactDetailsFrameName, -1,
    OverviewGroupIndex, -1, -1);

end.
