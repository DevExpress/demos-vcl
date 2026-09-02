unit cxTreeListDepartmentsFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.ImgList, Vcl.Dialogs,
  System.Actions, System.ImageList, System.UITypes,
  cxUnboundTreeListBaseFormUnit, cxGraphics, cxCustomData, cxStyles,
  cxTL, cxTextEdit, cxCurrencyEdit, cxDropDownEdit, cxMaskEdit,
  cxTLdxBarBuiltInMenu, dxSkinsCore,
  cxInplaceContainer, cxControls, cxLookAndFeelPainters, Vcl.StdCtrls,
  Vcl.ExtCtrls, cxContainer, cxEdit, cxGroupBox, cxLookAndFeels, dxLayoutContainer, cxClasses, dxLayoutControl, Vcl.ActnList,
  dxLayoutLookAndFeels, cxImageList, dxScrollbarAnnotations, cxFilter;

type
  TfrmDepartments = class(TcxUnboundTreeListDemoUnitForm)
    clnDepartment: TcxTreeListColumn;
    clnBudget: TcxTreeListColumn;
    clnLocation: TcxTreeListColumn;
    clnPhone1: TcxTreeListColumn;
    clnPhone2: TcxTreeListColumn;
    cxImgTreeList: TcxImageList;
    procedure tlUnboundGetNodeImageIndex(Sender: TcxCustomTreeList;
      ANode: TcxTreeListNode; AIndexType: TcxTreeListImageIndexType;
      var AIndex: TImageIndex);
  private
    procedure InitData;
  public
    procedure ActivateDataSet; override;
    //class function GetID: Integer; override;
    function HasOptions: Boolean; override;
    procedure FrameActivated; override;
  end;

implementation

{$R *.dfm}

{ TfrmDepartments }

procedure TfrmDepartments.ActivateDataSet;
begin
  InitData;
end;

function TfrmDepartments.HasOptions: Boolean;
begin
  Result := False;
end;

procedure TfrmDepartments.FrameActivated;
begin
  inherited FrameActivated;
  TreeList.Root.Expand(True);
end;

{class function TfrmDepartments.GetID: Integer;
begin
  Result := 50;
end;}

procedure TfrmDepartments.InitData;

   function AddNode(AParent: TcxTreeListNode; const AValues: Array of Variant; AImageIndex: Integer): TcxTreeListNode;
   begin
     Result := TcxTreeList(TreeList).AddChild(AParent);
     Result.AssignValues(AValues);
     Result.ImageIndex := AImageIndex;
   end;

var
  ARootNode, ASalesMarketingNode, AEngineeringNode, ANode: TcxTreeListNode;
begin
  ARootNode := AddNode(nil, ['Corporate Headquarters', 1000000, 'Monterey', '(408) 555-1234', '(408) 555-1234'], 8);
  ASalesMarketingNode := AddNode(ARootNode, ['Sales and Marketing', 22000, 'San Francisco', '(415) 555-1234', '(415) 555-1234'], 1);
  AddNode(ASalesMarketingNode, ['Field Office: Canada', 500000, 'Toronto', '(416) 677-1000', '(416) 555-1234'], 10);
  AddNode(ASalesMarketingNode, ['Field Office: East Coast', 500000, 'Boston', '(617) 555-1234', '(415) 555-1234'], 12);
  ANode := AddNode(ASalesMarketingNode, ['Field Office: East Coast', 600000, 'Kuaui', '(808) 555-1234', '(808) 555-1234'], 12);
  AddNode(ANode, ['Field Office: Singapore', 300000, 'Singapore', '355-1234', '355-1234'], 11);
  AddNode(ANode, ['Field Office: Japan', 500000, 'Tokyo', '5350-0901', '5350-0901'], 13);
  AddNode(ASalesMarketingNode, ['Marketing', 1500000, 'San Francisco', '(415) 555-1234', '(415) 555-1234'], 12);
  AddNode(ARootNode, ['Finance', 40000, 'Monterey', '(408) 555-1234', '(408) 555-1234'], 14);
  AEngineeringNode := AddNode(ARootNode, ['Engineering', 1100000, 'Monterey', '(408) 555-1234', '(408) 555-1234'], 2);
  ANode := AddNode(AEngineeringNode, ['Consumer Electronics Div.', 1150000, 'Burlington, VT', '(802) 555-1234', '(802) 555-1234'], 5);
  AddNode(ANode, ['Software Development', 400000, 'Monterey', '(408) 555-1234', '(408) 555-1234'], 15);
  ANode := AddNode(AEngineeringNode, ['Software Products Div.', 1200000, 'Monterey', '(408) 555-1234', '(408) 555-1234'], 5);
  AddNode(ANode, ['Quality Assurance', 88000, 'Monterey', '(408) 555-1234', '(408) 555-1234'], 18);
  AddNode(ANode, ['Customer Support', 120000, 'Monterey', '(408) 555-1234', '(408) 555-1234'], 16);
  AddNode(ANode, ['Research and Development', 460000, 'Burlington, VT', '(802) 555-1234', '(802) 555-1234'], 19);
  AddNode(ANode, ['Customer Services', 850000, 'Burlington, VT', '(802) 555-1234', '(802) 555-1234'], 17);
end;

procedure TfrmDepartments.tlUnboundGetNodeImageIndex(Sender: TcxCustomTreeList;
  ANode: TcxTreeListNode; AIndexType: TcxTreeListImageIndexType;
  var AIndex: TImageIndex);
begin
  if AIndexType = tlitSelectedIndex then
    AIndex := ANode.ImageIndex;
end;

{initialization
  TfrmDepartments.Register;}

end.
