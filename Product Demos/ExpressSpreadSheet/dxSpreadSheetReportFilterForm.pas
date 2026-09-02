unit dxSpreadSheetReportFilterForm;

{$I cxVer.inc}

interface

uses
{$IFDEF DELPHI16}
  System.UITypes,
{$ENDIF}
  System.Types, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics,
  cxControls, dxLayoutControl, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  dxLayoutControlAdapters, dxLayoutContainer, cxFilterControl, Vcl.StdCtrls,
  cxButtons, cxClasses, cxCustomData, cxGeometry, dxForms;

type
  TfrmFilter = class(TdxForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    btnApply: TcxButton;
    dxLayoutItem1: TdxLayoutItem;
    btnClear: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    Filter: TcxFilterControl;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
  private
    FControl: IcxFilterControl;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;

    property Control: IcxFilterControl read FControl write FControl;
  end;

implementation

uses
  Main;

{$R *.dfm}

var
  FormBounds: TRect;

{ TfrmFilter }

constructor TfrmFilter.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  if not cxRectIsEmpty(FormBounds)  then
    BoundsRect := FormBounds;
end;

destructor TfrmFilter.Destroy;
begin
  FormBounds := BoundsRect;
  inherited Destroy;
end;

end.
