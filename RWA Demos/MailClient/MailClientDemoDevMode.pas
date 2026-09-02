unit MailClientDemoDevMode;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls,
  Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, dxRibbonForm, dxBarBuiltInMenu, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxGeometry, dxFramedControl, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, dxScrollbarAnnotations, Data.DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, dxPanel, cxPC, cxButtons,
  cxDBEdit, dxShellDialogs, cxTL, cxMaskEdit, cxTLdxBarBuiltInMenu, cxInplaceContainer, cxDBTL, cxTLData, cxTextEdit,
  cxContainer, cxMemo, cxRichEdit, cxDBRichEdit, cxSplitter, cxImageComboBox, cxCalendar, cxDBLookupComboBox;

type
  TfmMailClientDemoDevMode = class(TdxRibbonForm)
    pgMain: TcxPageControl;
    tsMailBoxes: TcxTabSheet;
    pnMailBoxes: TdxPanel;
    grMailBoxes: TcxGrid;
    grMailBoxesDBTableView1: TcxGridDBTableView;
    grMailBoxesLevel1: TcxGridLevel;
    grMailBoxesDBTableView1RecId: TcxGridDBColumn;
    grMailBoxesDBTableView1ID: TcxGridDBColumn;
    grMailBoxesDBTableView1ParentID: TcxGridDBColumn;
    grMailBoxesDBTableView1BoxNumber: TcxGridDBColumn;
    grMailBoxesDBTableView1BoxKind: TcxGridDBColumn;
    grMailBoxesDBTableView1ImageIndex: TcxGridDBColumn;
    grMailBoxesDBTableView1UnreadCount: TcxGridDBColumn;
    grMailBoxesDBTableView1Name: TcxGridDBColumn;
    grMailBoxesDBTableView1NameArabic: TcxGridDBColumn;
    grMailBoxesDBTableView1NameHebrew: TcxGridDBColumn;
    btSaveMailBoxes: TcxButton;
    btMailBoxDelete: TcxButton;
    btMailBoxAdd: TcxButton;
    tsAttachments: TcxTabSheet;
    pnAttachments: TdxPanel;
    btSaveAttachments: TcxButton;
    btAttachmentDelete: TcxButton;
    btAttachmentAdd: TcxButton;
    grAttachments: TcxGrid;
    dxOpenFileDialog1: TdxOpenFileDialog;
    tsContacts: TcxTabSheet;
    pnContacts: TdxPanel;
    btSaveContacts: TcxButton;
    btContactDelete: TcxButton;
    btContactAdd: TcxButton;
    grContacts: TcxGrid;
    grAttachmentsLevel1: TcxGridLevel;
    grAttachmentsDBTableView1: TcxGridDBTableView;
    grAttachmentsDBTableView1RecId: TcxGridDBColumn;
    grAttachmentsDBTableView1ID: TcxGridDBColumn;
    grAttachmentsDBTableView1FileName: TcxGridDBColumn;
    grAttachmentsDBTableView1Attachment: TcxGridDBColumn;
    grContactsLevel1: TcxGridLevel;
    grContactsDBTableView1: TcxGridDBTableView;
    grContactsDBTableView1CustomerID: TcxGridDBColumn;
    grContactsDBTableView1MiddleName: TcxGridDBColumn;
    grContactsDBTableView1Email: TcxGridDBColumn;
    grContactsDBTableView1Phone: TcxGridDBColumn;
    grContactsDBTableView1Comments: TcxGridDBColumn;
    grContactsDBTableView1Photo: TcxGridDBColumn;
    grContactsDBTableView1DiscountLevel: TcxGridDBColumn;
    grContactsDBTableView1FirstName: TcxGridDBColumn;
    grContactsDBTableView1LastName: TcxGridDBColumn;
    grContactsDBTableView1Gender: TcxGridDBColumn;
    grContactsDBTableView1BirthDate: TcxGridDBColumn;
    grContactsDBTableView1AddressLine: TcxGridDBColumn;
    grContactsDBTableView1City: TcxGridDBColumn;
    grContactsDBTableView1ZipCode: TcxGridDBColumn;
    grContactsDBTableView1State: TcxGridDBColumn;
    grContactsDBTableView1Notes: TcxGridDBColumn;
    grContactsDBTableView1Title: TcxGridDBColumn;
    grContactsDBTableView1IsEmployee: TcxGridDBColumn;
    grContactsDBTableView1Name: TcxGridDBColumn;
    btContactEdit: TcxButton;
    tsMails: TcxTabSheet;
    pnMails: TdxPanel;
    btSaveMails: TcxButton;
    btMailDelete: TcxButton;
    btMailAdd: TcxButton;
    tlMails: TcxDBTreeList;
    tlMailNameColumn: TcxDBTreeListColumn;
    tlMailUnreadCountColumn: TcxDBTreeListColumn;
    tlMailBoxKindColumn: TcxDBTreeListColumn;
    tlMailBoxNumberColumn: TcxDBTreeListColumn;
    cxSplitter1: TcxSplitter;
    cxSplitter2: TcxSplitter;
    grMails: TcxGrid;
    grMailsLevel1: TcxGridLevel;
    reMails: TcxDBRichEdit;
    grMailsDBTableView1: TcxGridDBTableView;
    grMailsDBTableView1ID: TcxGridDBColumn;
    grMailsDBTableView1From: TcxGridDBColumn;
    grMailsDBTableView1To: TcxGridDBColumn;
    grMailsDBTableView1Priority: TcxGridDBColumn;
    grMailsDBTableView1IsUnread: TcxGridDBColumn;
    grMailsDBTableView1AttachmentID: TcxGridDBColumn;
    grMailsDBTableView1Subject: TcxGridDBColumn;
    grMailsDBTableView1Date: TcxGridDBColumn;
    btMailContentLoadFromFile: TcxButton;
    grMailsDBTableView1BoxID: TcxGridDBColumn;
    tsNewMails: TcxTabSheet;
    pnNewMails: TdxPanel;
    btSaveNewMails: TcxButton;
    btNewMailDelete: TcxButton;
    btNewMailAdd: TcxButton;
    btNewMailContentLoadFromFile: TcxButton;
    tlNewMails: TcxDBTreeList;
    cxDBTreeListColumn1: TcxDBTreeListColumn;
    cxDBTreeListColumn2: TcxDBTreeListColumn;
    cxDBTreeListColumn3: TcxDBTreeListColumn;
    cxDBTreeListColumn4: TcxDBTreeListColumn;
    cxSplitter3: TcxSplitter;
    cxSplitter4: TcxSplitter;
    reNewMails: TcxDBRichEdit;
    grNewMails: TcxGrid;
    grNewMailsDBTableView1: TcxGridDBTableView;
    grNewMailsLevel1: TcxGridLevel;
    grNewMailsDBTableView1ID: TcxGridDBColumn;
    grNewMailsDBTableView1BoxID: TcxGridDBColumn;
    grNewMailsDBTableView1From: TcxGridDBColumn;
    grNewMailsDBTableView1To: TcxGridDBColumn;
    grNewMailsDBTableView1Priority: TcxGridDBColumn;
    grNewMailsDBTableView1IsUnread: TcxGridDBColumn;
    grNewMailsDBTableView1AttachmentID: TcxGridDBColumn;
    grNewMailsDBTableView1Subject: TcxGridDBColumn;
    procedure btSaveMailBoxesClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btMailBoxDeleteClick(Sender: TObject);
    procedure btMailBoxAddClick(Sender: TObject);
    procedure btAttachmentAddClick(Sender: TObject);
    procedure btSaveAttachmentsClick(Sender: TObject);
    procedure btAttachmentDeleteClick(Sender: TObject);
    procedure btSaveContactsClick(Sender: TObject);
    procedure btContactDeleteClick(Sender: TObject);
    procedure btContactAddClick(Sender: TObject);
    procedure btContactEditClick(Sender: TObject);
    procedure btSaveMailsClick(Sender: TObject);
    procedure btMailDeleteClick(Sender: TObject);
    procedure btMailAddClick(Sender: TObject);
    procedure btMailContentLoadFromFileClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btSaveNewMailsClick(Sender: TObject);
    procedure btNewMailDeleteClick(Sender: TObject);
    procedure btNewMailAddClick(Sender: TObject);
    procedure tlNewMailsFocusedNodeChanged(Sender: TcxCustomTreeList; APrevFocusedNode, AFocusedNode: TcxTreeListNode);
  private
    { Private declarations }
    FProgramPath: string;
  public
    { Public declarations }
  end;

