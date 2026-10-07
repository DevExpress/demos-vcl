unit cxTreeListImagesFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, cxTreeListIssueListFormUnit, cxGraphics, cxCustomData, cxStyles,
  cxTL, cxMaskEdit, cxImageComboBox, cxCalendar, cxProgressBar, cxCurrencyEdit,
  cxButtonEdit, cxTLdxBarBuiltInMenu, dxSkinsCore, 
  cxLookAndFeelPainters, Vcl.ImgList, Vcl.StdCtrls, Vcl.ExtCtrls, cxContainer, cxEdit,
  cxGroupBox, cxInplaceContainer, cxDBTL, cxControls, cxTLData, cxCheckBox,
  Vcl.Grids, Vcl.DBGrids, cxLookAndFeels, cxImageList, dxLayoutContainer, cxClasses, dxLayoutControl, Vcl.ActnList,
  dxLayoutLookAndFeels, dxLayoutcxEditAdapters, dxScrollbarAnnotations, System.Actions, System.ImageList,
  cxFilter;

type
  TfrmImages = class(TfrmIssueList)
    ilState: TcxImageList;
    acOverlay: TAction;
    acDynamicState: TAction;
    chkOverlay: TdxLayoutCheckBoxItem;
    chkDynamicState: TdxLayoutCheckBoxItem;
    procedure acOverlayExecute(Sender: TObject);
    procedure acDynamicStateExecute(Sender: TObject);
  private
    function GetComplete(ANode: TcxTreeListNode): Integer;
  protected
    function GetOverlayIndex(ANode: TcxTreeListNode): Integer; override;
    function GetOverlayStateIndex(ANode: TcxTreeListNode): Integer; override;
    function GetStateIndex(ANode: TcxTreeListNode): Integer; override;
    function GetStateImageList: TCustomImageList; override;
    procedure LayoutSetup;
  public
    function HasOptions: Boolean; override;
    procedure DoInspectedObjectChanged; override;
    class function GetID: Integer; override;
    procedure FrameActivated; override;
  end;

implementation


{$R *.dfm}

uses
  System.Math, cxTreeListFeaturesDemoStrConsts;

function TfrmImages.HasOptions: Boolean;
begin
  Result := True;
end;

procedure TfrmImages.DoInspectedObjectChanged;
begin
  acDynamicState.Checked := TreeList.OptionsView.DynamicFocusedStateImages;
end;

class function TfrmImages.GetID: Integer;
begin
  Result := 8;
end;

procedure TfrmImages.acDynamicStateExecute(Sender: TObject);
begin
  TreeList.OptionsView.DynamicFocusedStateImages := acDynamicState.Checked;
end;

procedure TfrmImages.acOverlayExecute(Sender: TObject);
begin
  TreeList.FullRefresh;
end;

procedure TfrmImages.FrameActivated;
begin
  inherited FrameActivated;
  LayoutSetup;
end;

function TfrmImages.GetComplete(ANode: TcxTreeListNode): Integer;
var
  Value: Variant;
begin
  Value := clnComplete.Values[ANode];
  if Value = NULL then
    Result := 0
  else
    Result := Value;
end;

function TfrmImages.GetOverlayIndex(ANode: TcxTreeListNode): Integer;
begin
  Result := IfThen(acOverlay.Checked, IfThen(clnDone.Values[ANode], 7, -1), -1);
end;

function TfrmImages.GetOverlayStateIndex(ANode: TcxTreeListNode): Integer;
begin
  Result := IfThen(acOverlay.Checked, 11 + clnPriority.Values[ANode], -1);
end;

function TfrmImages.GetStateIndex(ANode: TcxTreeListNode): Integer;
begin
  Result := Max(0, GetComplete(ANode) div 10);
end;

function TfrmImages.GetStateImageList: TCustomImageList;
begin
  Result := ilState;
end;

procedure TfrmImages.LayoutSetup;
begin
  TreeList.OptionsView.ColumnAutoWidth := True;
  clnComplete.Visible := False;
  TreeList.FullExpand;
end;

initialization
  TfrmImages.Register;

end.
