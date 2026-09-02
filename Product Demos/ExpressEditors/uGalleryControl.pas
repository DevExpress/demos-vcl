unit uGalleryControl;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Data.DB,
  Vcl.Dialogs, dxFrameCustomControl, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxLayoutContainer,
  dxGalleryControl, Vcl.ActnList, cxClasses, dxLayoutControl, MainData, Datasnap.DBClient, dxGDIPlusClasses, dxCalloutPopup,
  cxContainer, cxEdit, cxGroupBox, dxLayoutcxEditAdapters, cxImage, cxDBEdit, Main, cxMaskEdit, cxButtonEdit, cxTextEdit,
  cxSpinEdit, cxDropDownEdit, cxCheckBox, dxGallery, System.Actions,
  dxUIAdorners;

type
  TfrmGalleryControl = class(TfrmCustomControl)
    GalleryControl: TdxGalleryControl;
    dxLayoutItem1: TdxLayoutItem;
    dxCalloutPopup1: TdxCalloutPopup;
    grbDetailedInfo: TcxGroupBox;
    lcDetailedInfoGroup_Root: TdxLayoutGroup;
    lcDetailedInfo: TdxLayoutControl;
    cxDBImage1: TcxDBImage;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem3: TdxLayoutItem;
    edFirstName: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    edLastName: TcxDBTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    edPosition: TcxDBTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    edMobilePhone: TcxDBButtonEdit;
    dxLayoutItem7: TdxLayoutItem;
    edEmail: TcxDBButtonEdit;
    dxLayoutItem8: TdxLayoutItem;
    edSkype: TcxDBButtonEdit;
    dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem;
    dxLayoutItem9: TdxLayoutItem;
    cbDetailedInfo: TcxCheckBox;
    dxLayoutEmptySpaceItem3: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem4: TdxLayoutEmptySpaceItem;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutItem10: TdxLayoutItem;
    cmbCheckMode: TcxComboBox;
    dxLayoutItem11: TdxLayoutItem;
    cmbMultiSelectKind: TcxComboBox;
    dxLayoutItem12: TdxLayoutItem;
    cbShowHint: TcxCheckBox;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutItem13: TdxLayoutItem;
    cbColumnAutoWidth: TcxCheckBox;
    dxLayoutItem14: TdxLayoutItem;
    edColumnCount: TcxSpinEdit;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutEmptySpaceItem5: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem6: TdxLayoutEmptySpaceItem;
    dxLayoutItem15: TdxLayoutItem;
    cmbAlignHorz: TcxComboBox;
    dxLayoutItem16: TdxLayoutItem;
    cmbAlignVert: TcxComboBox;
    dxLayoutItem17: TdxLayoutItem;
    cmbPosition: TcxComboBox;
    acDetailedInfo: TAction;
    acShowHint: TAction;
    acColumnAutoWidth: TAction;
    cbiEnableDragAndDrop: TdxLayoutCheckBoxItem;
    procedure GalleryControlItemClick(Sender: TObject; AItem: TdxGalleryControlItem);
    procedure acDetailedInfoExecute(Sender: TObject);
    procedure GalleryControlDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure cbiEnableDragAndDropClick(Sender: TObject);
  private
    FShowDetailedInfo: Boolean;
    function CreateDepartmentsList: TStringList;
    procedure ExtractDepartmentNameAndID(const ASource: string; out ADepartmentName: string; out ADepartmentID: Integer);
    procedure LoadGlyph(AItemGlyph: TdxSmartGlyph; ABlobField: TBlobField);
    procedure PopulateGalleryControl;
    procedure SetGalleryControlProperties;
  protected
    procedure CheckControlStartProperties; override;
    procedure DoCheckActualTouchMode; override;
    function GetDescription: string; override;
    function GetInspectedObject: TPersistent; override;
    function NeedWaitForm: Boolean; override;
  end;

implementation

uses
  uStrsConst, dxFrames, FrameIDs, cxGeometry;

{$R *.dfm}

type
  TdxGalleryControlAccess = class(TdxGalleryControl);

procedure TfrmGalleryControl.cbiEnableDragAndDropClick(Sender: TObject);
begin
  if cbiEnableDragAndDrop.Checked then
    GalleryControl.DragMode := dmAutomatic
  else
    GalleryControl.DragMode := dmManual;
end;

procedure TfrmGalleryControl.CheckControlStartProperties;
begin
  GalleryControl.BeginUpdate;
  SendMessage(GalleryControl.Handle, WM_SETREDRAW, 0, 0);
  try
    PopulateGalleryControl;
    SetGalleryControlProperties;
  finally
    GalleryControl.EndUpdate;
  end;
  SendMessage(GalleryControl.Handle, WM_SETREDRAW, 1, 0);
  GalleryControl.InvalidateWithChildren;
  cbiEnableDragAndDropClick(nil);
end;

procedure TfrmGalleryControl.DoCheckActualTouchMode;
const
  ShowButtonsWidth: array[Boolean] of Integer = (193, 242);
begin
  inherited DoCheckActualTouchMode;
  grbDetailedInfo.Height := ScaleFactor.Apply(ShowButtonsWidth[ActualTouchMode]);
end;

procedure TfrmGalleryControl.GalleryControlDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
var
  ASource: TdxGalleryControlDragObject;
  ASourceGroup: TdxGalleryControlGroup;
  ATargetObject: TObject;
begin
  if Source is TdxGalleryControlDragObject then
  begin
    ASource := TdxGalleryControlDragObject(Source);
    ASourceGroup := TdxGalleryControlItem(ASource.SelectedItems.First).Group;
    ATargetObject := TdxGalleryControl(Sender).Controller.DropTargetInfo.TargetObject;
    Accept := (ATargetObject = ASourceGroup) or (ATargetObject is TdxGalleryControlItem) and
      (TdxGalleryControlItem(ATargetObject).Group = ASourceGroup);
  end
  else
    Accept := False;