implementation

uses
  System.Math, Datasnap.DBClient, dxMailClientDemoUtils, MailClientDemoMain, MailClientDemoData, fmContactUnit;

{$R *.dfm}

//

function GetFieldMaxValue(const ADataset: TDataSet; const AFieldName: string): Integer;
var
  ABookMark: TBookmark;
  AFiltered: Boolean;
begin
  Result := 0;
  AFiltered := ADataset.Filtered;
  ADataset.DisableControls;
  ADataset.Filtered := False;
  ABookmark := ADataset.GetBookmark;
  ADataset.First;
  while not ADataset.Eof do
  begin
    Result := Max(Result, ADataset.FieldByName(AFieldName).AsInteger);
    ADataset.Next;
  end;
  ADataset.Filtered := AFiltered;
  ADataset.GotoBookmark(ABookmark);
  ADataset.EnableControls;
end;

//

type
  TcxCustomEditAccess = class(TcxCustomEdit);

{ TContactForm }

  TContactForm = class(TfmContact)
    procedure FormCreate(Sender: TObject);
  protected
    function GetDataSet: TDataSet; override;
  end;

procedure TContactForm.FormCreate(Sender: TObject);
var
  I: Integer;
  ABookmark: TBookmark;
begin
  DM.clPersons.DisableControls;
  ABookmark := DM.clPersons.GetBookmark;
  inherited FormCreate(Sender);
  DM.clPersons.GotoBookmark(ABookmark);
  DM.clPersons.EnableControls;
  for I := 0 to ComponentCount - 1 do
    if (Components[I] is TcxCustomEdit) and (TcxCustomEditAccess(Components[I]).FDataBinding is TcxDBEditDataBinding) then
      TcxDBEditDataBinding(TcxCustomEditAccess(Components[I]).FDataBinding).DataSource := DM.dsPersons;
