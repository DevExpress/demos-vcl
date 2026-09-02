unit maindata;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Data.DB, Vcl.ImgList, cxDBEditRepository, cxEditRepositoryItems, cxEdit,
  Datasnap.DBClient, cxGraphics, cxClasses, dxmdaset, MidasLib, cxImageList, cxSchedulerStorage, System.ImageList;

const
  dxAddressDelimiter = ';';

type
  TDataModule2 = class(TDataModule)
    mdModels: TdxMemData;
    mdModelsID: TIntegerField;
    mdModelsTrademarkID: TIntegerField;
    mdModelsTrademark: TWideStringField;
    mdModelsName: TWideStringField;
    mdModelsFullName: TWideStringField;
    mdModelsModification: TWideStringField;
    mdModelsCategoryID: TIntegerField;
    mdModelsPrice: TBCDField;
    mdModelsMPG_City: TIntegerField;
    mdModelsMPG_Highway: TIntegerField;
    mdModelsDoors: TIntegerField;
    mdModelsBodyStyleID: TIntegerField;
    mdModelsCylinders: TIntegerField;
    mdModelsHorsepower: TWideStringField;
    mdModelsTorque: TWideStringField;
    mdModelsTransmission_Speeds: TWideStringField;
    mdModelsTransmission_Type: TIntegerField;
    mdModelsTransmissionTypeName: TStringField;
    mdModelsDescription: TWideMemoField;
    mdModelsImage: TBlobField;
    mdModelsPhoto: TBlobField;
    mdModelsDelivery_Date: TDateTimeField;
    mdModelsInStock: TBooleanField;
    mdModelsHyperlink: TStringField;
    mdBodyStyle: TdxMemData;
    mdBodyStyleID: TIntegerField;
    mdBodyStyleName: TWideStringField;
    mdCategory: TdxMemData;
    mdCategoryID: TIntegerField;
    mdCategoryName: TWideStringField;
    mdCategoryPicture: TBlobField;
    mdTrademark: TdxMemData;
    mdTrademarkID: TIntegerField;
    mdTrademarkName: TWideStringField;
    mdTrademarkSite: TWideStringField;
    mdTrademarkLogo: TBlobField;
    mdTrademarkDescription: TWideMemoField;
    mdTransmissionType: TdxMemData;
    mdTransmissionTypeID: TIntegerField;
    mdTransmissionTypeName: TWideStringField;
    dsModels: TDataSource;
    dsBodyStyle: TDataSource;
    dsCategory: TDataSource;
    dsTrademark: TDataSource;
    dsTransmissionType: TDataSource;
    mdEmployees: TdxMemData;
    mdEmployeesId: TIntegerField;
    mdEmployeesDepartment: TIntegerField;
    mdEmployeesTitle: TWideStringField;
    mdEmployeesStatus: TIntegerField;
    mdEmployeesHireDate: TDateTimeField;
    mdEmployeesPersonalProfile: TWideStringField;
    mdEmployeesFirstName: TWideStringField;
    mdEmployeesLastName: TWideStringField;
    mdEmployeesFullName: TWideStringField;
    mdEmployeesPrefix: TIntegerField;
    mdEmployeesHomePhone: TWideStringField;
    mdEmployeesMobilePhone: TWideStringField;
    mdEmployeesEmail: TWideStringField;
    mdEmployeesSkype: TWideStringField;
    mdEmployeesBirthDate: TDateTimeField;
    mdEmployeesPictureId: TIntegerField;
    mdEmployeesAddress_Line: TWideStringField;
    mdEmployeesAddress_City: TWideStringField;
    mdEmployeesAddress_State: TIntegerField;
    mdEmployeesAddress_ZipCode: TWideStringField;
    mdEmployeesAddress_Latitude: TFloatField;
    mdEmployeesAddress_Longitude: TFloatField;
    mdEmployeesProbationReason_Id: TIntegerField;
    mdEmployeesPicture: TBlobField;
    mdEmployeesFull_Address: TStringField;
    dsEmployees: TDataSource;
    clPersons: TClientDataSet;
    clPersonsCustomerId: TIntegerField;
    clPersonsMiddleName: TStringField;
    clPersonsEmail: TStringField;
    clPersonsPhone: TStringField;
    clPersonsComments: TMemoField;
    clPersonsPhoto: TBlobField;
    clPersonsDiscountLevel: TIntegerField;
    clPersonsFirstName: TStringField;
    clPersonsLastName: TStringField;
    clPersonsGender: TIntegerField;
    clPersonsBirthDate: TDateField;
    clPersonsAddressLine: TStringField;
    clPersonsCity: TStringField;
    clPersonsZipCode: TStringField;
    clPersonsState: TStringField;
    clPersonsNotes: TBlobField;
    clPersonsTitle: TIntegerField;
    clPersonsIsEmployee: TIntegerField;
    clPersonsName: TStringField;
    dsMails: TDataSource;
    clMails: TClientDataSet;
    clMailsID: TIntegerField;
    clMailsBoxID: TIntegerField;
    clMailsFrom: TStringField;
    clMailsTo: TStringField;
    clMailsPriority: TIntegerField;
    clMailsIsUnread: TBooleanField;
    clMailsAttachmentID: TIntegerField;
    clMailsSubject: TStringField;
    clMailsDate: TDateTimeField;
    clMailsContent: TBlobField;
    clMailsIsAttachment: TBooleanField;
    clMailsDateOnly: TDateField;
    cxGridsImageList_16: TcxImageList;
    edrepMain: TcxEditRepository;
    edrepMainImagesPriority: TcxEditRepositoryImageComboBoxItem;
    edrepMainImagesStatus: TcxEditRepositoryImageComboBoxItem;
    edrepMainImagesAttachment: TcxEditRepositoryImageComboBoxItem;
    edrepMainImagesGender: TcxEditRepositoryImageComboBoxItem;
    edrepCustomerTitle: TcxEditRepositoryImageComboBoxItem;
    edrepMainImagesStatusSwitch: TcxEditRepositoryImageComboBoxItem;
    SchedulerUnboundStorage: TcxSchedulerStorage;
    mdCalendar: TdxMemData;
    mdCalendarCaption: TStringField;
    mdCalendarLabel: TIntegerField;
    mdCalendarColor: TIntegerField;
    mdCalendarResourceID: TIntegerField;
    dsCalendar: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
    procedure clMailsCalcFields(DataSet: TDataSet);
    procedure GenerateRandomEvents;
  private
    function GetMaxValue(AClientDataSet: TClientDataSet; const ANumber: Integer = 0): Variant;
    procedure LoadData(ADataSet: TClientDataSet);
    procedure DoCorrectDates(ADataSet: TClientDataSet; const AFieldsNames: array of string);
  public
    function ReplaceEmailWithContact(const AEmail: string): string;
    function ReplaceEmailsWithContacts(const AEmails: string): string;
  end;

