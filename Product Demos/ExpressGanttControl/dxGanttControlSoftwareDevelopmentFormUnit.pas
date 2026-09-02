unit dxGanttControlSoftwareDevelopmentFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.ActnList, System.Actions, cxClasses, cxGraphics, cxControls, dxCore,
  cxContainer, cxEdit, cxCheckBox, cxSpinEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, dxScrollbarAnnotations, cxLookAndFeels, cxLookAndFeelPainters,
  dxLayoutContainer, dxLayoutLookAndFeels, cxInplaceContainer, dxLayoutControl,
  dxLayoutcxEditAdapters,
  dxGanttControlCustomClasses, dxGanttControl, dxGanttControlBaseFormUnit, Vcl.ImgList, cxImageList,
  dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  dxGanttControlViewChart, dxGanttControlViewResourceSheet,
  dxGanttControlViewTimeLine, dxGanttControlCustomSheet, dxGanttControlTasks,
  dxGanttControlAssignments, dxGanttControlResources;

type
  { TfrmSoftwareDevelopment }

  TfrmSoftwareDevelopment = class(TdxGanttControlBaseDemoForm)
  protected
    procedure LoadData; override;
  public
    function GetCaption: string; override;
    class function GetID: Integer; override;
  end;

implementation

{$R *.dfm}

uses
  Main;

{ TfrmSoftwareDevelopment }

procedure TfrmSoftwareDevelopment.LoadData;
begin
  dxGanttControl.DataModel.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Data\SoftwareDevelopment.xml');
  dxGanttControl.ViewChart.FirstVisibleDateTime := dxGanttControl.DataModel.Properties.ProjectStart - 2;
end;

function TfrmSoftwareDevelopment.GetCaption: string;
begin
  Result := 'Software Development';
end;

class function TfrmSoftwareDevelopment.GetID: Integer;
begin
  Result := dxSoftwareDevelopmentDemoID;
end;

initialization
  TfrmSoftwareDevelopment.Register;

end.

