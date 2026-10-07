unit cxGridCustomDrawFrame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxCustomDemoFrameUnit, Vcl.StdCtrls, Vcl.ExtCtrls, dxFrames, FrameIds, UnboundModeDemoMain,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxLabel, dxGDIPlusClasses, cxImage, cxGroupBox;

type
  TdxCustomDrawFrame = class(TdxCustomDemoFrame)
    plGameSite: TPanel;
  private
    FForm: TForm;
  public
    procedure ChangeVisibility(AShow: Boolean); override; 
  end;

implementation

{$R *.dfm}

procedure TdxCustomDrawFrame.ChangeVisibility(AShow: Boolean);
begin
  if FForm = nil then
     FForm := TUnboundModeDemoMainForm.Create(Application);
  FForm.Parent := plGameSite;
  if not AShow then
    FForm.Hide
  else
    FForm.Show;
  inherited ChangeVisibility(AShow);
end;

initialization
  dxFrameManager.RegisterFrame(GridCustomDrawFrameID, TdxCustomDrawFrame,
    GridCustomDrawFrameName, GridCustomDrawImageIndex, GridBackgroundMasterDetailImageIndex, GridSideBarGroupIndex);

end.
