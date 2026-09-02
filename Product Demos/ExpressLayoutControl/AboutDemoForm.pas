unit AboutDemoForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Classes, Vcl.Controls, Vcl.Forms, Vcl.StdCtrls,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMemo, cxRichEdit, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxLayoutcxEditAdapters, dxLayoutContainer, cxClasses, dxLayoutControl, dxLayoutLookAndFeels;

type
  TFormAboutDemo = class(TForm)
    redDescription: TcxRichEdit;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
  public
    constructor Create(const ADescription: string); reintroduce;
  end;

procedure ShowAboutDemoForm;

implementation

{$R *.dfm}

uses
  System.Types;

var
  FForm: TFormAboutDemo;

procedure ShowAboutDemoForm;
var
  ADescription: TStringList;
begin
  if FForm = nil then
  begin
    ADescription := TStringList.Create;
    try
      ADescription.LoadFromFile(ExtractFilePath(Application.ExeName) + 'About.txt');
      FForm := TFormAboutDemo.Create(ADescription.Text);
    finally
      ADescription.Free;
    end;
  end;
  FForm.Show;
end;

{ TFormAboutDemo }

constructor TFormAboutDemo.Create(const ADescription: string);

  procedure AssignBounds;
  var
    AMonitorWorkArea: TRect;
    AOffset: Integer;
  begin
    Left := Application.MainForm.BoundsRect.Right;
    Top := Application.MainForm.BoundsRect.Top;
    Height := Application.MainForm.Height;
    AMonitorWorkArea := Screen.MonitorFromPoint(TPoint.Create(Left, Top)).WorkareaRect;
    if BoundsRect.Right > AMonitorWorkArea.Right then
    begin
      AOffset := BoundsRect.Right - AMonitorWorkArea.Right;
      Left := Left - AOffset;
      if Application.MainForm.Left > AOffset then
        Application.MainForm.Left := Application.MainForm.Left - AOffset
      else
        Application.MainForm.Left := 0;
    end;
  end;

begin
  inherited Create(Application);
  AssignBounds;
  redDescription.Lines.Text := ADescription;
end;

end.
