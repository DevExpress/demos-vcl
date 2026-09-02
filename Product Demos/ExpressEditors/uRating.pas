unit uRating;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxLayoutContainer, cxClasses,
  dxLayoutControl, RatingControlDemoImagePicker, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxDropDownEdit, dxCore,
  cxCheckBox, cxGroupBox, cxRadioGroup, cxTextEdit, cxMaskEdit, cxSpinEdit, dxRatingControl, cxExtEditRepositoryItems,
  dxFrameCustomControl, Vcl.ActnList;

type
  TfrmRating = class(TfrmCustomControl)
    dxRatingControl1: TdxRatingControl;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    edStep: TcxSpinEdit;
    dxLayoutItem3: TdxLayoutItem;
    edItemCount: TcxSpinEdit;
    dxLayoutItem4: TdxLayoutItem;
    cmbOrientation: TcxComboBox;
    dxLayoutItem5: TdxLayoutItem;
    cbReverseDirection: TcxCheckBox;
    dxLayoutItem7: TdxLayoutItem;
    peChooseImage: TcxPopupEdit;
    dxLayoutItem8: TdxLayoutItem;
    cmbFillPrecision: TcxComboBox;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem6: TdxLayoutItem;
    edValue: TcxSpinEdit;
    acReverseDirection: TAction;
    procedure peChooseImagePropertiesCloseUp(Sender: TObject);
    procedure peChooseImagePropertiesInitPopup(Sender: TObject);
    procedure edStepPropertiesChange(Sender: TObject);
    procedure dxRatingControl1PropertiesChange(Sender: TObject);
  private
    FPopupWindow: TfrmImagePicker;
    procedure SetRatingControlProperties;
  protected
    procedure CheckControlStartProperties; override;
    function GetDescription: string; override;
    function GetInspectedObject: TPersistent; override;
  end;

implementation

uses
  uStrsConst, dxFrames, FrameIDs;

{$R *.dfm}

procedure TfrmRating.CheckControlStartProperties;
begin
  SetRatingControlProperties;
end;

function TfrmRating.GetDescription: string;
begin
  Result := sdxFrameRatingDescription;
end;

function TfrmRating.GetInspectedObject: TPersistent;
begin
  Result := dxRatingControl1;
end;

procedure TfrmRating.SetRatingControlProperties;
begin
  dxRatingControl1.EditValue := edValue.Value;
  dxRatingControl1.Properties.Step := edStep.Value;
  dxRatingControl1.Properties.ItemCount := edItemCount.Value;
  dxRatingControl1.Properties.Orientation := TdxOrientation(cmbOrientation.ItemIndex);
  dxRatingControl1.Properties.FillPrecision := TdxRatingControlFillPrecision(cmbFillPrecision.ItemIndex);
  dxRatingControl1.Properties.ReverseDirection := acReverseDirection.Checked;
end;

procedure TfrmRating.dxRatingControl1PropertiesChange(Sender: TObject);
begin
  edValue.Value := dxRatingControl1.EditValue;
end;

procedure TfrmRating.edStepPropertiesChange(Sender: TObject);
begin
  SetRatingControlProperties;
end;

procedure TfrmRating.peChooseImagePropertiesInitPopup(Sender: TObject);
begin
  FPopupWindow := TfrmImagePicker.Create(Self);
  FPopupWindow.Initialize(dxRatingControl1.Properties);
  peChooseImage.Properties.PopupControl := FPopupWindow;
end;

procedure TfrmRating.peChooseImagePropertiesCloseUp(Sender: TObject);
begin
  FPopupWindow.Release;
end;

initialization
  dxFrameManager.RegisterFrame(RatingFrameID, TfrmRating, RatingFrameName, -1,
    EditorsWithoutTextBoxesGroupIndex, -1, -1);

end.
