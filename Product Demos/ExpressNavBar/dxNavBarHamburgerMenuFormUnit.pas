unit dxNavBarHamburgerMenuFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxNavBarControlBaseFormUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxLayoutContainer, cxClasses, dxLayoutLookAndFeels, dxLayoutControl, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB, cxDBData, cxImage, cxLabel,
  cxGridLevel, cxGridBandedTableView, cxGridDBBandedTableView, cxGridViewLayoutContainer, cxGridLayoutView,
  cxGridDBLayoutView, cxGridCustomLayoutView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGrid, MainData, cxTextEdit, dxLayoutcxEditAdapters, cxContainer, cxDBLabel, cxDBEdit,
  cxHyperLinkEdit, dxNavBar, Vcl.ExtCtrls, dxNavBarCollns, dxNavBarBase, Vcl.ImgList, cxImageList,
  Vcl.Menus, cxScheduler, cxSchedulerStorage, cxSchedulerCustomControls, cxSchedulerCustomResourceView,
  cxSchedulerDayView, cxSchedulerAgendaView, cxSchedulerDateNavigator, cxSchedulerHolidays, cxSchedulerTimeGridView,
  cxSchedulerUtils, cxSchedulerWeekView, cxSchedulerYearView, cxSchedulerGanttView, cxSchedulerRecurrence,
  dxBarBuiltInMenu, cxSchedulerTreeListBrowser, cxSchedulerRibbonStyleEventEditor, dxSkinsCore, dxSkinsDefaultPainters,
  cxGroupBox, cxCheckGroup, cxImageComboBox, cxCalendar, Datasnap.DBClient, cxMemo, cxRichEdit, dxMessageDialog,
  cxGridDBDataDefinitions, dxmdaset, dxCalloutPopup, dxLayoutControlAdapters, cxPC, dxFormattedLabel,
  cxGridWinExplorerView, cxGridDBWinExplorerView, dxScrollbarAnnotations, System.ImageList;

const
  bkRoot    = 0;
  bkInbox   = 1;
  bkSent    = 2;
  bkDeleted = 3;
  bkDrafts  = 4;