end;

procedure TfrmGalleryControl.GalleryControlItemClick(Sender: TObject; AItem: TdxGalleryControlItem);
var
  AViewInfo: TdxGalleryItemViewInfo;
begin
  if FShowDetailedInfo and not dxCalloutPopup1.IsVisible and dmMain.cdsEmployees.Locate('ID', AItem.Tag, []) then
  begin
    GalleryControl.MakeItemVisible(AItem);
    if TdxGalleryControlAccess(GalleryControl).ViewInfo.FindItemViewInfo(AItem, AViewInfo) then
      dxCalloutPopup1.Popup(GalleryControl, AViewInfo.Bounds);
  end;
end;

function TfrmGalleryControl.GetDescription: string;
begin
  Result := sdxFrameGalleryControlDescription;
end;

function TfrmGalleryControl.GetInspectedObject: TPersistent;
begin
  Result := GalleryControl;
end;

function TfrmGalleryControl.NeedWaitForm: Boolean;
begin
  Result := True;
end;

function TfrmGalleryControl.CreateDepartmentsList: TStringList;
begin
  Result := TStringList.Create;
  with dmMain.cdsDepartments do
  begin
    First;
    while not EOF do
    begin
      Result.Add(Format('%s;%d', [FieldByName('Department_Name').AsString, FieldByName('Department_ID').AsInteger]));
      Next;
    end;
  end;
  Result.Sort;
end;

procedure TfrmGalleryControl.ExtractDepartmentNameAndID(const ASource: string;
  out ADepartmentName: string; out ADepartmentID: Integer);
var
  P: Integer;
begin
  P := Pos(';', ASource);
  ADepartmentName := Copy(ASource, 1, P - 1);
  ADepartmentID := StrToInt(Copy(ASource, P + 1, Length(ASource) - P));
end;

procedure TfrmGalleryControl.LoadGlyph(AItemGlyph: TdxSmartGlyph; ABlobField: TBlobField);
var
  AGlyph: TdxSmartGlyph;
  AStream: TMemoryStream;
begin
  AGlyph := TdxSmartGlyph.Create;
  try
    AStream := TMemoryStream.Create;
    try
      ABlobField.SaveToStream(AStream);
      AStream.Position := 0;
      AGlyph.LoadFromStream(AStream);
    finally
      AStream.Free;
    end;
    AGlyph.Resize(60, 75);
    AItemGlyph.Assign(AGlyph);
  finally
    AGlyph.Free;
  end;
end;

procedure TfrmGalleryControl.PopulateGalleryControl;
var
  ADepartments: TStringList;
  I, ID, ADepartmentID: Integer;
  ADepartmentName: string;
  AGroup: TdxGalleryControlGroup;
  AItem: TdxGalleryControlItem;
begin
  dmMain.OpenEmployeesDataset;

  ID := dmMain.cdsEmployeesId.Value;
  ADepartments := CreateDepartmentsList;
  try
    for I := 0 to ADepartments.Count - 1 do
    begin
      ExtractDepartmentNameAndID(ADepartments[I], ADepartmentName, ADepartmentID);
      AGroup := GalleryControl.Gallery.Groups.Add;
      AGroup.Caption := ADepartmentName;
      with dmMain.cdsEmployees do
      begin
        Filter := 'Department = ' + IntToStr(ADepartmentID);
        Filtered := True;
        while not EOF do
        begin
          AItem := AGroup.Items.Add;
          LoadGlyph(AItem.Glyph, dmMain.cdsEmployeesPicture);
          AItem.Caption := FieldByName('FullName').AsString;
          AItem.Description := FieldByName('Title').AsString;
          AItem.Hint := 'Birth Date: ' + FieldByName('BirthDate').AsString;
          AItem.Tag := FieldByName('ID').AsInteger;
          Next;
        end;
        Filter := '';
        Filtered := False;
      end;
    end;
  finally
    ADepartments.Free;
  end;
  if ID = -1 then
    dmMain.cdsEmployees.Locate('ID', ID, [])
  else
    dmMain.cdsEmployees.First;
end;

procedure TfrmGalleryControl.acDetailedInfoExecute(Sender: TObject);
begin
  SetGalleryControlProperties;
end;

procedure TfrmGalleryControl.SetGalleryControlProperties;
begin
  FShowDetailedInfo := acDetailedInfo.Checked;
  GalleryControl.OptionsBehavior.ItemCheckMode := TdxGalleryItemCheckMode(cmbCheckMode.ItemIndex);
  GalleryControl.OptionsBehavior.ItemMultiSelectKind := TdxGalleryItemMultiSelectKind(cmbMultiSelectKind.ItemIndex);
  GalleryControl.OptionsBehavior.ItemShowHint := acShowHint.Checked;
  GalleryControl.OptionsView.ColumnAutoWidth := acColumnAutoWidth.Checked;
  GalleryControl.OptionsView.ColumnCount := edColumnCount.Value;
  GalleryControl.OptionsView.Item.Text.AlignHorz := TAlignment(cmbAlignHorz.ItemIndex);
  GalleryControl.OptionsView.Item.Text.AlignVert := TcxAlignmentVert(cmbAlignVert.ItemIndex);
  GalleryControl.OptionsView.Item.Text.Position := TcxPosition(cmbPosition.ItemIndex);
end;

initialization
  dxFrameManager.RegisterFrame(GalleryControlFrameID, TfrmGalleryControl, GalleryControlFrameName, -1,
    MultiPurposeGroupIndex, -1, -1);

end.
