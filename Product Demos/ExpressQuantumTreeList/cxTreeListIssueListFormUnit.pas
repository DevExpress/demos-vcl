unit cxTreeListIssueListFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, System.ImageList, System.Actions, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.ImgList, System.UITypes,
  cxTreeListDataModule, cxDBTreeListBaseFormUnit, cxGraphics,
  cxCustomData, cxStyles, cxTL, cxTLdxBarBuiltInMenu, dxSkinsCore,
  cxControls, cxInplaceContainer, cxTLData, cxDBTL, cxMaskEdit, cxCalendar,
  cxCheckBox, cxProgressBar, cxCalc, cxHyperLinkEdit, cxButtonEdit,
  cxImageComboBox, cxCurrencyEdit,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxGroupBox, cxLabel,
  Vcl.DBGrids, cxLookAndFeels, cxImageList, dxLayoutContainer, cxClasses, dxLayoutControl, Vcl.ActnList, dxLayoutLookAndFeels,
  dxScrollbarAnnotations, cxFilter;

type
  TfrmIssueList = class(TcxDBTreeListDemoUnitForm)
    clnTaskName: TcxDBTreeListColumn;
    clnPriority: TcxDBTreeListColumn;
    clnStartDate: TcxDBTreeListColumn;
    clnEndDate: TcxDBTreeListColumn;
    clnDone: TcxDBTreeListColumn;
    clnComplete: TcxDBTreeListColumn;
    clnTotalCost: TcxDBTreeListColumn;
    clnTotalRevenues: TcxDBTreeListColumn;
    clnFirstName: TcxDBTreeListColumn;
    clnMiddleName: TcxDBTreeListColumn;
    clnLastName: TcxDBTreeListColumn;
    clnCountry: TcxDBTreeListColumn;
    clnPostalCode: TcxDBTreeListColumn;
    clnCity: TcxDBTreeListColumn;
    clnAddress: TcxDBTreeListColumn;
    clnPhone: TcxDBTreeListColumn;
    clnFax: TcxDBTreeListColumn;
    clnEMail: TcxDBTreeListColumn;
    clnHomepage: TcxDBTreeListColumn;
    cxImageList1: TcxImageList;
    clnImageIndex: TcxDBTreeListColumn;
    ilFirstLevel: TcxImageList;
    ilFirstLevel_24: TcxImageList;
    procedure clnEMailPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure tlDBGetLevelImages(Sender: TcxCustomTreeList; ALevel: Integer;
      var AImages, AStateImages: TCustomImageList);
    procedure tlDBGetNodeImageIndex(Sender: TcxCustomTreeList;
      ANode: TcxTreeListNode; AIndexType: TcxTreeListImageIndexType;
      var AIndex: TImageIndex);
  private
  protected
    function GetOverlayIndex(ANode: TcxTreeListNode): Integer; virtual;
    function GetOverlayStateIndex(ANode: TcxTreeListNode): Integer; virtual;
    function GetStateIndex(ANode: TcxTreeListNode): Integer; virtual;
    function GetFirstLevelImageList: TCustomImageList; virtual;
    function GetStateImageList: TCustomImageList; virtual;
  public
    //class function GetID: Integer; override;
    function HasOptions: Boolean; override;
    procedure FrameActivated; override;
  end;

implementation

{$R *.dfm}

uses
  Winapi.ShellAPI, System.Math;

{ TfrmIssueList }

procedure TfrmIssueList.clnEMailPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  ShellExecute(Handle, PChar('OPEN'), PChar('mailto:' +
    VarToStr(TreeList.FocusedNode.Values[clnEmail.ItemIndex])),
    nil, nil, SW_SHOWMAXIMIZED);
end;

function TfrmIssueList.HasOptions: Boolean;
begin
  Result := False;
end;

procedure TfrmIssueList.FrameActivated;
begin
  inherited FrameActivated;
  TreeList.StateImages := GetStateImageList;
end;

{class function TfrmIssueList.GetID: Integer;
begin
  Result := 53;
end;}

procedure TfrmIssueList.tlDBGetLevelImages(Sender: TcxCustomTreeList;
  ALevel: Integer; var AImages, AStateImages: TCustomImageList);
begin
  if ALevel = 0 then
    AImages := GetFirstLevelImageList;
end;

procedure TfrmIssueList.tlDBGetNodeImageIndex(Sender: TcxCustomTreeList;
  ANode: TcxTreeListNode; AIndexType: TcxTreeListImageIndexType;
  var AIndex: TImageIndex);
begin
  AIndex := -1;
  case AIndexType of
    tlitImageIndex, tlitSelectedIndex: AIndex := clnImageIndex.Values[ANode];
    tlitStateIndex: AIndex := GetStateIndex(ANode);
    tlitOverlayIndex: AIndex := GetOverlayIndex(ANode);
    tlitOverlayStateIndex: AIndex := GetOverlayStateIndex(ANode);
  end;
end;

function TfrmIssueList.GetOverlayIndex(ANode: TcxTreeListNode): Integer;
begin
  Result := -1;
end;

function TfrmIssueList.GetOverlayStateIndex(ANode: TcxTreeListNode): Integer;
begin
  Result := -1;
end;

function TfrmIssueList.GetStateIndex(ANode: TcxTreeListNode): Integer;
begin
  Result := -1;
end;

function TfrmIssueList.GetFirstLevelImageList: TCustomImageList;
begin
  Result := ilFirstLevel;
end;

function TfrmIssueList.GetStateImageList: TCustomImageList;
begin
  Result := nil;
end;

{initialization
  TfrmIssueList.Register;}

end.