type

  TfrmHamburgerMenu = class(TdxNavBarControlDemoUnitForm, IcxLookAndFeelNotificationListener)
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Picture: TcxGridDBColumn;
    cxGrid1DBTableView1FullName: TcxGridDBColumn;
    cxGrid1DBTableView1Email: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    dxLayoutItem1: TdxLayoutItem;
    lgContact: TdxLayoutGroup;
    lgScheduler: TdxLayoutGroup;
    cxDBImage1: TcxDBImage;
    dblEmployeeName: TcxDBLabel;
    dblEmployeePosition: TcxDBLabel;
    lgEmployee: TdxLayoutGroup;
    liImage: TdxLayoutItem;
    liName: TdxLayoutItem;
    liPosition: TdxLayoutItem;
    lgEmployeeInfo: TdxLayoutGroup;
    lgEmployeeDetails: TdxLayoutGroup;
    dblEmployeeHireDate: TcxDBLabel;
    dxLayoutItem2: TdxLayoutItem;
    dblEmployeeBirthday: TcxDBLabel;
    dxLayoutItem3: TdxLayoutItem;
    lgEmployeeContact: TdxLayoutGroup;
    liEmployeeCity: TdxLayoutItem;
    liEmployeeHome: TdxLayoutItem;
    liEmployeeMobile: TdxLayoutItem;
    dblEmployeeCity: TcxDBLabel;
    dblEmployeeHome: TcxDBLabel;
    dblEmployeeMobile: TcxDBLabel;
    cxGrid1DBTableView1Phones: TcxGridDBColumn;
    dxNavBar1: TdxNavBar;
    liLeftMenu: TdxLayoutItem;
    nbgContact: TdxNavBarGroup;
    nbgScheduler: TdxNavBarGroup;
    nbgMail: TdxNavBarGroup;
    nbgSettings: TdxNavBarGroup;
    nbiNewContact: TdxNavBarItem;
    Contacts: TdxNavBarGroup;
    nbgFilterContacts: TdxNavBarGroup;
    nbiFilterContactsAll: TdxNavBarItem;
    nbiFilterContactsSales: TdxNavBarItem;
    nbiFilterContactsSupport: TdxNavBarItem;
    nbiFilterContactsShipping: TdxNavBarItem;
    nbiFilterContactsEngineering: TdxNavBarItem;
    nbiFilterContactsHumanResources: TdxNavBarItem;
    nbiFilterContactsManagement: TdxNavBarItem;
    nbiFilterContactsIT: TdxNavBarItem;
    nbInplaceManageAccounts: TdxNavBarItem;
    nbInplacePersonalization: TdxNavBarItem;
    nbInplaceAutomaticReplies: TdxNavBarItem;
    nbInplaceFocusedInbox: TdxNavBarItem;
    nbInplaceMessageList: TdxNavBarItem;
    nbInplaceReadingPane: TdxNavBarItem;
    nbInplaceSignature: TdxNavBarItem;
    nbInplaceNotifications: TdxNavBarItem;
    nbInplaceAbout: TdxNavBarItem;
    ilMedium: TcxImageList;
    nbiSchedulerNewEvent: TdxNavBarItem;
    nbiSchedulerCalendar: TdxNavBarItem;
    nbiSchedulerBirthDate: TdxNavBarItem;
    nbiSchedulerMSCalendar: TdxNavBarItem;
    nbgDevExpressAccount: TdxNavBarGroup;
    nbgMicrosoftAccount: TdxNavBarGroup;
    nbiMailNew: TdxNavBarItem;
    nbgAccount: TdxNavBarGroup;
    nbgFilterMailList: TdxNavBarGroup;
    nbiMailAccount1: TdxNavBarItem;
    nbiMailAccount2: TdxNavBarItem;
    nbiMailAccount3: TdxNavBarItem;
    nbiFilterMailAll: TdxNavBarItem;
    nbiFilterMailRead: TdxNavBarItem;
    nbiFilterMailToday: TdxNavBarItem;
    nbiFilterMailYesterday: TdxNavBarItem;
    nbiFilterMailImportance: TdxNavBarItem;
    lgContentCenter: TdxLayoutGroup;
    dxLayoutGroup1: TdxLayoutGroup;
    dxNavBar1Item1: TdxNavBarItem;
    dxNavBar1Item2: TdxNavBarItem;
    dxNavBar1Item3: TdxNavBarItem;
    dxNavBar1Group1: TdxNavBarGroup;
    dxNavBar1Group1Control: TdxNavBarGroupControl;
    lcContactsGroup_Root: TdxLayoutGroup;
    lcContacts: TdxLayoutControl;
    dxLayoutCheckBoxItem1: TdxLayoutCheckBoxItem;
    dxLayoutCheckBoxItem2: TdxLayoutCheckBoxItem;
    dxLayoutCheckBoxItem3: TdxLayoutCheckBoxItem;
    dxLayoutEmptySpaceItem1: TdxLayoutEmptySpaceItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutCxLookAndFeel2: TdxLayoutCxLookAndFeel;
    dxLayoutLookAndFeelList2: TdxLayoutLookAndFeelList;
    dxLayoutCxLookAndFeel1: TdxLayoutCxLookAndFeel;
    lgMail: TdxLayoutGroup;
    grMain: TcxGrid;
    tvMain: TcxGridDBTableView;
    dbcID: TcxGridDBColumn;
    dbcBoxID: TcxGridDBColumn;
    dbcPriority: TcxGridDBColumn;
    dbcAttachment: TcxGridDBColumn;
    dbcIsUnread: TcxGridDBColumn;
    dbcDateOnly: TcxGridDBColumn;
    dbcDate: TcxGridDBColumn;
    dbcSubject: TcxGridDBColumn;
    dbcFrom: TcxGridDBColumn;
    dbcContentFileName: TcxGridDBColumn;
    dbcAttachmentID: TcxGridDBColumn;
    dbcIsAttachment: TcxGridDBColumn;
    dbcContent: TcxGridDBColumn;
    grMainLevel1: TcxGridLevel;
    dxLayoutItem6: TdxLayoutItem;
    cxreMain: TcxRichEdit;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem8: TdxLayoutItem;
    lblSubject: TcxLabel;
    dxLayoutItem9: TdxLayoutItem;
    liFrom: TdxLayoutLabeledItem;
    liDate: TdxLayoutLabeledItem;
    liSpace: TdxLayoutEmptySpaceItem;
    dxLayoutGroup3: TdxLayoutGroup;
    dxNavBar1Item4: TdxNavBarItem;
    Scheduler: TcxScheduler;
    dxLayoutItem5: TdxLayoutItem;
    dxCalloutPopup1: TdxCalloutPopup;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    lgTopMenu: TdxLayoutGroup;
    liTopMenu: TdxLayoutItem;
    cxGroupBox2: TcxGroupBox;
    dxNavBarSettings: TdxNavBar;
    dxNavBarSettingsGroup1: TdxNavBarGroup;
    dxNavBarSettingsItem1: TdxNavBarItem;
    dxNavBarSettingsItem2: TdxNavBarItem;
    dxNavBarSettingsItem3: TdxNavBarItem;
    dxNavBarSettingsItem4: TdxNavBarItem;
    dxNavBarSettingsItem5: TdxNavBarItem;
    dxNavBarSettingsItem6: TdxNavBarItem;
    dxNavBarSettingsItem7: TdxNavBarItem;
    dxNavBarSettingsItem8: TdxNavBarItem;
    dxNavBarSettingsItem9: TdxNavBarItem;
    dxLayoutImageItem1: TdxLayoutImageItem;
    dxLayoutImageItem2: TdxLayoutImageItem;
    dxLayoutImageItem3: TdxLayoutImageItem;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutImageItem4: TdxLayoutImageItem;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    flEMail: TdxFormattedLabel;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    DataSource1: TDataSource;
    flSkype: TdxFormattedLabel;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cxDBLabel1: TcxDBLabel;
    dxLayoutItem11: TdxLayoutItem;
    cxGrid1DBTableView1MobilePhone: TcxGridDBColumn;
    cxGrid1DBTableView1HomePhone: TcxGridDBColumn;
    ContactsTitleColumn: TcxGridDBColumn;
    procedure nbgContactClick(Sender: TObject);
    procedure nbgSchedulerClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure dxNavBar1OnCustomDrawLinkSelection(Sender: TObject; ACanvas: TCanvas; AViewInfo: TdxNavBarLinkViewInfo;
      var AHandled: Boolean);
    procedure nbgMailClick(Sender: TObject);

    function GetController: TcxGridTableController;
    function GetDataController: TcxGridDBDataController;

    procedure tvMainFocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
    procedure tvMainDataControllerGroupingChanged(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbcDateOnlyGetFilterValues(Sender: TcxCustomGridTableItem; AValueList: TcxDataFilterValueList);
    procedure nbiSchedulerNewEventClick(Sender: TObject);
    procedure dxNavBar1Item4Click(Sender: TObject);
    procedure nbiFilterContactsITClick(Sender: TObject);
    procedure nbiFilterContactsAllClick(Sender: TObject);
    procedure nbiFilterContactsManagementClick(Sender: TObject);
    procedure nbiFilterContactsSupportClick(Sender: TObject);
    procedure nbiFilterContactsHumanResourcesClick(Sender: TObject);
    procedure nbiFilterContactsSalesClick(Sender: TObject);
    procedure nbiFilterContactsEngineeringClick(Sender: TObject);
    procedure nbiFilterContactsShippingClick(Sender: TObject);
    procedure nbiFilterMailReadClick(Sender: TObject);
    procedure nbiFilterMailAllClick(Sender: TObject);
    procedure nbiFilterMailImportanceClick(Sender: TObject);
    procedure nbiFilterMailTodayClick(Sender: TObject);
    procedure nbiFilterMailYesterdayClick(Sender: TObject);
    procedure dxNavBar1GetOverlaySize(Sender: TObject; var AWidth, AHeight: Integer);
    procedure nbgContactSelectedLinkChanged(Sender: TObject);
    procedure nbgSchedulerSelectedLinkChanged(Sender: TObject);
    procedure nbgMailSelectedLinkChanged(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure cxGrid1DBTableView1PhonesGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer;
      var AText: string);

    property Controller: TcxGridTableController read GetController;
    property DataController: TcxGridDBDataController read GetDataController;
  protected
    FLockedCount: Integer;
    FPreviewRecordID: Integer;
    FLinkSelectionColor: TColor;

    function GetDescription: string; override;
    function GetNavBarControl: TdxNavBar; override;

    // IcxLookAndFeelNotificationListener
    function GetObject: TObject;
    procedure MasterLookAndFeelChanged(Sender: TcxLookAndFeel; AChangedValues: TcxLookAndFeelValues);
    procedure MasterLookAndFeelDestroying(Sender: TcxLookAndFeel);

    procedure PerformWithLayoutLocking(AProc: TProc);

    function InitializeRich(ARich: TcxRichEdit; AFileName: string; AContinuationLoad: Boolean = False): Boolean;
    function GetLabelCaption(const ACaption: string): string;
    function GetFocusedMailBoxKind: Integer;
    procedure LookAndFeelChanged;
    procedure PopulateRichWithChildrenMailsList;
    procedure SetColumnsCaptions;
    procedure SetContactsFilterValues(const AValues: array of string);
    procedure SetMailFilterValues(AColumn: TcxGridDBColumn; const AValues: array of Variant);
    procedure UpdateMailPreview;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;

    class function GetID: Integer; override;
    class function GetLoadingInfo: string; override;
  end;

implementation

{$R *.dfm}

uses
  dxCore,
  cxGeometry,
  cxSchedulerDialogs,
  LocalizationStrs,
  dxSkinsdxNavBarHamburgerMenuPainter;

procedure TfrmHamburgerMenu.cxGrid1DBTableView1PhonesGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer;
  var AText: string);
