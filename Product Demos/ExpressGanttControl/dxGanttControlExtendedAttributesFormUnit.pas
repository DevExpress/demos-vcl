unit dxGanttControlExtendedAttributesFormUnit;

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
  { TfrmExtendedAttributes }

  TfrmExtendedAttributes = class(TdxGanttControlBaseDemoForm)
    procedure dxGanttControlDataModelLoaded(Sender: TObject);
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

{ TfrmExtendedAttributes }

procedure TfrmExtendedAttributes.LoadData;
begin
  dxGanttControl.BeginUpdate;
  try
    dxGanttControl.DataModel.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Data\ExtendedAttributesDemo.xml');
    dxGanttControl.ViewChart.FirstVisibleDateTime := dxGanttControl.DataModel.Properties.ProjectStart - 2;
    dxGanttControl.ViewChart.OptionsSheet.Columns[0].Visible := False;
    dxGanttControl.ViewChart.OptionsSheet.Columns[1].Visible := False;
    dxGanttControl.ViewChart.OptionsSheet.Columns[3].Visible := False;
    dxGanttControl.ViewChart.OptionsSheet.Columns[7].Visible := False;
  finally
    dxGanttControl.EndUpdate;
  end;
end;

procedure TfrmExtendedAttributes.dxGanttControlDataModelLoaded(Sender: TObject);
begin
  inherited;
  dxGanttControl.ViewChart.OptionsSheet.Columns.Reset;
  dxGanttControl.ViewResourceSheet.OptionsSheet.Columns.Reset;
  dxGanttControl.ViewChart.OptionsSheet.AddExtendedAttributeColumns;
  dxGanttControl.ViewResourceSheet.OptionsSheet.AddExtendedAttributeColumns;
  dxGanttControl.ViewChart.OptionsSheet.RetrieveMissingExtendedAttributeColumns;
  dxGanttControl.ViewResourceSheet.OptionsSheet.RetrieveMissingExtendedAttributeColumns;
end;

function TfrmExtendedAttributes.GetCaption: string;
begin
  Result := 'Extended Attributes';
end;

class function TfrmExtendedAttributes.GetID: Integer;
begin
  Result := dxExtendedAttributesDemoID;
end;

initialization
  TfrmExtendedAttributes.Register;

end.

