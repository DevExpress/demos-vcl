unit DBDataEditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Main, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData, dxLayoutContainer,
  dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxClasses, dxLayoutLookAndFeels, dxLayoutControl,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid, cxColorComboBox,
  cxSpinEdit, cxImageComboBox, cxCalendar, dxDateRanges, dxScrollbarAnnotations, dxForms;

type
  TfmDBDataEditor = class(TdxForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1PARENT: TcxGridDBColumn;
    cxGrid1DBTableView1NAME: TcxGridDBColumn;
    cxGrid1DBTableView1WIDTH: TcxGridDBColumn;
    cxGrid1DBTableView1HEIGHT: TcxGridDBColumn;
    cxGrid1DBTableView1COLOR: TcxGridDBColumn;
    cxGrid1DBTableView1IMAGE: TcxGridDBColumn;
    cxGrid1DBTableView1ORDER: TcxGridDBColumn;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutCxLookAndFeel1: TdxLayoutCxLookAndFeel;
    dxLayoutItem2: TdxLayoutItem;
    cxButton1: TcxButton;
    cxGrid1DBTableView1CDATE: TcxGridDBColumn;
    cxGrid1DBTableView1CBY: TcxGridDBColumn;
    cxGrid1DBTableView1TYPE: TcxGridDBColumn;
    cxGrid1DBTableView1ALIGN: TcxGridDBColumn;
    cxGrid1DBTableView1IMAGEALIGN: TcxGridDBColumn;
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

procedure ShowDBOrgChartDataEditor;

implementation

{$R *.dfm}

procedure ShowDBOrgChartDataEditor;
var
  fmDBDataEditor: TfmDBDataEditor;
begin
  fmDBDataEditor := TfmDBDataEditor.Create(nil);
  try
    cxDialogsMetricsStore.InitDialog(fmDBDataEditor);
    fmDBDataEditor.ShowModal;
    cxDialogsMetricsStore.StoreMetrics(fmDBDataEditor);
  finally
    fmDBDataEditor.Free
  end;
end;

procedure TfmDBDataEditor.cxButton1Click(Sender: TObject);
begin
  if cxGrid1DBTableView1.DataController.DataSource.DataSet.State in dsEditModes then
    cxGrid1DBTableView1.DataController.DataSource.DataSet.Post;

  Close;
end;

end.