begin
  AText :=
    '   Home:  ' + cxGrid1DBTableView1.DataController.DisplayTexts[ARecordIndex, cxGrid1DBTableView1HomePhone.Index]
    + dxCRLF + dxCRLF +
    '   Mobile: ' + cxGrid1DBTableView1.DataController.DisplayTexts[ARecordIndex, cxGrid1DBTableView1MobilePhone.Index];
end;

procedure TfrmHamburgerMenu.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  flEMail.Caption := '[url=mailto:' + DataModule2.mdEmployeesEmail.Value + ']' + DataModule2.mdEmployeesEmail.Value + '[/url]';
  flSkype.Caption := '[url=' + DataModule2.mdEmployeesSkype.Value + ']' + DataModule2.mdEmployeesSkype.Value + '[/url]';
end;

procedure TfrmHamburgerMenu.dbcDateOnlyGetFilterValues(Sender: TcxCustomGridTableItem;
  AValueList: TcxDataFilterValueList);
var
  I: Integer;
  AFutureFilters: set of 1..255;
  ACurrValue: Integer;
begin
  AFutureFilters := [Integer(foTomorrow), Integer(foNext7Days), Integer(foNextWeek), Integer(foNext14Days),
    Integer(foNextTwoWeeks), Integer(foNext30Days), Integer(foNextMonth), Integer(foNextYear),
     Integer(foInFuture)];

  for I := AValueList.Count - 1 downto 0 do
    if (AValueList[I].Kind = fviSpecial) and (VarType(AValueList[I].Value) = varByte) then
    begin
      ACurrValue := AValueList[I].Value;
      if ACurrValue in AFutureFilters then
        AValueList.Delete(I);
    end;