end;

function TContactForm.GetDataSet: TDataSet;
begin
  Result := DM.clPersons;
end;

{ TfmMailClientDemoDevMode }

procedure TfmMailClientDemoDevMode.FormCreate(Sender: TObject);
begin
  FProgramPath := GetProgramPath;
end;

procedure TfmMailClientDemoDevMode.FormDestroy(Sender: TObject);
begin
  DM.clNewMails.Filtered := False;
  DM.clNewMails.Filter := '';
end;

// MailBoxes

procedure TfmMailClientDemoDevMode.btSaveMailBoxesClick(Sender: TObject);
begin
  DM.mdMailBoxes.SaveToBinaryFile(FProgramPath + 'Data\MailBoxes.dat');
end;

procedure TfmMailClientDemoDevMode.btMailBoxDeleteClick(Sender: TObject);
begin
  DM.mdMailBoxes.Delete;
end;

procedure TfmMailClientDemoDevMode.btMailBoxAddClick(Sender: TObject);
var
  AID, AParentID, ABoxNumber, ABoxKind: Integer;
begin
  AID := GetFieldMaxValue(DM.mdMailBoxes, 'ID') + 1;
  AParentID := StrToIntDef(InputBox('ParentID', 'ParentID', '2'), 2);
  ABoxNumber := StrToIntDef(InputBox('BoxNumber', 'BoxNumber', '1'), 1);
  ABoxKind := StrToIntDef(InputBox('BoxKind', 'BoxKind', '1'), 1);
  DM.mdMailBoxes.AppendRecord([AID, AID, AParentID, ABoxNumber, ABoxKind, 0]);
end;

// Attachments

procedure TfmMailClientDemoDevMode.btSaveAttachmentsClick(Sender: TObject);
begin
  DM.mdAttachments.SaveToBinaryFile(FProgramPath + 'Data\Attachments.dat');
end;

procedure TfmMailClientDemoDevMode.btAttachmentDeleteClick(Sender: TObject);
begin
  DM.mdAttachments.Delete;
end;

procedure TfmMailClientDemoDevMode.btAttachmentAddClick(Sender: TObject);
var
  AID: Integer;
begin
  if dxOpenFileDialog1.Execute(Self.Handle) then
  begin
    AID := GetFieldMaxValue(DM.mdAttachments, 'ID') + 1;
    DM.mdAttachments.DisableControls;
    DM.mdAttachments.Append;
    DM.mdAttachments.FieldByName('ID').AsInteger := AID;
    DM.mdAttachments.FieldByName('FileName').AsString := ExtractFileName(dxOpenFileDialog1.FileName);
    TBlobField(DM.mdAttachments.FieldByName('Attachment')).LoadFromFile(dxOpenFileDialog1.FileName);
    DM.mdAttachments.Post;
    DM.mdAttachments.EnableControls;
  end;
end;

// Contacts

procedure TfmMailClientDemoDevMode.btSaveContactsClick(Sender: TObject);
begin
  DM.clPersons.SaveToFile(FProgramPath + 'Data\Contacts.dat');
  DM.OpenCustomerChildClientDataSet(DM.clPersons, DM.clContacts, 'CustomerID > 0');
end;

procedure TfmMailClientDemoDevMode.btContactDeleteClick(Sender: TObject);
begin
  DM.clPersons.Delete;
end;

procedure TfmMailClientDemoDevMode.btContactAddClick(Sender: TObject);
var
  AContactForm: TContactForm;
begin
  DM.PinAllAlertWindows;
  AContactForm := TContactForm.Create(Application.MainForm, True);
  try
    AContactForm.ShowModal;
  finally
    AContactForm.Free;
  end;
end;

procedure TfmMailClientDemoDevMode.btContactEditClick(Sender: TObject);
var
  AContactForm: TContactForm;
