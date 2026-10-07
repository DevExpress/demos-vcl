unit uCalloutPopup;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxFrameCustomControl, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, cxLabel, dxLayoutContainer, cxGroupBox, Vcl.ActnList, cxClasses, dxLayoutControl, dxCalloutPopup,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxSpinEdit, cxCheckBox,
  dxUIAdorners, dxLayoutControlAdapters, dxLayoutLookAndFeels, cxGeometry;

type
  TfrmCalloutPopup = class(TfrmCustomControl)
    CalloutPopup: TdxCalloutPopup;
    cxGroupBox2: TcxGroupBox;
    acRounded: TAction;
    cxButton1: TcxButton;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutItem6: TdxLayoutItem;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    cxButton10: TcxButton;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutItem11: TdxLayoutItem;
    cxButton11: TcxButton;
    cxButton9: TcxButton;
    cxButton12: TcxButton;
    cxButton13: TcxButton;
    cxButton14: TcxButton;
    cxButton15: TcxButton;
    cxButton16: TcxButton;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutGroup9: TdxLayoutGroup;
    dxLayoutGroup10: TdxLayoutGroup;
    dxLayoutGroup11: TdxLayoutGroup;
    dxLayoutGroup12: TdxLayoutGroup;
    dxLayoutGroup13: TdxLayoutGroup;
    dxLayoutGroup14: TdxLayoutGroup;
    dxLayoutGroup15: TdxLayoutGroup;
    dxLayoutGroup16: TdxLayoutGroup;
    dxLayoutGroup17: TdxLayoutGroup;
    dxLayoutGroup18: TdxLayoutGroup;
    dxLayoutGroup19: TdxLayoutGroup;
    dxLayoutGroup20: TdxLayoutGroup;
    dxLayoutGroup21: TdxLayoutGroup;
    dxLayoutGroup22: TdxLayoutGroup;
    dxLayoutGroup23: TdxLayoutGroup;
    dxLayoutGroup24: TdxLayoutGroup;
    dxLayoutGroup25: TdxLayoutGroup;
    dxLayoutGroup26: TdxLayoutGroup;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutLabeledItem1: TdxLayoutLabeledItem;
    cxButton17: TcxButton;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    procedure cxButton17Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton5CustomDraw(Sender: TObject; ACanvas: TcxCanvas; AViewInfo: TcxButtonViewInfo; var AHandled: Boolean);
  private
  protected
    procedure CheckControlStartProperties; override;
    function GetDescription: string; override;
    function GetInspectedObject: TPersistent; override;
  end;

implementation

uses
  System.Types, uStrsConst, dxFrames, FrameIDs;

{$R *.dfm}

procedure TfrmCalloutPopup.CheckControlStartProperties;
begin
end;

function TfrmCalloutPopup.GetDescription: string;
begin
  Result := sdxFrameCalloutPopupDescription;
end;

function TfrmCalloutPopup.GetInspectedObject: TPersistent;
begin
  Result := CalloutPopup;
end;

procedure TfrmCalloutPopup.cxButton17Click(Sender: TObject);
begin
  CalloutPopup.Close;
end;

procedure TfrmCalloutPopup.cxButton1Click(Sender: TObject);
var
  ASender: TWinControl;
begin
  if CalloutPopup.IsVisible then
    Exit;
  ASender := Sender as TWinControl;
  case ASender.Tag of
    0..11:
      begin
        CalloutPopup.FlyoutPanel.Active := False;
        CalloutPopup.Alignment := TdxCalloutPopupAlignment(ASender.Tag);
        CalloutPopup.Popup(ASender);
      end
  else
    CalloutPopup.FlyoutPanel.Active := True;
    CalloutPopup.FlyoutPanel.Align := TdxFlyoutPanelAlign(ASender.Tag - 12);
    CalloutPopup.Popup(lcFrame, lgContent.ViewInfo.Bounds);
  end;

end;

procedure TfrmCalloutPopup.cxButton5CustomDraw(Sender: TObject; ACanvas: TcxCanvas; AViewInfo: TcxButtonViewInfo; var AHandled: Boolean);
var
  R, R1: TRect;
  P: array [0..2] of TPoint;
  ASize, AOffset: Integer;
  AWidth, AHeight: Integer;
  AColor1, AColor2: TColor;
  ATag: Integer;
  ACalloutOrigin: TPoint;
  AAlignment: TdxCalloutPopupAlignment;
  AAlign: TdxFlyoutPanelAlign;
  AIsCallout: Boolean;