end;

procedure TfrmHamburgerMenu.dxNavBar1GetOverlaySize(Sender: TObject; var AWidth, AHeight: Integer);
begin
  AHeight := lgContentCenter.ViewInfo.Bounds.Bottom - dxNavBar1.Top;
end;

procedure TfrmHamburgerMenu.dxNavBar1Item4Click(Sender: TObject);
begin
  dxCalloutPopup1.Popup(lcMain, lgMainGroup.ViewInfo.Bounds);
end;

procedure TfrmHamburgerMenu.dxNavBar1OnCustomDrawLinkSelection(Sender: TObject; ACanvas: TCanvas;
  AViewInfo: TdxNavBarLinkViewInfo; var AHandled: Boolean);
var
  R: TRect;
  AStates: TdxNavBarObjectStates;
  APainter: TdxNavBarHamburgerMenuPainter;
begin
  APainter := AViewInfo.ViewInfo.Painter as TdxNavBarHamburgerMenuPainter;
  AStates := AViewInfo.State;
  AHandled := sSelected in AStates;
  if AHandled then
  begin
    Exclude(AStates, sSelected);
    APainter.DrawItemState(AViewInfo, AViewInfo.SelectionRect, AStates);
    R := AViewInfo.Rect;
    R.Right := R.Left + 3;
    ACanvas.Brush.Color := FLinkSelectionColor;
    ACanvas.FillRect(R);
  end;
end;

function TfrmHamburgerMenu.GetController: TcxGridTableController;
begin
  Result := tvMain.Controller;
end;

function TfrmHamburgerMenu.GetDataController: TcxGridDBDataController;
begin
  Result := TcxGridDBDataController(grMain.ActiveView.DataController);
end;

function TfrmHamburgerMenu.InitializeRich(ARich: TcxRichEdit; AFileName: string;
  AContinuationLoad: Boolean = False): Boolean;

  procedure ShowMessageErrorLoading(const AFileName: string);
  begin
    dxMessageDlg(Format('Error at loading from "%s"', [AFileName]), mtError, [mbOK]);
  end;

  procedure ShowMessageFileNotFound(const AFileName: string);
  begin
    dxMessageDlg(Format('File "%s" not found', [AFileName]), mtError, [mbOK]);
  end;

