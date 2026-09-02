unit uPictureEditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxMessageDialog,
  dxLayoutcxEditAdapters, dxLayoutContainer, dxGDIPlusClasses, cxImage, cxClasses, dxLayoutControl, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCheckBox, cxSpinEdit, dxFrameCustomControl, Vcl.ActnList, dxSkinsCore, System.Actions,
  dxUIAdorners;

type
  TfrmPictureEditor = class(TfrmCustomControl)
    cxImage1: TcxImage;
    dxLayoutItem1: TdxLayoutItem;
    cbCenter: TcxCheckBox;
    liCenter: TdxLayoutItem;
    cbAllowContextMenu: TcxCheckBox;
    dxLayoutItem3: TdxLayoutItem;
    cmbFitMode: TcxComboBox;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem;
    lgMenuItems: TdxLayoutGroup;
    cbCut: TcxCheckBox;
    dxLayoutItem5: TdxLayoutItem;
    cbCopy: TcxCheckBox;
    dxLayoutItem6: TdxLayoutItem;
    cbPaste: TcxCheckBox;
    dxLayoutItem7: TdxLayoutItem;
    cbDelete: TcxCheckBox;
    dxLayoutItem8: TdxLayoutItem;
    cbLoad: TcxCheckBox;
    dxLayoutItem9: TdxLayoutItem;
    cbWebCam: TcxCheckBox;
    dxLayoutItem10: TdxLayoutItem;
    cbCustom: TcxCheckBox;
    dxLayoutItem11: TdxLayoutItem;
    cbSave: TcxCheckBox;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutEmptySpaceItem3: TdxLayoutEmptySpaceItem;
    cbShowZoomTrackBar: TcxCheckBox;
    dxLayoutItem13: TdxLayoutItem;
    edZoomPercent: TcxSpinEdit;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutEmptySpaceItem4: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem5: TdxLayoutEmptySpaceItem;
    acCenter: TAction;
    acAllowContextMenu: TAction;
    acCut: TAction;
    acCopy: TAction;
    acPaste: TAction;
    acDelete: TAction;
    acLoad: TAction;
    acWebCam: TAction;
    acSave: TAction;
    acCustom: TAction;
    acShowZoomTrackBar: TAction;
    dxLayoutItem2: TdxLayoutItem;
    cbEdit: TcxCheckBox;
    acEdit: TAction;
    procedure cxImage1PropertiesCustomClick(Sender: TObject);
    procedure acCenterExecute(Sender: TObject);
    procedure acAllowContextMenuExecute(Sender: TObject);
  private
    FAllowContextMenuChanging: Boolean;
    procedure CheckBuiltMenuItems(Sender: TObject);
    procedure ImageZoomTrackBarChanged(Sender: TObject);
    procedure SetSamplePictureProperties;
  protected
    procedure CheckControlStartProperties; override;
    function GetDescription: string; override;
    function GetInspectedObject: TPersistent; override;
  end;

implementation

uses
  dxFrames, FrameIDs, System.DateUtils, uStrsConst;

{$R *.dfm}

type
  TcxCustomImageAccess = class(TcxCustomImage);

procedure TfrmPictureEditor.CheckControlStartProperties;
begin
  cxImage1.ZoomingOptions.OnChanged := ImageZoomTrackBarChanged;
  SetSamplePictureProperties;
end;

function TfrmPictureEditor.GetDescription: string;
begin
  Result := sdxFramePictureEditorDescription;
end;

function TfrmPictureEditor.GetInspectedObject: TPersistent;
begin
  Result := cxImage1;
end;

procedure TfrmPictureEditor.cxImage1PropertiesCustomClick(Sender: TObject);
begin
  dxMessageDlg(DXCopyrightInfo, TMsgDlgType.mtInformation, [mbOK]);
end;

procedure TfrmPictureEditor.acCenterExecute(Sender: TObject);
begin
  SetSamplePictureProperties;
end;

procedure TfrmPictureEditor.acAllowContextMenuExecute(Sender: TObject);
begin
  if FAllowContextMenuChanging then
    Exit;
  FAllowContextMenuChanging := True;
  try
    CheckBuiltMenuItems(Sender);
  finally
    FAllowContextMenuChanging := False;
  end;
end;

procedure TfrmPictureEditor.CheckBuiltMenuItems(Sender: TObject);
var
  AItems: TcxPopupMenuItems;

  procedure CheckMenuItem(ACheckBox: TAction; AItem: TcxPopupMenuItem);
  begin
    if ACheckBox.Checked then
      Include(AItems, AItem);
  end;

begin
  AItems := [];
  if acAllowContextMenu.Checked then
  begin
    CheckMenuItem(acCut, pmiCut);
    CheckMenuItem(acCopy, pmiCopy);
    CheckMenuItem(acPaste, pmiPaste);
    CheckMenuItem(acDelete, pmiDelete);
    CheckMenuItem(acLoad, pmiLoad);
    CheckMenuItem(acWebCam, pmiWebCam);
    CheckMenuItem(acSave, pmiSave);
    CheckMenuItem(acEdit, pmiEdit);
    CheckMenuItem(acCustom, pmiCustom);
  end;
  cxImage1.Properties.PopupMenuLayout.MenuItems := AItems;
  if Sender <> acAllowContextMenu  then
    acAllowContextMenu.Checked := AItems <> [];
  lgMenuItems.Enabled := acAllowContextMenu.Checked;
end;

procedure TfrmPictureEditor.ImageZoomTrackBarChanged(Sender: TObject);
begin
  TcxCustomImageAccess(cxImage1).ZoomingOptionsChangedHandler(cxImage1.ZoomingOptions);
  edZoomPercent.Value := cxImage1.ZoomingOptions.ZoomPercent;
end;

procedure TfrmPictureEditor.SetSamplePictureProperties;
begin
  cxImage1.Properties.Center := acCenter.Checked;
  cxImage1.Properties.FitMode := TcxImageFitMode(cmbFitMode.ItemIndex);
  cxImage1.ZoomingOptions.ZoomPercent := edZoomPercent.Value;
  cxImage1.ZoomingOptions.ShowZoomTrackBar := acShowZoomTrackBar.Checked;

  acCenter.Enabled := cxImage1.Properties.FitMode = ifmNormal;
  edZoomPercent.Enabled := acCenter.Enabled;
  acShowZoomTrackBar.Enabled := acCenter.Enabled;
end;

initialization
  dxFrameManager.RegisterFrame(PictureEditorFrameID, TfrmPictureEditor, PictureEditorFrameName, -1,
    EditorsWithoutTextBoxesGroupIndex, -1, -1);

end.
