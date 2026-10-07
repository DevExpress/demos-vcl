unit fmTaskUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, fmBaseEditUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxRibbonSkins, dxSkinsCore, dxSkinsdxBarPainter,
  dxBar, dxLayoutContainer, dxLayoutControl, cxClasses, dxRibbon,
  cxContainer, cxEdit, dxLayoutcxEditAdapters, Vcl.ComCtrls, dxCore,
  cxDateUtils, cxDropDownEdit, cxCalendar, cxMaskEdit, cxTextEdit,
  cxSpinEdit, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxMemo,
  cxRichEdit, cxImage, cxDBRichEdit, cxDBEdit, cxImageComboBox, Data.DB,
  MailClientDemoData, MailClientDemoTasks, Vcl.ImgList, dxRibbonGallery,
  dxBarExtItems, dxSkinsdxRibbonPainter, dxSkinscxPCPainter, cxFontNameComboBox, cxBarEditItem,
  dxRibbonCustomizationForm, dxGallery, dxRibbonColorGallery, dxOfficeSearchBox, System.Actions, Vcl.ActnList,
  cxImageList, System.ImageList;

type
  TfmTask = class(TfmBaseEdit)
    dxLayoutControl1Group1: TdxLayoutGroup;
    lcgrEmployee: TdxLayoutGroup;
    liRootSplitter: TdxLayoutSplitterItem;
    edSubject: TcxDBTextEdit;
    liSubject: TdxLayoutItem;
    dxLayoutControl1SpaceItem1: TdxLayoutEmptySpaceItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    edCategory: TcxDBImageComboBox;
    liCategory: TdxLayoutItem;
    edStartDate: TcxDBDateEdit;
    liStartDate: TdxLayoutItem;
    edStatus: TcxDBImageComboBox;
    liStatus: TdxLayoutItem;
    edDueDate: TcxDBDateEdit;
    liDueDate: TdxLayoutItem;
    edPriority: TcxDBImageComboBox;
    liPriority: TdxLayoutItem;
    edComplete: TcxDBSpinEdit;
    liPercentComplete: TdxLayoutItem;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dxLayoutControl1Group8: TdxLayoutGroup;
    edDescription: TcxDBRichEdit;
    liDescription: TdxLayoutItem;
    cxbtnOK: TcxButton;
    dxLayoutControl1Item9: TdxLayoutItem;
    cxbtnCancel: TcxButton;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutControl1Group10: TdxLayoutGroup;
    vwPhoto: TcxDBImage;
    dxLayoutControl1Item11: TdxLayoutItem;
    vwEmployee: TcxRichEdit;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FEmployeeID: Integer;
    procedure AssignStatusItems;
  protected
    function GetDataSet: TDataSet; override;
    procedure InitializeNewRecord; override;

    property EmployeeID: Integer read FEmployeeID;
  public
    constructor Create(AOwner: TComponent; AIsNew: Boolean;
      AEmployeeID: Integer); reintroduce;
  end;

var
  fmTask: TfmTask;

implementation

{$R *.dfm}

uses
  dxMailClientDemoUtils, MailClientDemoMain, LocalizationStrs, dxBarStrs;

constructor TfmTask.Create(AOwner: TComponent; AIsNew: Boolean;
  AEmployeeID: Integer);
begin
  inherited Create(AOwner, AIsNew);
  FEmployeeID := AEmployeeID;
  Editor := edDescription;
  lcgrEmployee.Visible := EmployeeID > 0;
  liRootSplitter.Visible := lcgrEmployee.Visible;
  if lcgrEmployee.Visible then
  begin
    DM.clTaskEmployees.Locate('CustomerID', AEmployeeID, []);
    PopulateCustomerInfoRich(vwEmployee, DM.clTaskEmployees);
  end;
  edCategory.RepositoryItem := TMailClientDemoTasksFrame(Owner).edrepTaskCategory;
  AssignStatusItems;
  if fmMailClientDemoMain.HasSkinPalette then
  begin
    dxBarManager1.LargeImages := ilLargeImagesSVG;
    dxBarManager1.Images := ilSmallImagesSVG;
  end;
end;

procedure TfmTask.FormCreate(Sender: TObject);
begin
  inherited;
//
  liSubject.CaptionOptions.Text := cxGetResourceString(@sSubjectColumn) + ':';
  liCategory.CaptionOptions.Text := cxGetResourceString(@sCategory) + ':';
  liStartDate.CaptionOptions.Text := cxGetResourceString(@sStartDate) + ':';
  liStatus.CaptionOptions.Text := cxGetResourceString(@sStatusColumn) + ':';
  liDueDate.CaptionOptions.Text := cxGetResourceString(@sDueDateColumn) + ':';
  liPriority.CaptionOptions.Text := cxGetResourceString(@sPriorityColumn) + ':';
  liPercentComplete.CaptionOptions.Text := cxGetResourceString(@sPercentComplete) + ':';
  liDescription.CaptionOptions.Text := cxGetResourceString(@sDescription) + ':';
  cxbtnOK.Caption := cxGetResourceString(@dxSBAR_OK);
  cxbtnCancel.Caption := cxGetResourceString(@sCancelButton);
  Ribbon.Style := rsOffice365;
  Ribbon.Layout := TdxRibbonLayout.Simplified;
end;

function TfmTask.GetDataSet: TDataSet;
begin
  Result := edSubject.DataBinding.DataSource.DataSet;
end;

procedure TfmTask.FormShow(Sender: TObject);
begin
  inherited;
  Caption := DataSet.FieldByName('Subject').AsString;
end;

procedure TfmTask.AssignStatusItems;
var
  I: Integer;
  AItems: TcxImageComboBoxItems;
begin
  AItems := TMailClientDemoTasksFrame(Owner).edrepTaskStatus.Properties.Items;
  for I := 0 to AItems.Count - 1 do
  begin
    edStatus.Properties.Items.Add;
    edStatus.Properties.Items[I].Assign(AItems[I]);
  end;
end;

procedure TfmTask.InitializeNewRecord;
begin
  with DataSet do
  begin
    FieldByName('EmployeeID').AsInteger := EmployeeID;
    FieldByName('Subject').AsString := 'New task';
    FieldByName('DateCreated').AsDateTime := Int(Date);
    FieldByName('Status').AsInteger := tstNotStarted;
    FieldByName('Category').AsInteger := tcgOffice;
    FieldByName('Priority').AsInteger := pvMedium;
    FieldByName('Completed').AsInteger := 0;
  end;
end;

end.
