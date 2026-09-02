unit dxDemoObjectInspector;
{$I cxVer.inc}

interface

uses
{$IFDEF DELPHI16}
  System.UITypes,
{$ENDIF}
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, cxOI, cxVGrid, cxLookAndFeels, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxHyperLinkEdit, Vcl.StdCtrls, Vcl.ExtCtrls, dxForms, cxGeometry, cxGraphics, cxLookAndFeelPainters,
  dxFormattedLabel;

type
  TfrmInspector = class(TdxForm)
    dxFormattedLabel1: TdxFormattedLabel;
    procedure FormCreate(Sender: TObject);
  private
    FObjectInspector: TcxRTTIInspector;
    FOnInspectedObjectChanged: TNotifyEvent;
    function GetInspectedObject: TPersistent;
    procedure SetInspectedObject(const Value: TPersistent);
    procedure DoObjectInspectorChange(Sender: TObject);
    procedure DoObjectInspectorFilterProperty(Sender: TObject; const PropertyName: string;
      var Accept: Boolean);
  protected
  public
    constructor Create(AOwner: TComponent); override;
    property InspectedObject: TPersistent read GetInspectedObject write SetInspectedObject;
    property OnInspectedObjectChanged: TNotifyEvent read FOnInspectedObjectChanged
        write FOnInspectedObjectChanged;
  end;

implementation

{$R *.dfm}

uses
  Winapi.ShellAPI, dxDemoUtils;

{ TfrmInspector }

constructor TfrmInspector.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  {$IFDEF VERTGRID}
  pnlBottom.Visible := False;
  {$ENDIF}
  fObjectInspector := TcxRTTIInspector.Create(self);
  fObjectInspector.Parent := self;
  fObjectInspector.Align := alClient;
  fObjectInspector.OptionsView.RowHeaderWidth := ScaleFactor.Apply(140);
  fObjectInspector.OnPropertyChanged := DoObjectInspectorChange;
  fObjectInspector.OnFilterProperty := DoObjectInspectorFilterProperty;
end;

procedure TfrmInspector.DoObjectInspectorChange(Sender: TObject);
begin
  if Assigned(FOnInspectedObjectChanged) then
    FOnInspectedObjectChanged(Sender);
end;

procedure TfrmInspector.DoObjectInspectorFilterProperty(
  Sender: TObject; const PropertyName: string; var Accept: Boolean);
begin
  Accept := (Pos('Fake', PropertyName) = 0) and (Pos('CustomDataSource', PropertyName) = 0);
end;

procedure TfrmInspector.FormCreate(Sender: TObject);
begin
  if dxMegaDemoProductIndex <> dxVerticalGridIndex then
    dxFormattedLabel1.Caption := Format(dxFormattedLabel1.Caption, [dxVerticalGridProductName,
      dxProductNames[dxMegaDemoProductIndex], dxVerticalGridProductName])
  else
    dxFormattedLabel1.Visible := False;
end;

function TfrmInspector.GetInspectedObject: TPersistent;
begin
  Result := fObjectInspector.InspectedObject;
end;

procedure TfrmInspector.SetInspectedObject(const Value: TPersistent);
begin
  FObjectInspector.InspectedObject := Value;
end;

end.
