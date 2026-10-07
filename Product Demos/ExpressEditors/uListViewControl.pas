unit uListViewControl;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxCustomDemoFrameUnit, cxGraphics, cxControls, dxTreeView, dxLayoutLookAndFeels, cxLookAndFeels,
  cxLookAndFeelPainters, dxLayoutContainer, cxClasses, dxUIAdorners, System.Actions, Vcl.ActnList,
  dxLayoutControl, dxListView, Vcl.ImgList, cxImageList;

type
  TfrmListViewControl = class(TdxCustomDemoFrame)
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    ilLargeCars: TcxImageList;
    ilSmallCars: TcxImageList;
    LV: TdxListViewControl;
    LVGroup1: TdxListGroup;
    LVGroup2: TdxListGroup;
    LVGroup3: TdxListGroup;
    LVGroup4: TdxListGroup;
    LVGroup5: TdxListGroup;
    LVGroup6: TdxListGroup;
    LVGroup7: TdxListGroup;
    LVGroup8: TdxListGroup;
    LVGroup9: TdxListGroup;
    LVGroup10: TdxListGroup;
    LVGroup11: TdxListGroup;
    LVGroup12: TdxListGroup;
    LVGroup13: TdxListGroup;
    LVGroup14: TdxListGroup;
    LVGroup15: TdxListGroup;
    LVGroup16: TdxListGroup;
    LVGroup17: TdxListGroup;
    LVGroup18: TdxListGroup;
    LVGroup19: TdxListGroup;
    LVName: TdxListColumn;
    LVModification: TdxListColumn;
    LVCategory: TdxListColumn;
    LVMPGCity: TdxListColumn;
    LVMPGHighway: TdxListColumn;
    LVDoors: TdxListColumn;
    LVCylinders: TdxListColumn;
    LVHorsepower: TdxListColumn;
    LVTorque: TdxListColumn;
    LVPrice: TdxListColumn;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    liMultiSelect: TdxLayoutCheckBoxItem;
    lgViewStyles: TdxLayoutGroup;
    liIcons: TdxLayoutRadioButtonItem;
    liList: TdxLayoutRadioButtonItem;
    liReport: TdxLayoutRadioButtonItem;
    liSmallIcon: TdxLayoutRadioButtonItem;
    liGroupView: TdxLayoutCheckBoxItem;
    liCheckboxes: TdxLayoutCheckBoxItem;
    lgItemsArrangement: TdxLayoutGroup;
    liHorizontal: TdxLayoutRadioButtonItem;
    liVertical: TdxLayoutRadioButtonItem;
    liExplorerStyle: TdxLayoutCheckBoxItem;
    lgRenderMode: TdxLayoutGroup;
    liGDI: TdxLayoutRadioButtonItem;
    liGDIPlus: TdxLayoutRadioButtonItem;
    liDirectX: TdxLayoutRadioButtonItem;
    dxLayoutGroup1: TdxLayoutGroup;
    procedure liIconsClick(Sender: TObject);
    procedure liHorizontalClick(Sender: TObject);
    procedure liMultiSelectClick(Sender: TObject);
    procedure liGroupViewClick(Sender: TObject);
    procedure liCheckboxesClick(Sender: TObject);
    procedure liExplorerStyleClick(Sender: TObject);
    procedure LVInfoTip(Sender: TdxCustomListView; AItem: TdxListItem; var AInfoTip: string);
    procedure liGDIClick(Sender: TObject);
  protected
    function GetInspectedObject: TPersistent; override;
    function GetDescription: string; override;
  end;

implementation

uses
  System.Math, dxCore, dxFrames, FrameIDs, dxCoreGraphics, uStrsConst;

{$R *.dfm}

function TfrmListViewControl.GetDescription: string;
begin
  Result := sdxFrameListViewControlDescription;
end;

function TfrmListViewControl.GetInspectedObject: TPersistent;
begin
  Result := LV;
end;

procedure TfrmListViewControl.liCheckboxesClick(Sender: TObject);
begin
  LV.Checkboxes := liCheckboxes.Checked;
end;

procedure TfrmListViewControl.liExplorerStyleClick(Sender: TObject);
begin
  LV.ExplorerStyle := liExplorerStyle.Checked;
end;

procedure TfrmListViewControl.liGDIClick(Sender: TObject);
var
  AItem: TdxLayoutRadioButtonItem;
begin
  AItem := Safe<TdxLayoutRadioButtonItem>.Cast(Sender);
  if AItem <> nil then
  begin
    ShowHourglassCursor;
    try
      case AItem.Tag of
        0: LV.LookAndFeel.RenderMode := rmGDI;
        1: LV.LookAndFeel.RenderMode := rmGDIPlus;
        2: LV.LookAndFeel.RenderMode := rmDirectX;
      end;
    finally
      HideHourglassCursor;
    end;
  end;
end;

procedure TfrmListViewControl.liGroupViewClick(Sender: TObject);
begin
  LV.GroupView := liGroupView.Checked;
end;

procedure TfrmListViewControl.liHorizontalClick(Sender: TObject);
var
  AItem: TdxLayoutRadioButtonItem;
begin
  AItem := Safe<TdxLayoutRadioButtonItem>.Cast(Sender);
  if AItem <> nil then
  begin
    case AItem.Tag of
      0:
        begin
          LV.ViewStyleIcon.Arrangement := TdxListIconsArrangement.Horizontal;
          LV.ViewStyleSmallIcon.Arrangement := TdxListIconsArrangement.Horizontal;
        end;
      1:
        begin
          LV.ViewStyleIcon.Arrangement := TdxListIconsArrangement.Vertical;
          LV.ViewStyleSmallIcon.Arrangement := TdxListIconsArrangement.Vertical;
        end;
    end;
  end;
end;

procedure TfrmListViewControl.liIconsClick(Sender: TObject);
var
  AItem: TdxLayoutRadioButtonItem;
begin
  AItem := Safe<TdxLayoutRadioButtonItem>.Cast(Sender);
  if AItem <> nil then
  begin
    case AItem.Tag of
      0: LV.ViewStyle := TdxListViewStyle.Icon;
      1: LV.ViewStyle := TdxListViewStyle.SmallIcon;
      2: LV.ViewStyle := TdxListViewStyle.List;
      3: LV.ViewStyle := TdxListViewStyle.Report;
    end;
    lgItemsArrangement.Enabled := AItem.Tag in [0, 1];
  end;
end;

procedure TfrmListViewControl.liMultiSelectClick(Sender: TObject);
begin
  LV.MultiSelect := liMultiSelect.Checked;
end;

procedure TfrmListViewControl.LVInfoTip(Sender: TdxCustomListView; AItem: TdxListItem; var AInfoTip: string);
begin
  AInfoTip := Format('Trademark: %s'#13#10'Model: %s', [AItem.Caption, AItem.SubItems[0]]);
end;

initialization
  dxFrameManager.RegisterFrame(ListViewControlFrameID, TfrmListViewControl, ListViewControlFrameName, -1,
    HighlightedFeatureGroupIndex, -1, -1);
end.