var
  DataModule2: TDataModule2;

implementation

{$R *.dfm}

uses
  System.SysConst, System.DateUtils, dxCore, cxDateUtils, cxSchedulerUtils, cxSchedulerRecurrence;

const
  sInvalidData = 'Invalid data in %s dataset.';

function GetFullName(const AFirstName, AMiddleName, ALastName: string): string;
begin
  if AMiddleName = '' then
    Result := Format('%s %s', [AFirstName, ALastName])
  else
    Result := Format('%s %s %s', [AFirstName, AMiddleName, ALastName]);
end;

procedure TDataModule2.clMailsCalcFields(DataSet: TDataSet);
begin
  DataSet.FieldByName('IsAttachment').AsBoolean := DataSet.FieldByName('AttachmentID').AsInteger > 0;
  DataSet.FieldByName('DateOnly').AsDateTime := Int(DataSet.FieldByName('Date').AsDateTime);
end;

procedure TDataModule2.GenerateRandomEvents;

  function CreateEvent(AResourceID: Variant; const ACaption: string;
    AStart, AFinish: TDateTime; AAllDayEvent: Boolean;
    AState, AColor: TColor): TcxSchedulerEvent;
  begin
    Result := SchedulerUnboundStorage.CreateEvent;
    Result.ResourceID := AResourceID;
    Result.Caption := ACaption;
    if AAllDayEvent then
      AStart := DateOf(AStart);
    Result.Start := AStart;
    Result.Finish := AFinish;
    Result.AllDayEvent := AAllDayEvent;
    Result.State := AState;
    Result.LabelColor := AColor;
  end;

  function GetStart(AResourceID: Integer): TDateTime;
  const
    MaxRandomPeriod = 365;
  var
    AWorkStart, AWorkFinish: TTime;
  begin
    repeat
      Result := Date - MaxRandomPeriod div 2 + Random(MaxRandomPeriod);
      if (AResourceID = 3) or not(dxDayOfWeek(Result) in [dSunday, dSaturday])
        then
        Break;
    until False;
    AWorkStart := SchedulerUnboundStorage.Resources.Items[AResourceID].WorkStart;
    AWorkFinish := SchedulerUnboundStorage.Resources.Items[AResourceID].WorkFinish;
    if AResourceID = 3 then
    begin
      if dxDayOfWeek(Result) in [dSunday, dSaturday] then
        Result := Result + AWorkStart + Random(12) * HourToTime
      else
        Result := Result + AWorkFinish + Random(4) * HourToTime;
    end
    else
      Result := Result + AWorkStart + Random(8) * HourToTime;
  end;

  procedure GenerateBirthdays;
  var
    AName: string;
    AEvent: TcxSchedulerEvent;
  begin
    clPersons.First;
    while not clPersons.Eof do
    begin
      if clPersonsBirthDate.IsNull then
        Continue;
      AName := GetFullName(clPersonsFirstName.AsString,
        clPersonsMiddleName.AsString,
        clPersonsLastName.AsString);
      AEvent := CreateEvent(2, AName, clPersonsBirthDate.Value,
        clPersonsBirthDate.Value, True, 3, EventLabelColors[8]);
      AEvent.EventType := etPattern;
      AEvent.RecurrenceInfo.Recurrence := cxreYearly;
      AEvent.RecurrenceInfo.Periodicity := MonthOf(AEvent.Start);
      AEvent.RecurrenceInfo.DayNumber := DayOf(AEvent.Start);
      AEvent.RecurrenceInfo.Start := AEvent.Start;
      AEvent.RecurrenceInfo.Count := -1;
      AEvent.Post;
      clPersons.Next;
    end;
  end;

  procedure GenerateDailyMeeting;
  var
    AEvent: TcxSchedulerEvent;
    AStart: TDateTime;
  begin
    AStart := Today + 10 * HourToTime;
    AEvent := CreateEvent(0, 'Daily Meeting', AStart,
      AStart + 15 * MinuteToTime, False, 2, EventLabelColors[2]);
    AEvent.EventType := etPattern;
    AEvent.RecurrenceInfo.Recurrence := cxreDaily;
    AEvent.RecurrenceInfo.Count := -1;
    AEvent.RecurrenceInfo.DayType := cxdtDay;
    AEvent.RecurrenceInfo.OccurDays := [dMonday, dTuesday, dWednesday,
      dThursday, dFriday];
    AEvent.Post;
  end;

  procedure GenerateEvents;
  var
    AResourceID, AState, AColor: Integer;
    ACaption: string;
    AStart, AFinish: TDateTime;
  begin
    mdCalendar.First;
    while not mdCalendar.Eof do
    begin
      AResourceID := mdCalendarResourceID.Value - 1;
      ACaption := mdCalendarCaption.AsString;
      AState := mdCalendarLabel.Value;
      AColor := mdCalendarColor.Value;
      AStart := GetStart(AResourceID);
      AFinish := AStart + ((Random(5) + 1) * 30) * MinuteToTime;
      CreateEvent(AResourceID, ACaption, AStart, AFinish, False, AState,
        EventLabelColors[AColor]).Post;
      mdCalendar.Next;
    end;
  end;