begin
  AHandled := True;
  ATag := (Sender as TComponent).Tag;
  AIsCallout := ATag <= 11;
  if AIsCallout then
  begin
    AAlignment := TdxCalloutPopupAlignment(ATag);
    AAlign := fpaTop;
  end
  else
  begin
    AAlignment := cpaLeftTop;
    AAlign := TdxFlyoutPanelAlign(ATag - 12);
  end;

  R := AViewInfo.Bounds;
  ACanvas.FrameRect(R, $ABABAB);
  InflateRect(R, -1, -1);
  if AViewInfo.State = cxbsPressed then
    AColor1 := $C88800
  else
    if AViewInfo.State = cxbsHot then
      AColor1 := $F5B42C
    else
      AColor1 := $DD9600;

  if AViewInfo.State = cxbsPressed then
    AColor2 := $E3C37F
  else
    if AViewInfo.State = cxbsHot then
      AColor2 := $FCECCA
    else
      AColor2 := clWhite;


  ACanvas.FillRect(R, AColor1);

  AWidth := ScaleFactor.Apply(30);
  AHeight := ScaleFactor.Apply(19);
  R := cxRectCenter(R, AWidth, AHeight);

  if AIsCallout then
  begin
    AOffset := ScaleFactor.Apply(3);
    ASize := ScaleFactor.Apply(4);

    case AAlignment of
      cpaLeftBottom..cpaLeftTop: Dec(R.Right, AOffset);
      cpaTopLeft..cpaTopRight: Dec(R.Bottom, AOffset);
      cpaRightTop..cpaRightBottom: Inc(R.Left, AOffset);
      cpaBottomRight..cpaBottomLeft: Inc(R.Top, AOffset);
    end;
    ACanvas.FillRect(R, AColor2);
    R1 := Rect(0, 0, ASize, ASize);

    case AAlignment of
      cpaLeftBottom: ACalloutOrigin := Point(R.Right, R.Bottom - 2*ASize);
      cpaLeftCenter: ACalloutOrigin := Point(R.Right, cxRectCenter(R).Y - ASize div 2);
      cpaLeftTop: ACalloutOrigin := Point(R.Right, R.Top + ASize);
      cpaTopLeft: ACalloutOrigin := Point(R.Left + ASize, R.Bottom);
      cpaTopCenter: ACalloutOrigin := Point(cxRectCenter(R).X - ASize div 2, R.Bottom);
      cpaTopRight: ACalloutOrigin := Point(R.Right - 2*ASize, R.Bottom);
      cpaRightTop: ACalloutOrigin := Point(R.Left - ASize - 1, R.Top + ASize);
      cpaRightCenter: ACalloutOrigin := Point(R.Left - ASize - 1, cxRectCenter(R).Y - ASize div 2);
      cpaRightBottom: ACalloutOrigin := Point(R.Left - ASize - 1, R.Bottom - 2*ASize);
      cpaBottomRight: ACalloutOrigin := Point(R.Right - 2*ASize, R.Top - ASize - 1);
      cpaBottomCenter: ACalloutOrigin := Point(cxRectCenter(R).X - ASize div 2, R.Top - ASize - 1);
      cpaBottomLeft: ACalloutOrigin := Point(R.Left + ASize, R.Top - ASize - 1);
    end;

    R1 := cxRectSetOrigin(R1, ACalloutOrigin);

    case AAlignment of
      cpaLeftBottom..cpaLeftTop:
        begin
          P[0] := R1.TopLeft;
          P[2] := Point(R1.Left, R1.Bottom);
        end;
      cpaTopLeft..cpaTopRight:
        begin
          P[0] := R1.TopLeft;
          P[2] := Point(R1.Right, R1.Top);
        end;
      cpaRightTop..cpaRightBottom:
        begin
          P[0] := Point(R1.Right, R1.Top);
          P[2] := R1.BottomRight;
        end;
      cpaBottomRight..cpaBottomLeft:
        begin
          P[0] := Point(R1.Left, R1.Bottom);
          P[2] := R1.BottomRight;
        end;
    end;
    P[1] := cxRectCenter(R1);

    ACanvas.Polygon(P, AColor2, AColor2);
  end
  else
  begin
    ACanvas.FillRect(R, AColor2);
    InflateRect(R, -1, -1);
    AOffset := ScaleFactor.Apply(10);
    case AAlign of
      fpaTop: Inc(R.Top, AOffset);
      fpaBottom: Dec(R.Bottom, AOffset);
      fpaLeft: Inc(R.Left, AOffset);
      fpaRight: Dec(R.Right, AOffset);
    end;
    ACanvas.FillRect(R, AColor1);
  end;
end;

initialization
  dxFrameManager.RegisterFrame(CalloutPopupFrameID, TfrmCalloutPopup, CalloutPopupFrameName, -1,
    MultiPurposeGroupIndex, HighlightedFeatureGroupIndex, -1);

end.
