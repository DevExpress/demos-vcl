unit cxTreeListPreviewFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, cxTreeListBiolifeFormUnit, cxGraphics, cxCustomData, cxStyles, cxTL,
  cxMaskEdit, cxCheckBox, cxTLdxBarBuiltInMenu, dxSkinsCore, 
  cxLookAndFeelPainters, cxTextEdit, cxDropDownEdit, cxLabel, Vcl.ImgList, Vcl.StdCtrls,
  Vcl.ExtCtrls, cxContainer, cxEdit, cxGroupBox, cxInplaceContainer, cxDBTL,
  cxControls, cxTLData, cxLookAndFeels, dxLayoutContainer, cxClasses, dxLayoutControl, Vcl.ActnList, dxLayoutLookAndFeels,
  dxLayoutcxEditAdapters, cxImageList, dxScrollbarAnnotations, System.Actions, System.ImageList,
  cxFilter;

type
  TfrmPreview = class(TfrmBiolife)
    dxLayoutItem3: TdxLayoutItem;
    cbPlace: TcxComboBox;
    dxLayoutItem4: TdxLayoutItem;
    cbColumn: TcxComboBox;
    acVisible: TAction;
    chkVisible1: TdxLayoutCheckBoxItem;
    procedure cbPlacePropertiesChange(Sender: TObject);
    procedure cbColumnPropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure acVisibleExecute(Sender: TObject);
  private
    procedure FillCombo;
    procedure Initialize;
  public
    class function GetID: Integer; override;
  end;

implementation

{$R *.dfm}

uses
  cxTreeListFeaturesDemoStrConsts;

class function TfrmPreview.GetID: Integer;
begin
  Result := 27;
end;

procedure TfrmPreview.FormCreate(Sender: TObject);
begin
  FillCombo;
  Initialize;
end;


procedure TfrmPreview.cbColumnPropertiesChange(Sender: TObject);
begin
  if cbColumn.ItemIndex <> -1 then
    TreeList.Preview.Column := TcxTreeListColumn(cbColumn.Properties.Items.Objects[cbColumn.ItemIndex]);
end;

procedure TfrmPreview.cbPlacePropertiesChange(Sender: TObject);
begin
  TreeList.Preview.Place := TcxTreeListPreviewPlace(cbPlace.ItemIndex);
end;

procedure TfrmPreview.acVisibleExecute(Sender: TObject);
begin
  TreeList.Preview.Visible := acVisible.Checked;
end;

procedure TfrmPreview.FillCombo;
var
  I: Integer;
begin
  cbColumn.Clear;
  for I := 0 to 5 do
    if I <> 3 then
      cbColumn.Properties.Items.AddObject(TreeList.Columns[I].Caption.Text,
        TreeList.Columns[I]);
end;

procedure TfrmPreview.Initialize;
begin
  TreeList.BeginUpdate;
  try
    cbColumn.ItemIndex := 0;
    cbPlace.ItemIndex := 1;
    acVisible.Checked := True;
  finally
    TreeList.EndUpdate;
  end;

end;

initialization
  TfrmPreview.Register;

end.
