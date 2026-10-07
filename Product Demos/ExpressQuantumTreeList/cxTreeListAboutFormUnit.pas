unit cxTreeListAboutFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, cxCustomTreeListBaseFormUnit, dxSkinsCore, 
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMemo, cxRichEdit,
  cxLookAndFeelPainters, Vcl.StdCtrls, Vcl.ExtCtrls, cxGroupBox, cxGraphics, cxLookAndFeels, Vcl.ActnList, cxClasses,
  dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl, dxLayoutcxEditAdapters, System.Actions;

type
  TfrmAbout = class(TcxCustomTreeListDemoUnitForm)
    dxLayoutItem1: TdxLayoutItem;
    reAbout: TcxRichEdit;
  private
    { Private declarations }
  public
    procedure ActivateDataSet; override;
    class function GetID: Integer; override;
  end;

implementation

{$R *.dfm}

{ TTfrmAbout }

procedure TfrmAbout.ActivateDataSet;
var
  AStream: TStream;
begin
  AStream := TResourceStream.Create(hInstance, 'TREELISTFEATURESLIST', 'TREELISTFEATURES');
  try
    reAbout.Lines.LoadFromStream(AStream);
  finally
    AStream.Free;
  end;
end;

class function TfrmAbout.GetID: Integer;
begin
  Result := -1;
end;

initialization
  TfrmAbout.Register;

end.