begin
  Result := False;
  if not AContinuationLoad then
    ARich.Lines.Clear;
  ARich.Properties.StreamModes := [resmSelection];
  if FileExists(AFileName) then
    try
      ARich.Lines.LoadFromFile(AFileName);
      Result := True;
    except
      ShowMessageErrorLoading(AFileName);
    end
  else
    ShowMessageFileNotFound(AFileName);
  ARich.Properties.StreamModes := [];
end;

function TfrmHamburgerMenu.GetLabelCaption(const ACaption: string): string;
begin
  Result := StringReplace(ACaption, '&', '&&', [rfReplaceAll, rfIgnoreCase]);
end;

procedure TfrmHamburgerMenu.PopulateRichWithChildrenMailsList;

  procedure PrepareRich(AList: TList);
  var
    I: Integer;
  begin
    cxreMain.Lines.Clear;
    for I := 0 to AList.Count - 1 do
      InitializeRich(cxreMain, ExtractFilePath(Application.ExeName) + 'Data\MailsListFmt.rtf', True);
  end;

  procedure ClearMailCaption(ACount: Integer);
  var
    ACaption: string;
  begin
    if ACount = 1 then
      ACaption := Format('%d %s', [ACount, cxGetResourceString(@sMessage)])
    else
      ACaption := Format('%d %s', [ACount, cxGetResourceString(@sMessages)]);
    lblSubject.Caption := ACaption;
    liSpace.Visible := False;
    liFrom.Visible := False;
    liDate.Visible := False;
  end;

  procedure ReplaceInRich(ARich: TcxRichEdit; const ATokenStr, S: string;
    AContinuationFind: Boolean = False);
  var
    ASelLength: Integer;
    AStartPosition: Integer;
  begin
    ASelLength := Length(ATokenStr);
    AStartPosition := 0;
    if AContinuationFind then
      AStartPosition := ARich.CursorPos;
    ARich.SelStart := ARich.FindTexT(ATokenStr, AStartPosition,
      Length(ARich.Text) - AStartPosition, []);
    ARich.SelLength := ASelLength;
    ARich.SelText := S;
  end;

var
  AList: TList;
  I, AGroupIndex, AIndex: Integer;
  AFrom, ASubject, ADate: string;
begin
  FPreviewRecordID := -1;
  AList := TList.Create;
  try
    cxreMain.Lines.BeginUpdate;
    try
      AGroupIndex := DataController.Groups.DataGroupIndexByRowIndex[Controller.FocusedRowIndex];
      DataController.Groups.LoadRecordIndexes(AList, AGroupIndex);
      ClearMailCaption(AList.Count);
      PrepareRich(AList);
      for I := 0 to AList.Count - 1 do
      begin
        AIndex := Integer(AList[I]);
        ASubject := DataController.Values[AIndex, dbcSubject.Index];
        AFrom := DataController.GetDisplayText(AIndex, dbcFrom.Index);
        ADate := DateTimeToStr(DataController.Values[AIndex, dbcDate.Index]);
        ReplaceInRich(cxreMain, '__From__', AFrom + ' (' + ADate + ')', True);
        ReplaceInRich(cxreMain, '__Subject__', ASubject, True);
      end;
    finally
      cxreMain.Lines.EndUpdate;
    end;
  finally
    FreeAndNil(AList);
  end;
end;

procedure TfrmHamburgerMenu.tvMainDataControllerGroupingChanged(Sender: TObject);
begin
  DataController.Groups.FullExpand;
end;

procedure TfrmHamburgerMenu.tvMainFocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  UpdateMailPreview;
end;

procedure TfrmHamburgerMenu.UpdateMailPreview;

  procedure ClearMailCaption(ACount: Integer);
  var
    ACaption: string;
  begin
    if ACount = 1 then
      ACaption := Format('%d %s', [ACount, cxGetResourceString(@sMessage)])
    else
      ACaption := Format('%d %s', [ACount, cxGetResourceString(@sMessages)]);
    lblSubject.Caption := ACaption;
    liSpace.Visible := False;
    liFrom.Visible := False;
    liDate.Visible := False;
  end;

