unit uVertGridNavigator;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, uVertGridCustomMultiRecords, cxStyles, cxGraphics, cxEdit,
  cxImageComboBox, cxSpinEdit, cxBlobEdit, cxHyperLinkEdit, cxCurrencyEdit,
  cxImage, Vcl.ImgList, cxVGrid, cxDBVGrid, cxControls, cxInplaceContainer,
  Vcl.StdCtrls, Vcl.ExtCtrls, cxNavigator, cxContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookAndFeels, cxLookAndFeelPainters, cxLabel, dxLayoutContainer, cxClasses, dxLayoutControl,
  dxLayoutcxEditAdapters, dxScrollbarAnnotations, dxLayoutLookAndFeels, cxFilter;

type
  TfrmVertGridNavigator = class(TfrmCustomVertGridMultiRecords)
    dxLayoutItem2: TdxLayoutItem;
    Navigator: TcxNavigator;
    dxLayoutItem3: TdxLayoutItem;
    cbvGridLayoutStyle: TcxComboBox;
    dxLayoutEmptySpaceItem1: TdxLayoutEmptySpaceItem;
    procedure cbvGridLayoutStylePropertiesEditValueChanged(
      Sender: TObject);
  private
  protected
    function GetDescription: string; override;
  public
    constructor Create(AOwner: TComponent); override;
  end;

implementation

uses
  maindata, dxFrames, FrameIDs, uStrsConst, System.TypInfo;

{$R *.dfm}

procedure FillTypeInfoCombo(ACombo: TcxComboBox; AInstance: TObject; APropName: string);
var
  APropInfo: PPropInfo;
  I: Integer;
begin
  ACombo.Properties.DropDownListStyle := lsFixedList;
  APropInfo := GetPropInfo(AInstance.ClassType, APropName);
  if (APropInfo <> nil) and (APropInfo.PropType <> nil) then
    for I := GetTypeData(APropInfo.PropType^)^.MinValue to GetTypeData(APropInfo.PropType^)^.MaxValue do
       ACombo.Properties.Items.Append(GetEnumName(APropInfo.PropType^, I));
end;


{ TfrmVertGridNavigator }

constructor TfrmVertGridNavigator.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FillTypeInfoCombo(cbvGridLayoutStyle, cxDBVerticalGrid, 'LayoutStyle');
  cbvGridLayoutStyle.ItemIndex := Integer(cxDBVerticalGrid.LayoutStyle);
end;

procedure TfrmVertGridNavigator.cbvGridLayoutStylePropertiesEditValueChanged(
  Sender: TObject);
begin
  cxDBVerticalGrid.LayoutStyle := TcxvgLayoutStyle(cbvGridLayoutStyle.ItemIndex);
end;

function TfrmVertGridNavigator.GetDescription: string;
begin
  Result := sdxFrameVerticalGridNavigator;
end;

initialization
  dxFrameManager.RegisterFrame(VerticalGridNavigatorFrameID, TfrmVertGridNavigator,
    VerticalGridNavigatorName, VerticalGridNavigatorImageIndex, -1, VerticalGridSideBarGroupIndex);


end.
