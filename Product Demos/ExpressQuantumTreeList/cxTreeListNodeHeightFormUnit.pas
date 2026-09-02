unit cxTreeListNodeHeightFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, cxTreeListDepartmentsFormUnit, cxGraphics, cxCustomData, cxStyles,
  cxTL, cxTextEdit, cxCurrencyEdit, cxDropDownEdit, cxMaskEdit,
  cxTLdxBarBuiltInMenu, dxSkinsCore, cxLookAndFeelPainters, cxSpinEdit, Vcl.ImgList, Vcl.StdCtrls, Vcl.ExtCtrls, cxContainer,
  cxEdit, cxGroupBox, cxInplaceContainer, cxControls, cxLabel, cxTrackBar, cxLookAndFeels, dxLayoutContainer, cxClasses,
  dxLayoutControl, Vcl.ActnList, dxLayoutLookAndFeels, dxLayoutcxEditAdapters, cxImageList, dxScrollbarAnnotations,
  System.ImageList, System.Actions, cxFilter;

type
  TfrmNodeHeight = class(TfrmDepartments)
    Timer: TTimer;
    dxLayoutItem2: TdxLayoutItem;
    seHeight: TcxSpinEdit;
    dxLayoutItem3: TdxLayoutItem;
    seDefaultHeight: TcxSpinEdit;
    procedure TimerTimer(Sender: TObject);
    procedure cxSpinEdit1PropertiesChange(Sender: TObject);
    procedure seDefaultHeightPropertiesChange(Sender: TObject);
  private
    procedure LayoutSetup;
    procedure ReturnDefaultNodeHeight;
    procedure ReturnFirstNodeHeight;
    procedure SetDefaultNodeHeight;
    procedure SetNodeHeight;
  public
    function HasOptions: Boolean; override;
    procedure DoInspectedObjectChanged; override;
    procedure FrameActivated; override;
    class function GetID: Integer; override;
  end;

implementation

uses
  cxGeometry,
  cxTreeListFeaturesDemoStrConsts;

{$R *.dfm}

procedure TfrmNodeHeight.cxSpinEdit1PropertiesChange(Sender: TObject);
begin
  SetNodeHeight;
end;

function TfrmNodeHeight.HasOptions: Boolean;
begin
  Result := True;
end;

procedure TfrmNodeHeight.DoInspectedObjectChanged;
begin
  ReturnFirstNodeHeight;
  ReturnDefaultNodeHeight;
end;

procedure TfrmNodeHeight.FrameActivated;
begin
  inherited FrameActivated;
  LayoutSetup;
end;

class function TfrmNodeHeight.GetID: Integer;
begin
  Result := 9;
end;

procedure TfrmNodeHeight.LayoutSetup;
begin
  UnboundTreeList.OptionsCustomizing.NodeSizing := True;
  UnboundTreeList.OptionsView.Indicator := True;
  seDefaultHeight.Value := ScaleFactor.Apply(seDefaultHeight.Value);
  seHeight.Value := ScaleFactor.Apply(seHeight.Value);
  SetNodeHeight;
  SetDefaultNodeHeight;
end;

procedure TfrmNodeHeight.ReturnDefaultNodeHeight;
begin
  seDefaultHeight.Value := UnboundTreeList.DefaultRowHeight;
end;

procedure TfrmNodeHeight.ReturnFirstNodeHeight;
begin
  if UnboundTreeList.Root.Count > 0 then
  begin
    if UnboundTreeList.Root.Items[0].Height = 0 then
      seHeight.Value := UnboundTreeList.DefaultRowHeight
    else
      seHeight.Value := UnboundTreeList.Root.Items[0].Height;
  end;
end;

procedure TfrmNodeHeight.seDefaultHeightPropertiesChange(Sender: TObject);
begin
  SetDefaultNodeHeight;
end;

procedure TfrmNodeHeight.SetDefaultNodeHeight;
begin
  UnboundTreeList.DefaultRowHeight := seDefaultHeight.Value;
end;

procedure TfrmNodeHeight.SetNodeHeight;
begin
  UnboundTreeList.Root.Items[0].Height := seHeight.Value;
end;

procedure TfrmNodeHeight.TimerTimer(Sender: TObject);
begin
  if not seHeight.Focused then
    ReturnFirstNodeHeight;
  if not seDefaultHeight.Focused then
    ReturnDefaultNodeHeight;
end;

initialization
  TfrmNodeHeight.Register;

end.