begin
  ShowHourglassCursor;
  lcMain.BeginUpdate;
  try
    if DataController.FocusedRowIndex < 0 then
    begin
      cxreMain.Lines.Clear;
      ClearMailCaption(0);
      FPreviewRecordID := -1;
    end
    else
    begin
      with DataController do
      begin
        if GetRowInfo(FocusedRowIndex).Level < Groups.GroupingItemCount then
          PopulateRichWithChildrenMailsList
        else
          if FPreviewRecordID <> Values[FocusedRecordIndex, dbcID.Index] then
          begin
            lblSubject.Caption := GetLabelCaption(Values[FocusedRecordIndex, dbcSubject.Index]);
            if not liSpace.Visible then
            begin
              liSpace.Visible := True;
              liFrom.Visible := True;
              liDate.Visible := True;
            end;
            liFrom.CaptionOptions.Text := Format('%s: %s', [dbcFrom.Caption,
              DataModule2.ReplaceEmailsWithContacts(VarToStr(Values[FocusedRecordIndex, dbcFrom.Index]))]);
            liDate.CaptionOptions.Text := Format('%s: %s', [dbcDate.Caption,
              DateTimeToStr(Values[FocusedRecordIndex, dbcDate.Index])]);
            if not VarIsNull(Values[FocusedRecordIndex, dbcContent.Index]) then
              cxreMain.Text := Values[FocusedRecordIndex, dbcContent.Index]
            else
              cxreMain.Text := '';
            FPreviewRecordID := Values[FocusedRecordIndex, dbcID.Index];
          end;
      end;
    end;
  finally
    lcMain.EndUpdate;
    HideHourglassCursor;
  end;
end;

procedure TfrmHamburgerMenu.SetColumnsCaptions;

  procedure SetCaptions(AFromCaption, ADateCaption: string);
  begin
    dbcFrom.Caption := AFromCaption;
    dbcDateOnly.Caption := ADateCaption;
  end;

begin
  SetCaptions(cxGetResourceString(@sFrom), cxGetResourceString(@sReceived));
  dbcDate.Caption := cxGetResourceString(@sDate);
end;

procedure TfrmHamburgerMenu.SetContactsFilterValues(const AValues: array of string);

  procedure SetFilterValues(ADataController: TcxGridDBDataController; AColumn: TcxGridDBColumn;
    const AValues: array of string);
  var
    I, AValueCount: Integer;
    AItemList: TcxFilterCriteriaItemList;
  begin
    ADataController.BeginUpdate;
    ADataController.Filter.BeginUpdate;
    try
      ADataController.Filter.Root.Clear;
      AValueCount := Length(AValues);
      if AValueCount > 0 then
      begin
        AItemList := ADataController.Filter.Root.AddItemList(fboOr);
        for I := 0 to AValueCount - 1 do
          AItemList.AddItem(AColumn, foLike, '%' + AValues[I] + '%', '%' + AValues[I] + '%');
      end;
    finally
      ADataController.Filter.EndUpdate;
      ADataController.Filter.Active := True;
      ADataController.EndUpdate;
      ADataController.Groups.FullExpand;
    end;
  end;

begin
  SetFilterValues(cxGrid1DBTableView1.DataController, ContactsTitleColumn, AValues);
  cxGrid1DBTableView1.ViewData.Expand(True);
end;

procedure TfrmHamburgerMenu.SetMailFilterValues(AColumn: TcxGridDBColumn; const AValues: array of Variant);
var
  I, AValueCount: Integer;
  ADataController: TcxGridDBDataController;
  AItemList: TcxFilterCriteriaItemList;
begin
  ADataController := tvMain.DataController;
  ADataController.BeginUpdate;
  ADataController.Filter.BeginUpdate;
  try
    ADataController.Filter.Root.Clear;
    AValueCount := Length(AValues);
    if AValueCount > 0 then
    begin
      AItemList := ADataController.Filter.Root.AddItemList(fboOr);
      for I := 0 to AValueCount - 1 do
        AItemList.AddItem(AColumn, foEqual, AValues[I], '');
    end;
  finally
    ADataController.Filter.EndUpdate;
    ADataController.Filter.Active := True;
    ADataController.EndUpdate;
    ADataController.Groups.FullExpand;
  end;
end;

function TfrmHamburgerMenu.GetFocusedMailBoxKind: Integer;
begin
  Result := 11;
end;

procedure TfrmHamburgerMenu.LookAndFeelChanged;
begin
  PerformWithLayoutLocking(procedure
    begin
      dxLayoutCxLookAndFeel2.ItemOptions.CaptionOptions.TextColor := dxNavBar1.DefaultStyles.Item.Font.Color;
      dxLayoutCxLookAndFeel2.ItemOptions.CaptionOptions.TextDisabledColor := dxLayoutCxLookAndFeel2.ItemOptions.CaptionOptions.TextColor;
      dxLayoutCxLookAndFeel2.ItemOptions.CaptionOptions.TextHotColor := dxLayoutCxLookAndFeel2.ItemOptions.CaptionOptions.TextColor;
      dxLayoutStandardLookAndFeel1.GroupOptions.Color := dxNavBar1.ViewInfo.BgBackColor; 
    end);
  FLinkSelectionColor := dxNavBar1.DefaultStyles.Item.Font.Color;
