unit cxTreeListExpandableBandsFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, cxTreeListPlanetsFormUnit, cxGraphics, cxCustomData, cxStyles, cxTL,
  cxTextEdit, cxTLdxBarBuiltInMenu, dxSkinsCore, 
  cxLookAndFeelPainters, cxMaskEdit, cxDropDownEdit, cxContainer, cxEdit,
  cxGroupBox, cxInplaceContainer, cxControls, cxLabel, Vcl.StdCtrls, Vcl.ExtCtrls, cxLookAndFeels, dxLayoutContainer, cxClasses,
  dxLayoutControl, Vcl.ActnList, dxLayoutLookAndFeels, dxLayoutcxEditAdapters, dxScrollbarAnnotations, System.Actions,
  cxFilter;

type
  TfrmExpandableBands = class(TfrmPlanets)
    dxLayoutItem2: TdxLayoutItem;
    cbExpandColumn: TcxComboBox;
    procedure cbExpandColumnClick(Sender: TObject);
  private
    procedure FillComboBoxWithBandNames;
  public
    function HasOptions: Boolean; override;
    procedure DoInspectedObjectChanged; override;
    procedure FrameActivated; override;
    class function GetID: Integer; override;
  end;

implementation

{$R *.dfm}

uses
  cxTreeListFeaturesDemoStrConsts;

{ TfrmPlanets1 }

function TfrmExpandableBands.HasOptions: Boolean;
begin
  Result := True;
end;

procedure TfrmExpandableBands.DoInspectedObjectChanged;
var
  I: Integer;
begin
  I := 0;
  while (I < TreeList.Bands.Count) and (TreeList.Bands[I].Expandable <> tlbeExpandable) do
    Inc(I);
  if I < TreeList.Bands.Count then
    cbExpandColumn.ItemIndex :=
      cbExpandColumn.Properties.Items.IndexOfObject(TreeList.Bands[I])
  else
    cbExpandColumn.ItemIndex := 0;
end;

procedure TfrmExpandableBands.FrameActivated;
begin
  inherited FrameActivated;
  ShowBands := True;
  FillComboBoxWithBandNames;
end;

class function TfrmExpandableBands.GetID: Integer;
begin
  Result := 1;
end;

procedure TfrmExpandableBands.cbExpandColumnClick(Sender: TObject);
var
  I: Integer;
const
  State: array[Boolean] of TcxTreeListBandExpandable = (tlbeDefault, tlbeExpandable);
begin
  TreeList.BeginUpdate;
  try
    for I := 0 to TreeList.Bands.Count - 1 do
      TreeList.Bands[I].Expandable := State[TreeList.Bands[I].ID = cbExpandColumn.ItemIndex];
  finally
    TreeList.EndUpdate;
  end;
end;

procedure TfrmExpandableBands.FillComboBoxWithBandNames;
var
  I: Integer;
begin
  cbExpandColumn.Properties.Items.Clear;
  for I := 0 to TreeList.Bands.Count - 1 do
  begin
    cbExpandColumn.Properties.Items.AddObject(TreeList.Bands[I].Caption.Text,
      TreeList.Bands[I]);
    if TreeList.Bands[I].Expandable = tlbeExpandable then
      cbExpandColumn.ItemIndex := I;
  end;
end;

initialization
  TfrmExpandableBands.Register;

end.
