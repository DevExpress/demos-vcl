unit cxPivotOLAPBrowserFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, cxPivotBaseFormUnit, cxClasses, cxGraphics, cxCustomData,
  cxStyles, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, cxControls,
  cxCustomPivotGrid, cxDBPivotGrid, cxPivotGridOLAPDataSource,
  cxCustomPivotBaseFormUnit, cxUnboundPivotBaseFormUnit, cxPivotGrid,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Menus, cxLookAndFeelPainters, cxButtons,
  cxPivotGridOLAPConnectionDesigner, cxPivotDrillDownFormUnit, cxLookAndFeels, cxGroupBox,
  cxRadioGroup, dxLayoutContainer, dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxLayoutLookAndFeels, Vcl.ActnList,
  dxLayoutControl, System.Actions, dxBarBuiltInMenu;

type
  TfrmOLAPBrowser = class(TcxUnboundPivotGridDemoUnitForm)
    OLAPDataSource: TcxPivotGridOLAPDataSource;
    dxLayoutItem3: TdxLayoutItem;
    btNewConnection: TcxButton;
    cmbProvider: TcxComboBox;
    dxLayoutItem2: TdxLayoutItem;
    procedure btNewConnectionClick(Sender: TObject);
    procedure UnboundPivotDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cmbProviderPropertiesChange(Sender: TObject);
  private
    procedure LoadDefaultLayout(AActivate: Boolean);
    procedure SetFieldPos(const AFieldName: string; AArea: TcxPivotGridFieldArea);
  public
    class function GetID: Integer; override;
    procedure ActivateDataSet; override;
  end;

implementation

uses
  cxPivotGridOLAPADOMDProvider, cxPivotGridOLAPOLEDBProvider, dxSplashForms;

{$R *.dfm}

var
  CubePath: string;

{ TfrmOLAPBrowser }

class function TfrmOLAPBrowser.GetID: Integer;
begin
  Result := 27;
end;

procedure TfrmOLAPBrowser.ActivateDataSet;
var
  AConnectionString: string;
begin
  if FileExists(CubePath) then
  begin
    AConnectionString := 'Provider=MSOLAP;Integrated Security=SSPI;Persist Security Info=False;Data Source=';
    TdxSplashFormManager.WaitForm.Show(Application.MainForm);  
    try
      OLAPDataSource.ConnectionString := AConnectionString + CubePath;
      OLAPDataSource.Active := True;

      UnboundPivot.BeginUpdate;
      try
        PivotGrid.DeleteAllFields;
        OLAPDataSource.RetrieveFields(PivotGrid);
        SetFieldPos('Country', faColumn);
        SetFieldPos('City', faColumn);
        SetFieldPos('Category Name', faRow);
        SetFieldPos('Products', faRow);
        SetFieldPos('Quantity', faData);
        SetFieldPos('Discount', faData);
      finally
        UnboundPivot.EndUpdate;
      end;
    finally
      TdxSplashFormManager.WaitForm.Hide;
    end;
  end;
end;

procedure TfrmOlapBrowser.LoadDefaultLayout(AActivate: Boolean);
begin
  OLAPDataSource.Active := AActivate;
  PivotGrid.BeginUpdate;
  try
    if AActivate then
    begin
      OLAPDataSource.RetrieveFields(PivotGrid);
      SetFieldPos('Country', faColumn);
      SetFieldPos('City', faColumn);
      SetFieldPos('Category Name', faRow);
      SetFieldPos('Products', faRow);
      SetFieldPos('Quantity', faData);
      SetFieldPos('Discount', faData);
    end;
  finally
    PivotGrid.EndUpdate;
    PivotGrid.ApplyBestFit;
  end;
end;

procedure TfrmOlapBrowser.SetFieldPos(const AFieldName: string; AArea: TcxPivotGridFieldArea);
var
  AField: TcxPivotGridField;
begin
  AField := PivotGrid.GetFieldByName(AFieldName);
  if AField <> nil then
  begin
    AField.Area := AArea;
    AField.Visible := True;
  end;
end;

procedure TfrmOLAPBrowser.cmbProviderPropertiesChange(Sender: TObject);
var
  AActive: Boolean;
begin
  AActive := OLAPDataSource.Active;
  if cmbProvider.ItemIndex = 0 then
    OLAPDataSource.ProviderClass := TcxPivotGridOLAPADOMDProvider
  else
    OLAPDataSource.ProviderClass := TcxPivotGridOLAPOLEDBProvider;
  if not OLAPDataSource.Active then
    LoadDefaultLayout(AActive);
end;

procedure TfrmOLAPBrowser.btNewConnectionClick(Sender: TObject);
var
  ACubeName: string;
  AConnection, ACube: string;
begin
  AConnection := cxPivotGridOLAPCreateConnectionString(ACube, OLAPDataSource.ProviderClass, PivotGrid.LookAndFeel);
  if AConnection = '' then Exit;
  ACubeName := ACube;
  if ACubeName = '' then
    ACubeName := ExtractFileName(AConnection);

  TdxSplashFormManager.WaitForm.Show(Application.MainForm); 
  try
    OLAPDataSource.ConnectionString := AConnection;
    OLAPDataSource.Cube := ACube;
    LoadDefaultLayout(True);
    PivotGrid.Customization.Visible := True;
  finally
    TdxSplashFormManager.WaitForm.Hide;
  end;
end;

procedure TfrmOLAPBrowser.FormCreate(Sender: TObject);
begin
  if OLAPDataSource.ProviderClass = TcxPivotGridOLAPADOMDProvider then
    cmbProvider.ItemIndex := 0
  else
    cmbProvider.ItemIndex := 1;
end;

procedure TfrmOLAPBrowser.UnboundPivotDblClick(Sender: TObject);
var
  ACrossCell: TcxPivotGridCrossCell;
begin
  with PivotGrid.HitTest do
  begin
    if HitAtDataCell then
    begin
      ACrossCell := (HitObject as TcxPivotGridDataCellViewInfo).CrossCell;
      if ACrossCell <> nil then
        cxShowDrillDownDataSource(ACrossCell);
    end;
  end;
end;

initialization
  CubePath := GetCurrentDir + '\Data\Northwind.cub';
  TfrmOLAPBrowser.Register;

finalization

end.