end;

procedure TfrmHamburgerMenu.FormCreate(Sender: TObject);
begin
  inherited;
  nbgContactClick(Self);
  dbcSubject.Caption := cxGetResourceString(@sSubjectColumn);
  SetColumnsCaptions;
  tvMain.DataController.Summary.SummaryGroups[0].SummaryItems[0].Format := Format('# %s', [cxGetResourceString(@sMessages)]);

  dxNavBar1.OptionsBehavior.Common.AllowExpandAnimation := False;
  dxNavBar1.BeginUpdate;
  try
    dxNavBar1.ActiveGroup := nbgContact;
    dxNavBar1.OptionsBehavior.HamburgerMenu.Collapsed := False;
    dxNavBar1.OptionsView.HamburgerMenu.ChildLevelIndent := 0;
    dxNavBar1.OptionsView.HamburgerMenu.SpaceBetweenGroups := 5;
    liTopMenu.CaptionOptions.Visible := False;
    lgTopMenu.Visible := False;
  finally
    dxNavBar1.EndUpdate;
  end;
  dxNavBar1.OptionsBehavior.Common.AllowExpandAnimation := True;

  DataController.Groups.FullExpand;
  Scheduler.GoToDate(Scheduler.SelectedDays[0], vmMonth);

  LookAndFeelChanged;
  UpdateMailPreview;
end;

procedure TfrmHamburgerMenu.FormResize(Sender: TObject);
begin
  PerformWithLayoutLocking(procedure
    var
      ADisplayMode: TdxNavBarHamburgerMenuDisplayMode;
      ANeedExpand: Boolean;
    begin
      if Width < ScaleFactor.Apply(800) then
      begin
        liLeftMenu.Control := nil;
        liLeftMenu.Visible := False;
        lgTopMenu.Visible := True;
        liTopMenu.Control := dxNavBar1;
        liTopMenu.ControlOptions.ShowBorder := False;
        dxNavBar1.OptionsBehavior.HamburgerMenu.DisplayMode := dmOverlayMinimal;
        dxLayoutStandardLookAndFeel1.GroupOptions.Color := dxNavBar1.ViewInfo.BgBackColor; 
      end
      else
      begin
        lgTopMenu.Visible := False;
        liTopMenu.Control := nil;
        liLeftMenu.Control := dxNavBar1;
        liLeftMenu.ControlOptions.ShowBorder := False;
        liLeftMenu.Visible := True;

        if Width >= ScaleFactor.Apply(950) then
          ADisplayMode := dmInline
        else
          ADisplayMode := dmOverlay;

        ANeedExpand := (dxNavBar1.OptionsBehavior.HamburgerMenu.DisplayMode <> ADisplayMode) and (ADisplayMode = dmInline);
        dxNavBar1.OptionsBehavior.HamburgerMenu.DisplayMode := ADisplayMode;
        if ANeedExpand then
          dxNavBar1.OptionsBehavior.HamburgerMenu.Collapsed := False;
      end;
    end);
end;

constructor TfrmHamburgerMenu.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  RootLookAndFeel.AddChangeListener(Self);
end;

destructor TfrmHamburgerMenu.Destroy;
begin
  RootLookAndFeel.RemoveChangeListener(Self);
  inherited Destroy;
end;

class function TfrmHamburgerMenu.GetID: Integer;
begin
  Result := 5;
end;

class function TfrmHamburgerMenu.GetLoadingInfo: string;
begin
  Result := 'Hamburger Menu Demo';
end;

function TfrmHamburgerMenu.GetDescription: string;
begin
  Result := 'This demo shows how to use the Hamburger Menu to mirror user experiences found in Windows 10 menus (display a' +
    ' button or a narrow strip of icons when collapsed). Resize the application window horizontally to see how the Hamburger' +
    ' Menu changes its display mode and expanded state. Click the hamburger button to switch the state or access menu commands.';
end;

function TfrmHamburgerMenu.GetNavBarControl: TdxNavBar;
begin
  Result := dxNavBar1;
end;

function TfrmHamburgerMenu.GetObject: TObject;
begin
  Result := Self;
end;