begin
  DM.PinAllAlertWindows;
  AContactForm := TContactForm.Create(Application.MainForm, False);
  try
    AContactForm.ShowModal;
  finally
    AContactForm.Free;
  end;
end;

// Mails

procedure TfmMailClientDemoDevMode.btSaveMailsClick(Sender: TObject);
begin
  DM.clMails.SaveToFile(FProgramPath + 'Data\Mails.dat');
end;

procedure TfmMailClientDemoDevMode.btMailDeleteClick(Sender: TObject);
begin
  DM.clMails.Delete;
end;

procedure TfmMailClientDemoDevMode.btMailAddClick(Sender: TObject);
var
  AID: Integer;
begin
  if dxOpenFileDialog1.Execute(Self.Handle) then
  begin
    AID := GetFieldMaxValue(DM.clMails, 'ID') + 1;
    DM.clMails.DisableControls;
    DM.clMails.Append;
    DM.clMails.FieldByName('ID').AsInteger := AID;
    DM.clMails.FieldByName('BoxID').AsInteger := DM.mdMailBoxes.FieldByName('ID').AsInteger;
    DM.clMails.FieldByName('Subject').AsString := 'Subject';
    DM.clMails.FieldByName('Priority').AsInteger := 1;
    DM.clMails.FieldByName('AttachmentID').AsInteger := -1;
    DM.clMails.FieldByName('IsUnread').AsBoolean := True;
    DM.clMails.FieldByName('Date').AsDateTime := Now;
    TBlobField(DM.clMails.FieldByName('Content')).LoadFromFile(dxOpenFileDialog1.FileName);
    DM.clMails.Post;
    DM.clMails.EnableControls;
  end;
end;

procedure TfmMailClientDemoDevMode.btMailContentLoadFromFileClick(Sender: TObject);
begin
  if dxOpenFileDialog1.Execute(Self.Handle) then
  begin
    DM.clMails.Edit;
    TBlobField(DM.clMails.FieldByName('Content')).LoadFromFile(dxOpenFileDialog1.FileName);
    DM.clMails.Post;
  end;
end;

// NewMails
procedure TfmMailClientDemoDevMode.tlNewMailsFocusedNodeChanged(Sender: TcxCustomTreeList; APrevFocusedNode, AFocusedNode: TcxTreeListNode);


  function GetFilter(AParentNode: TcxDBTreeListNode): string;
  var
    I: Integer;
    ANode: TcxDBTreeListNode;
  begin
    Result := VarToStr(AParentNode.KeyValue);
    for I := 0 to AParentNode.Count - 1 do
    begin
      ANode := AParentNode.Items[I] as TcxDBTreeListNode;
      Result := Format('%s, %s', [Result, GetFilter(ANode)]);
      if AParentNode.ParentKeyValue = 0 then
        Break;
    end;
  end;

var
  AFilter: string;
  ADataSet: TDataSet;
begin
  ADataSet := DM.clNewMails;
  ADataSet.DisableControls;
  try
    AFilter := Format('BoxID in (%s)', [GetFilter(AFocusedNode as TcxDBTreeListNode)]);
    if AFilter <> ADataSet.Filter then
    begin
      ADataSet.Filter := AFilter;
      ADataSet.Filtered := True;
    end;
  finally
    ADataSet.EnableControls;
  end;
end;

procedure TfmMailClientDemoDevMode.btSaveNewMailsClick(Sender: TObject);
begin
  DM.clNewMails.SaveToFile(FProgramPath + 'Data\NewMails.xml', dfXML);
end;

procedure TfmMailClientDemoDevMode.btNewMailDeleteClick(Sender: TObject);
begin
  DM.clNewMails.Delete;
end;

procedure TfmMailClientDemoDevMode.btNewMailAddClick(Sender: TObject);
var
  AID: Integer;
begin
  if dxOpenFileDialog1.Execute(Self.Handle) then
  begin
    AID := GetFieldMaxValue(DM.clNewMails, 'ID') + 1;
    DM.clNewMails.DisableControls;
    DM.clNewMails.Append;
    DM.clNewMails.FieldByName('ID').AsInteger := AID;
    DM.clNewMails.FieldByName('BoxID').AsInteger := DM.mdMailBoxes.FieldByName('ID').AsInteger;
    DM.clNewMails.FieldByName('Subject').AsString := 'Subject';
    DM.clNewMails.FieldByName('Priority').AsInteger := 1;
    DM.clNewMails.FieldByName('AttachmentID').AsInteger := -1;
    DM.clNewMails.FieldByName('IsUnread').AsBoolean := True;
    DM.clNewMails.FieldByName('Date').AsDateTime := Now;
    TBlobField(DM.clNewMails.FieldByName('Content')).LoadFromFile(dxOpenFileDialog1.FileName);
    DM.clNewMails.Post;
    DM.clNewMails.EnableControls;
  end;
end;

end.