begin
  SchedulerUnboundStorage.BeginUpdate;
  try
    GenerateDailyMeeting;
    GenerateEvents;
    GenerateBirthdays;
  finally
    SchedulerUnboundStorage.EndUpdate;
  end;
end;

procedure TDataModule2.DataModuleCreate(Sender: TObject);
var
  APath: string;
  I: Integer;
begin
  APath := ExtractFilePath(Application.ExeName) + 'Data\';
  mdBodyStyle.LoadFromBinaryFile(APath + 'CarsBodyStyle.dat');
  mdCategory.LoadFromBinaryFile(APath + 'CarsCategory.dat');
  mdModels.LoadFromBinaryFile(APath + 'CarsModel.dat');
  mdTrademark.LoadFromBinaryFile(APath + 'CarsTrademark.dat');
  mdTransmissionType.LoadFromBinaryFile(APath + 'CarsTransmissionType.dat');

  mdBodyStyle.Active := True;
  mdCategory.Active := True;
  mdTrademark.Active := True;
  mdTransmissionType.Active := True;
  mdModels.Active := True;

  clMails.LoadFromFile(APath + 'Mails.xml');
  DoCorrectDates(clMails, ['Date']);

  clPersons.LoadFromFile(APath + 'Contacts.xml');

  mdCalendar.LoadFromTextFile(APath + 'CalendarData.txt');
  GenerateRandomEvents;

  for I := ComponentCount -1 downto 0 do
    if Components[I] is TClientDataSet then
      LoadData(TClientDataSet(Components[I]));
