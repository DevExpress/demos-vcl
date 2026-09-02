unit uGridCustomRowLayout;

interface

uses
  System.Classes, System.Types, Vcl.Controls, Vcl.StdCtrls, Vcl.Forms, Vcl.ImgList, Vcl.ActnList, System.Actions, Data.DB, Vcl.Menus,
  cxClasses, cxGraphics, cxStyles, cxControls, cxContainer, cxEdit, cxButtons, cxCheckBox,
  dxRatingControl, cxImageList, cxEditRepositoryItems, cxCustomData, cxData, cxDBData,
  cxDataStorage, dxDateRanges, cxFilter, dxScrollbarAnnotations, cxNavigator, cxLookAndFeels,
  cxLookAndFeelPainters, dxLayoutLookAndFeels, dxLayoutControl, dxLayoutContainer,
  dxGridFrame, maindata, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  dxLayoutControlAdapters, dxLayoutcxEditAdapters, cxGrid, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridInplaceEditForm,
  cxGroupBox, dxPanel, cxGeometry, dxFramedControl;

type
  TfrmGridCustomRowLayout = class(TdxGridFrame)
    MasterLevel: TcxGridLevel;
    EditRepository: TcxEditRepository;
    EditRepositoryHyperLink: TcxEditRepositoryHyperLinkItem;
    srStyles: TcxStyleRepository;
    cxStyle1: TcxStyle;
    ilImages: TcxImageList;
    btnCustomize: TcxButton;
    liCustomizeLayout: TdxLayoutItem;
    MasterTableView: TcxGridDBTableView;
    MasterTableViewDepartment: TcxGridDBColumn;
    MasterTableViewTitle: TcxGridDBColumn;
    MasterTableViewStatus: TcxGridDBColumn;
    MasterTableViewFullName: TcxGridDBColumn;
    MasterTableViewPrefix: TcxGridDBColumn;
    MasterTableViewMobilePhone: TcxGridDBColumn;
    MasterTableViewEmail: TcxGridDBColumn;
    MasterTableViewSkype: TcxGridDBColumn;
    MasterTableViewAddress_Line: TcxGridDBColumn;
    MasterTableViewAddress_City: TcxGridDBColumn;
    MasterTableViewAddress_State: TcxGridDBColumn;
    MasterTableViewPicture: TcxGridDBColumn;
    MasterTableViewPerson: TcxGridDBColumn;
    DetailLevel: TcxGridLevel;
    DetailTableView: TcxGridDBTableView;
    DetailTableViewSubject: TcxGridDBColumn;
    DetailTableViewStartDate: TcxGridDBColumn;
    DetailTableViewDueDate: TcxGridDBColumn;
    DetailTableViewCompletion: TcxGridDBColumn;
    DetailTableViewAssignedEmployeeId: TcxGridDBColumn;
    DetailTableViewOwnerId: TcxGridDBColumn;
    MasterTableViewHireDate: TcxGridDBColumn;
    MasterTableViewPersonalProfile: TcxGridDBColumn;
    MasterTableViewFirstName: TcxGridDBColumn;
    MasterTableViewLastName: TcxGridDBColumn;
    MasterTableViewHomePhone: TcxGridDBColumn;
    MasterTableViewBirthDate: TcxGridDBColumn;
    MasterTableViewAddress_ZipCode: TcxGridDBColumn;
    MasterTableViewAddress_Latitude: TcxGridDBColumn;
    MasterTableViewAddress_Longitude: TcxGridDBColumn;
    MasterTableViewAge: TcxGridDBColumn;
    MasterTableViewWorked: TcxGridDBColumn;
    cxStyle2: TcxStyle;
    MasterTableViewLevel: TcxGridDBColumn;
    btnCustomizeEditForm: TcxButton;
    liCustomizeEditFromLayout: TdxLayoutItem;
    acInvertSelect: TAction;
    acHotTrack: TAction;
    cbHotTrack: TdxLayoutCheckBoxItem;
    cbSelectionMode: TcxComboBox;
    liSelectionMode: TdxLayoutItem;
    procedure acInvertSelectExecute(Sender: TObject);
    procedure acHotTrackExecute(Sender: TObject);
    procedure btnCustomizeClick(Sender: TObject);
    procedure btnCustomizeEditFormClick(Sender: TObject);
    procedure cbSelectionModePropertiesEditValueChanged(Sender: TObject);
    procedure MasterTableViewDrawLevel(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure MasterTableViewDrawText(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure MasterTableViewCellClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
      AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure MasterTableViewInitEdit(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit);
    procedure MasterTableViewDetachedEditFormInitialize(Sender: TcxGridTableView; AForm: TForm);
    procedure MasterTableViewMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure MasterTableViewMouseLeave(Sender: TObject);
  strict private
    FHotRecordIndex: Integer;

    procedure SetHotRecordIndex(AValue: Integer);
  protected
    function GetDescription: string; override;
    function GetEditIndicatorBounds(AViewInfo: TcxGridTableDataCellViewInfo): TRect;
    procedure InitEditFormMode; virtual;
    procedure InitInplaceMode; virtual;
    function NeedSetup: Boolean; override;

    property HotRecordIndex: Integer read FHotRecordIndex write SetHotRecordIndex;
  public
    constructor Create(AOwner: TComponent); override;
  end;

implementation

{$R *.dfm}

uses
  Winapi.Windows, Vcl.Graphics,
  dxFrames, FrameIDs, uStrsConst, dxCoreGraphics, cxGridCommon, cxGridRowLayout;

{ TfrmGridCustomRowLayout }

constructor TfrmGridCustomRowLayout.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  MasterTableView.DataController.Groups.FullExpand;
  MasterTableView.Controller.FocusedRowIndex := 2;
  MasterTableView.Controller.FocusFirstAvailableItem;
  MasterTableView.Controller.TopRowIndex := 0;
end;

function TfrmGridCustomRowLayout.GetDescription: string;
begin
  Result := sdxFrameCustomRowLayoutDescription;
end;

function TfrmGridCustomRowLayout.GetEditIndicatorBounds(AViewInfo: TcxGridTableDataCellViewInfo): TRect;
const
  AIndent = 2;
var
  ATextWidth: Integer;
  AEditViewInfo: TcxCustomTextEditViewInfo;
begin
  AEditViewInfo := TcxCustomTextEditViewInfo(AViewInfo.EditViewInfo);
  Result := AEditViewInfo.TextRect;
  ATextWidth := cxTextWidth(AEditViewInfo.Font, AEditViewInfo.Text);
  Result.Left := Result.Left + ATextWidth + AViewInfo.ScaleFactor.Apply(AIndent);
  Result.Right := Result.Left + AViewInfo.ScaleFactor.Apply(ilImages.Width);
  Result := cxRectCenterVertically(Result, AViewInfo.ScaleFactor.Apply(ilImages.Height));
end;

procedure TfrmGridCustomRowLayout.InitEditFormMode;
begin
  MasterTableViewPicture.Options.Focusing := True;
  MasterTableViewPicture.Options.Editing := True;
  MasterTableViewLevel.Options.Focusing := True;
  MasterTableViewLevel.Options.Editing := True;
  TdxRatingControlProperties(MasterTableViewLevel.Properties).AllowHover := True;
  MasterTableView.OptionsBehavior.EditMode := emModalEditForm;
end;

procedure TfrmGridCustomRowLayout.InitInplaceMode;
begin
  MasterTableViewPicture.Options.Focusing := False;
  MasterTableViewPicture.Options.Editing := False;
  MasterTableViewLevel.Options.Focusing := False;
  MasterTableViewLevel.Options.Editing := False;
  TdxRatingControlProperties(MasterTableViewLevel.Properties).AllowHover := False;
  MasterTableView.OptionsBehavior.EditMode := emInplace;
end;

function TfrmGridCustomRowLayout.NeedSetup: Boolean;
begin
  Result := True;
end;

procedure TfrmGridCustomRowLayout.SetHotRecordIndex(AValue: Integer);
begin
  if HotRecordIndex <> AValue then
  begin
    if MasterTableView.ViewData.IsRecordIndexValid(HotRecordIndex) then
      MasterTableView.ViewData.Records[HotRecordIndex].Invalidate(MasterTableViewPerson);
    FHotRecordIndex := AValue;
    if MasterTableView.ViewData.IsRecordIndexValid(HotRecordIndex) then
      MasterTableView.ViewData.Records[HotRecordIndex].Invalidate(MasterTableViewPerson);
  end;
end;

procedure TfrmGridCustomRowLayout.acInvertSelectExecute(Sender: TObject);
begin
  MasterTableView.OptionsSelection.InvertSelect := acInvertSelect.Checked;
end;

procedure TfrmGridCustomRowLayout.acHotTrackExecute(Sender: TObject);
begin
  MasterTableView.OptionsBehavior.HotTrack := acHotTrack.Checked;
end;

procedure TfrmGridCustomRowLayout.btnCustomizeClick(Sender: TObject);
begin
  MasterTableView.Controller.ShowRowLayoutCustomizationDialog;
end;

procedure TfrmGridCustomRowLayout.btnCustomizeEditFormClick(Sender: TObject);
begin
  MasterTableView.Controller.ShowEditFormCustomizationDialog;
end;

procedure TfrmGridCustomRowLayout.cbSelectionModePropertiesEditValueChanged(Sender: TObject);
begin
  MasterTableView.OptionsSelection.InvertSelect := cbSelectionMode.ItemIndex = 0;
end;

procedure TfrmGridCustomRowLayout.MasterTableViewDrawLevel(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  AViewInfo.EditViewInfo.Transparent := True;
  ACanvas.ExcludeFrameRect(cxRectInflate(AViewInfo.EditViewInfo.Bounds, 1));
  if AViewInfo.State = gcsSelected then
    AViewInfo.State := gcsNone;
end;

procedure TfrmGridCustomRowLayout.MasterTableViewDrawText(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
const
  ATextIndent = 2;
var
  ABounds: TRect;
  ACaptionVisible: Boolean;
begin
  AViewInfo.EditViewInfo.Transparent := True;
  ACanvas.ExcludeFrameRect(cxRectInflate(AViewInfo.EditViewInfo.Bounds, 1));
  ACaptionVisible := TcxCustomGridColumn(AViewInfo.Item).RowLayoutItem.CaptionOptions.Visible;
  if not ACaptionVisible then
    AViewInfo.EditViewInfo.Offset(- AViewInfo.ScaleFactor.Apply(ATextIndent), 0);
  AViewInfo.Item.OnCustomDrawCell := nil;
  ACanvas.SaveClipRegion;
  try
    AViewInfo.EditViewInfo.Paint(ACanvas);
    if (AViewInfo.Item = MasterTableViewPerson) and (AViewInfo.GridRecord.Index = HotRecordIndex) then
    begin
      ABounds := GetEditIndicatorBounds(AViewInfo);
      ilImages.Draw(ACanvas.Canvas, ABounds, 0);
    end;
    if ACaptionVisible then
    begin
      ACanvas.ExcludeClipRect(AViewInfo.EditViewInfo.Bounds);
      AViewInfo.Paint(ACanvas);
    end;
  finally
    ACanvas.RestoreClipRegion;
    AViewInfo.Item.OnCustomDrawCell := MasterTableViewDrawText;
    if not ACaptionVisible then
      AViewInfo.EditViewInfo.Offset(AViewInfo.ScaleFactor.Apply(ATextIndent), 0);
  end;
  ADone := True;
end;

procedure TfrmGridCustomRowLayout.MasterTableViewCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  APos: TPoint;
  ABounds: TRect;
  ARow: TcxGridDataRow;
  ARecordIndex: Integer;
begin
  if (AButton = mbLeft) and (AShift = []) and (ACellViewInfo.Item = MasterTableViewPerson) then
  begin
    APos := dxMapWindowPoint(0, MasterTableView.Site.Handle, GetMouseCursorPos);
    ABounds := GetEditIndicatorBounds(ACellViewInfo);
    if PtInRect(ABounds, APos) then
    begin
      ARow := TcxGridDataRow(ACellViewInfo.GridRecord);
      if MasterTableView.DataController.IsEditing then
      begin
        HotRecordIndex := -1;
        ARecordIndex := ARow.RecordIndex;
        MasterTableView.DataController.Post(True);
        ARow := TcxGridDataRow(MasterTableView.ViewData.GetRecordByRecordIndex(ARecordIndex));
        if ARow = nil then
          Exit;
      end;
      InitEditFormMode;
      try
        ARow.EditFormVisible := True;
      finally
        InitInplaceMode;
        MasterTableView.Controller.FocusFirstAvailableItem;
        AHandled := True;
      end;
    end;
  end;
end;

procedure TfrmGridCustomRowLayout.MasterTableViewInitEdit(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit);
begin
  if AItem = MasterTableViewLevel then
    TdxRatingControl(AEdit).Transparent := True;
end;

procedure TfrmGridCustomRowLayout.MasterTableViewDetachedEditFormInitialize(Sender: TcxGridTableView; AForm: TForm);
begin
  AForm.BorderStyle := bsDialog;
end;

procedure TfrmGridCustomRowLayout.MasterTableViewMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
var
  AHitTest: TcxCustomGridHitTest;
begin
  AHitTest := MasterTableView.ViewInfo.GetHitTest(Point(X, Y));
  if (AHitTest <> nil) and (AHitTest.HitTestCode in [htRecord, htCell]) then
    HotRecordIndex := TcxGridRecordHitTest(AHitTest).GridRecord.Index
  else
    HotRecordIndex := -1;
end;

procedure TfrmGridCustomRowLayout.MasterTableViewMouseLeave(Sender: TObject);
begin
  HotRecordIndex := -1;
end;

initialization
  dxFrameManager.RegisterFrame(GridCustomRowLayoutFrameID, TfrmGridCustomRowLayout, GridCustomRowLayoutFrameName,
    -1, NewUpdatedGroupIndex, GridViewGroupIndex, -1);

end.