procedure TfrmHamburgerMenu.MasterLookAndFeelChanged(Sender: TcxLookAndFeel; AChangedValues: TcxLookAndFeelValues);
begin
  LookAndFeelChanged;
end;

procedure TfrmHamburgerMenu.MasterLookAndFeelDestroying(Sender: TcxLookAndFeel);
begin
// do nothing
end;

procedure TfrmHamburgerMenu.PerformWithLayoutLocking(AProc: TProc);
begin
  lcMain.BeginUpdate;
  try
    if Assigned(AProc) then
      AProc;
  finally
    lcMain.EndUpdate;
  end;
end;

procedure TfrmHamburgerMenu.nbgContactClick(Sender: TObject);
begin
  PerformWithLayoutLocking(procedure
    begin
      lgContact.Visible := True;
      lgScheduler.Visible := not lgContact.Visible;
      lgMail.Visible := not lgContact.Visible;
    end);
end;

procedure TfrmHamburgerMenu.nbgContactSelectedLinkChanged(Sender: TObject);
begin
  nbgContact.SelectedLinkIndex := -1;
end;

procedure TfrmHamburgerMenu.nbgMailClick(Sender: TObject);
begin
  PerformWithLayoutLocking(procedure
    begin
      lgMail.Visible := True;
      lgScheduler.Visible := not lgMail.Visible;
      lgContact.Visible := not lgMail.Visible;
    end);
end;

procedure TfrmHamburgerMenu.nbgMailSelectedLinkChanged(Sender: TObject);
begin
  nbgMail.SelectedLinkIndex := -1;
end;

procedure TfrmHamburgerMenu.nbgSchedulerClick(Sender: TObject);
begin
  PerformWithLayoutLocking(procedure
    begin
      lgScheduler.Visible := True;
      lgContact.Visible := not lgScheduler.Visible;
      lgMail.Visible := not lgScheduler.Visible;
    end);
end;

procedure TfrmHamburgerMenu.nbgSchedulerSelectedLinkChanged(Sender: TObject);
begin
  nbgScheduler.SelectedLinkIndex := -1;
end;

procedure TfrmHamburgerMenu.nbiFilterMailAllClick(Sender: TObject);
begin
  tvMain.DataController.Filter.Root.Clear;
end;

procedure TfrmHamburgerMenu.nbiFilterMailImportanceClick(Sender: TObject);
begin
  SetMailFilterValues(dbcPriority, [2]);
end;

procedure TfrmHamburgerMenu.nbiFilterMailReadClick(Sender: TObject);
begin
  SetMailFilterValues(dbcIsUnread, [0]);
end;

procedure TfrmHamburgerMenu.nbiFilterMailTodayClick(Sender: TObject);
begin
  SetMailFilterValues(dbcDate, [Date]);
end;

procedure TfrmHamburgerMenu.nbiFilterMailYesterdayClick(Sender: TObject);
begin
  SetMailFilterValues(dbcDate, [Date - 1]);
end;

procedure TfrmHamburgerMenu.nbiFilterContactsAllClick(Sender: TObject);
begin
  SetContactsFilterValues([]);
end;

procedure TfrmHamburgerMenu.nbiFilterContactsEngineeringClick(Sender: TObject);
begin
  SetContactsFilterValues(['Engin']);
end;

procedure TfrmHamburgerMenu.nbiFilterContactsHumanResourcesClick(Sender: TObject);
begin
  SetContactsFilterValues(['HR']);
end;

procedure TfrmHamburgerMenu.nbiFilterContactsITClick(Sender: TObject);
begin
  SetContactsFilterValues(['Admin']);
end;

procedure TfrmHamburgerMenu.nbiFilterContactsManagementClick(Sender: TObject);
begin
  SetContactsFilterValues(['CEO', 'COO', 'Director']);
end;

procedure TfrmHamburgerMenu.nbiFilterContactsSalesClick(Sender: TObject);
begin
  SetContactsFilterValues(['Sales', 'sales']);
end;

procedure TfrmHamburgerMenu.nbiFilterContactsShippingClick(Sender: TObject);
begin
  SetContactsFilterValues(['Shipping']);
end;

procedure TfrmHamburgerMenu.nbiFilterContactsSupportClick(Sender: TObject);
begin
  SetContactsFilterValues(['Support']);
end;

procedure TfrmHamburgerMenu.nbiSchedulerNewEventClick(Sender: TObject);
begin
  Scheduler.CreateEventUsingDialog(False, False);
end;

initialization
  TfrmHamburgerMenu.Register;

end.
