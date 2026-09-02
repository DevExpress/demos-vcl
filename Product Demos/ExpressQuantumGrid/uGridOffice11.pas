unit uGridOffice11;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxGridFrame, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, cxGridCustomTableView,
  cxGridTableView, cxControls, cxGridCustomView, cxClasses, cxGridLevel,
  Vcl.StdCtrls, cxGrid, Vcl.ExtCtrls, System.DateUtils, cxImageComboBox, Vcl.ImgList,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxLabel, cxNavigator, cxCalendar, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutContainer, cxButtons, dxLayoutControl, Vcl.ActnList, dxDateRanges, dxScrollbarAnnotations, dxLayoutLookAndFeels,
  System.Actions,  cxGroupBox, dxPanel, cxGeometry,
  dxFramedControl;

type
  TfrmGridOffice11 = class(TdxGridFrame)
    GridLevel: TcxGridLevel;
    TableView: TcxGridTableView;
    TableViewImportance: TcxGridColumn;
    TableViewUnreadRead: TcxGridColumn;
    TableViewFrom: TcxGridColumn;
    TableViewSubject: TcxGridColumn;
    TableViewReceived: TcxGridColumn;
    TableViewSent: TcxGridColumn;
    TableViewAttachment: TcxGridColumn;
    StyleRepository: TcxStyleRepository;
    UnreadStyle: TcxStyle;
    TableViewTo: TcxGridColumn;
    TableViewUnreadRead2: TcxGridColumn;
    procedure TableViewDataControllerCompare(
      ADataController: TcxCustomDataController; ARecordIndex1,
      ARecordIndex2, AItemIndex: Integer; const V1, V2: Variant;
      var Compare: Integer);
    procedure TableViewSentGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure TableViewStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure TableViewCellClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
      AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
  private
    procedure AddRecordIntoTable(ARecordIndex: Integer; AEmailTo: string);
    procedure AddRecordsIntoTable;
    function GetDateValueIndex(ADate: TDateTime): Integer;
    function GetGroupDateDisplayText(ADate: TDateTime): string;
  protected
    function GetDescription: string; override;
    function IsSupportGridsChanging: Boolean; override;
  public
    constructor Create(AOwner: TComponent); override;
  end;

implementation

uses
  maindata, dxFrames, FrameIDs, uStrsConst, cxVariants, cxFormats;

{$R *.dfm}

{ TfrmGridOffice11 }
procedure TfrmGridOffice11.AddRecordIntoTable(ARecordIndex: Integer; AEmailTo: string);

  function GetImportance: Integer;
  begin
    Result := Random(10);
    if(Result > 2) then
      Result := 1;
  end;

  function GetIcon: Boolean;
  begin
    if Random(4) > 1 then
      Result := False
    else
      Result := True;
  end;

  function GetSent: TDateTime;
  begin
    Result := Now;
    if(Random(6) = 1) then exit;
    Result := IncDay(Result, -Random(50));
    Result := IncHour(Result, -Random(4));
    Result := IncMinute(Result, -Random(60));
  end;

  function GetReceived(ASent: TDateTime): TDateTime;
  begin
    Result := IncMinute(ASent, 10 + Random(120));
  end;

  function GetSubject: string;
  const
    Count = 21;
    Subjects : Array[0..Count - 1] of string = (
  'Implementing Developer Express MasterView control into Accounting System.',
  'Web Edition: Data Entry Page. The issue with date validation.',
  'Payables Due Calculator. It is ready for testing.',
  'Web Edition: Search Page. It is ready for testing.',
  'Main Menu: Duplicate Items. Somebody has to review all menu items in the system.',
  'Receivables Calculator. Where can I found the complete specs',
  'Ledger: Inconsistency. Please fix it.',
  'Receivables Printing. It is ready for testing.',
  'Screen Redraw. Somebody has to look at it.',
  'Email System. What library we are going to use?',
  'Adding New Vendors Fails. This module doesn''t work completely!',
  'History. Will we track the sales history in our system?',
  'Main Menu: Add a File menu. File menu is missed!!!',
  'Currency Mask. The current currency mask in completely inconvenience.',
  'Drag & Drop. In the schedule module drag & drop is not available.',
  'Data Import. What competitors databases will we support?',
  'Reports. The list of incomplete reports.',
  'Data Archiving. This features is still missed in our application',
  'Email Attachments. How to add the multiple attachment? I did not find a way to do it.',
  'Check Register. We are using different paths for different modules.',
  'Data Export. Our customers asked for export into Excel');

  begin
    Result := Subjects[Random(Count)];
  end;

var
  ASent: TDateTime;
  AIsUnread: Boolean;
  ADataController: TcxGridDataController;