end;

procedure TDataModule2.LoadData(ADataSet: TClientDataSet);
var
  AFileName: string;
  ALookupDataSet: TDataSet;
  I: Integer;
begin
  if (ADataSet = nil) or ADataSet.Active then Exit;
  AFileName := ADataSet.Name;
  if Pos('cds', AFileName) = 1 then
   Delete(AFileName, 1, 3);

  AFileName := ExtractFilePath(Application.EXEName) + 'Data_cds\' + AFileName + '.cds';
  if not FileExists(AFileName) then
    raise EFileStreamError.Create(@SFileNotFound, AFileName);

  if ADataSet.MasterSource <> nil then
    LoadData(TClientDataSet(ADataSet.MasterSource.DataSet));
  for I := 0 to ADataSet.FieldCount - 1 do
  begin
    ALookupDataSet := ADataSet.Fields[I].LookupDataSet;
    if (ALookupDataSet <> nil) and not ALookupDataSet.Active then
      LoadData(ALookupDataSet as TClientDataSet);
  end;
  ADataSet.LoadFromFile(AFileName);
  ADataSet.Active := True;
  if not ADataSet.Active then
    raise EDatabaseError.CreateFmt(sInvalidData, [ADataSet.Name]);
end;

function TDataModule2.GetMaxValue(AClientDataSet: TClientDataSet; const ANumber: Integer = 0): Variant;
var
  I: Integer;
begin
  for I := 0 to AClientDataSet.Aggregates.Count - 1 do
    AClientDataSet.Aggregates[I].Active := True;
  AClientDataSet.AggregatesActive := True;
  Result := AClientDataSet.Aggregates[ANumber].Value;
  AClientDataSet.AggregatesActive := False;
  for I := 0 to AClientDataSet.Aggregates.Count - 1 do
    AClientDataSet.Aggregates[I].Active := False;
end;

procedure TDataModule2.DoCorrectDates(ADataSet: TClientDataSet; const AFieldsNames: array of string);

  procedure IncDateTimeField(AField: TDateTimeField; ADaysCount: Integer);
  begin
    if not AField.IsNull and (AField.AsDateTime > 0) then
      AField.AsDateTime := AField.AsDateTime + ADaysCount;
  end;

var
  I, ADiffDays: Integer;
begin
  ADiffDays := Trunc(Date - GetMaxValue(ADataSet, 1));
  ADataSet.DisableControls;
  try
    ADataSet.First;
    while not ADataSet.Eof do
    begin
      if not((ADataSet = clMails) and (ADataSet.FieldByName('BoxID').AsInteger = 11)) then
      begin
        ADataSet.Edit;
        for I := Low(AFieldsNames) to High(AFieldsNames) do
          IncDateTimeField(ADataSet.FieldByName(AFieldsNames[I]) as TDateTimeField, ADiffDays);
        ADataSet.Post;
      end;
      ADataSet.Next;
    end;
    ADataSet.First;
  finally
    ADataSet.EnableControls;
  end;
end;

function TDataModule2.ReplaceEmailWithContact(const AEmail: string): string;
begin
  Result := AEmail;
  if clPersons.Locate('Email', Result, [loCaseInsensitive]) then
    Result := clPersons.FieldByName('Name').AsString;
end;

function TDataModule2.ReplaceEmailsWithContacts(const AEmails: string): string;
var
  AList: TStringList;
  I: Integer;
  S: string;
begin
  Result := Trim(AEmails);
  if Result > '' then
    if Pos(dxAddressDelimiter, AEmails) > 0 then
    begin
      AList := TStringList.Create;
      try
        ExtractStrings([dxAddressDelimiter], [' '], PChar(AEmails), AList);
        for I := 0 to AList.Count - 1 do
        begin
          S := ReplaceEmailWithContact(Trim(AList[I]));
          if I > 0 then
            Result := Result + '; ' + S
          else
            Result := S;
        end;
      finally
        AList.Free;
      end;
    end
    else
      Result := ReplaceEmailWithContact(Result);
end;

end.