begin
  AIsUnread := GetIcon;
  ASent := GetSent;
  ADataController := TableView.DataController;
  ADataController.SetValue(ARecordIndex, TableViewImportance.Index, GetImportance);
  ADataController.SetValue(ARecordIndex, TableViewUnreadRead.Index, AIsUnread);
  ADataController.SetValue(ARecordIndex, TableViewAttachment.Index, GetIcon);
  ADataController.SetValue(ARecordIndex, TableViewFrom.Index, dmMain.cdsUsersFullName.Text);
  ADataController.SetValue(ARecordIndex, TableViewTo.Index, AEmailTo);
  ADataController.SetValue(ARecordIndex, TableViewSubject.Index, GetSubject);
  ADataController.SetValue(ARecordIndex, TableViewUnreadRead2.Index, AIsUnread);
  ADataController.SetValue(ARecordIndex, TableViewReceived.Index, GetReceived(ASent));
  ADataController.SetValue(ARecordIndex, TableViewSent.Index, ASent);
end;

procedure TfrmGridOffice11.AddRecordsIntoTable;
const
  RecordCount = 5;
var
  I, J: Integer;
  AEmailTo: string;
begin
  Randomize;
  TableView.BeginUpdate;
  dmMain.cdsUsers.DisableControls;
  try
    TableView.DataController.RecordCount := (dmMain.cdsUsers.RecordCount - 1) * RecordCount;
    dmMain.cdsUsers.RecNo := 1;
    AEmailTo := dmMain.cdsUsersFullName.Text;
    for I := 1 to dmMain.cdsUsers.RecordCount - 1 do
    begin
      dmMain.cdsUsers.RecNo := I + 1;
      for J := 0 to RecordCount - 1 do
        AddRecordIntoTable((I - 1) * RecordCount + J, AEmailTo);
    end;
  finally
    dmMain.cdsUsers.EnableControls;
    TableView.EndUpdate;
  end;
end;

constructor TfrmGridOffice11.Create(AOwner: TComponent);
var
  I: Integer;
begin
  inherited Create(AOwner);
  AddRecordsIntoTable;
  for I := 2 downto 0 do
    if TableView.ViewData.Rows[I] <> nil then
      TableView.ViewData.Rows[I].Expanded := True;
  TcxDateEditProperties(TableViewSent.Properties).DisplayFormat :=
    Format('%s %s', [dxFormatSettings.ShortDateFormat, dxFormatSettings.ShortTimeFormat]);
  TcxDateEditProperties(TableViewReceived.Properties).DisplayFormat := TcxDateEditProperties(TableViewSent.Properties).DisplayFormat;
end;

function TfrmGridOffice11.GetDateValueIndex(ADate: TDateTime): Integer;
begin
  case DaysBetween(Date, Trunc(ADate)) of
    0: Result := 0;
    1: Result := 1;
    2..6: Result := 2;
    7..13: Result := 3;
  else
    Result := 4;
  end;
end;

function TfrmGridOffice11.GetGroupDateDisplayText(ADate: TDateTime): string;
const
   DisplayText: Array[0..4] of string = ('Today', 'Yesterday', 'Last Week', 'Two Weeks Ago', 'Older');
begin
  Result := DisplayText[GetDateValueIndex(ADate)];
end;

function TfrmGridOffice11.GetDescription: string;
begin
  Result := sdxFrameOutlookStyleDescription;
end;

function TfrmGridOffice11.IsSupportGridsChanging: Boolean;
begin
  Result := False;
end;

procedure TfrmGridOffice11.TableViewCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  ADataController: TcxGridDataController;
  AFocusedRecordIndex: Integer;
  AIsUnread: Boolean;
begin
  AHandled := ACellViewInfo.Item = TableViewUnreadRead2;
  if AHandled then
  begin
    ADataController := TableView.DataController;
    AFocusedRecordIndex := ADataController.FocusedRecordIndex;
    AIsUnread := ADataController.GetValue(AFocusedRecordIndex, TableViewUnreadRead2.Index);
    ADataController.SetValue(AFocusedRecordIndex, TableViewUnreadRead.Index, not AIsUnread);
    ADataController.SetValue(AFocusedRecordIndex, TableViewUnreadRead2.Index, not AIsUnread);
  end;
end;

procedure TfrmGridOffice11.TableViewDataControllerCompare(
  ADataController: TcxCustomDataController; ARecordIndex1, ARecordIndex2,
  AItemIndex: Integer; const V1, V2: Variant; var Compare: Integer);
begin
  if ((AItemIndex = TableViewSent.Index) and (TableViewSent.GroupIndex <> -1)) or
    ((AItemIndex = TableViewReceived.Index) and (TableViewReceived.GroupIndex <> -1)) then
    Compare := GetDateValueIndex(V1) - GetDateValueIndex(V2)
  else
    Compare := VarCompare(V1, V2);
end;

procedure TfrmGridOffice11.TableViewSentGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  if ARecord is TcxGridGroupRow then
    AText := GetGroupDateDisplayText(ARecord.Values[Sender.Index]);
end;

procedure TfrmGridOffice11.TableViewStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
  if(ARecord is TcxGridDataRow) then
  begin
    if(ARecord.Values[TableViewUnreadRead.Index] = 0) then
      AStyle := UnreadStyle;
  end;
end;

initialization
  dxFrameManager.RegisterFrame(GridOffice11FrameID, TfrmGridOffice11, GridOffice11FrameName, GridOffice11ImageIndex,
    -1, SortingGroupingGroupIndex, -1);

end.
