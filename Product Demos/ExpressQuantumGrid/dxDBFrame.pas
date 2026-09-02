unit dxDBFrame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB, dxCustomDemoFrameUnit, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  cxLabel, Vcl.Menus, dxLayoutControlAdapters, dxLayoutContainer, cxClasses, cxButtons, dxLayoutControl, Vcl.ActnList,
  dxLayoutLookAndFeels, System.Actions, cxGroupBox,
  dxPanel, cxGeometry, dxFramedControl;

type
  TdxDBFrame = class(TdxCustomDemoFrame)
    dsMainSource: TDataSource;
    procedure dsMainSourceDataChange(Sender: TObject; Field: TField);
  protected
    procedure UpdateOperations;

    function GetDataSet: TDataSet; virtual; abstract;

    procedure DoCancel; virtual;
    procedure DoDelete; virtual;
    procedure DoEdit; virtual;
    procedure DoFirst; virtual;
    procedure DoInsert; virtual;
    procedure DoLast; virtual;
    procedure DoNext; virtual;
    procedure DoPost; virtual;
    procedure DoPrior; virtual;
    procedure DoRefresh; virtual;

    procedure DataSetStateChanged; virtual;

    property DataSet: TDataSet read GetDataSet;
  public
    constructor Create(AOwner: TComponent); override;
  end;

implementation

{$R *.DFM}

{ TdxDBFrame }
constructor TdxDBFrame.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  dsMainSource.DataSet := DataSet;
end;

procedure TdxDBFrame.UpdateOperations;
begin
  DataSetStateChanged;
end;

procedure TdxDBFrame.DoCancel;
begin
  DataSet.Cancel;
end;

procedure TdxDBFrame.DoDelete;
begin
  DataSet.Delete;
end;

procedure TdxDBFrame.DoEdit;
begin
  DataSet.Edit;
end;

procedure TdxDBFrame.DoFirst;
begin
  DataSet.First;
end;

procedure TdxDBFrame.DoInsert;
begin
  DataSet.Insert;
end;

procedure TdxDBFrame.DoLast;
begin
  DataSet.Last;
end;

procedure TdxDBFrame.DoNext;
begin
  DataSet.Next;
end;

procedure TdxDBFrame.DoPost;
begin
  DataSet.Post;
end;

procedure TdxDBFrame.DoPrior;
begin
  DataSet.Prior;
end;

procedure TdxDBFrame.DoRefresh;
begin
  DataSet.Refresh;
end;

procedure TdxDBFrame.DataSetStateChanged;
//var
//  CanModify, Editing: Boolean;
begin
//  CanModify := DataSet.Active and DataSet.CanModify;
//  Editing := DataSet.State in [dsEdit, dsInsert];

//  Operations.Items[otInsert].Enabled := CanModify;
//  Operations.Items[otEdit].Enabled := CanModify and not Editing;
//  Operations.Items[otPost].Enabled := CanModify and Editing;
//  Operations.Items[otCancel].Enabled := CanModify and Editing;
//  Operations.Items[otRefresh].Enabled := CanModify;
//  Operations.Items[otDelete].Enabled :=
//    CanModify and not (DataSet.BOF or DataSet.EOF);
//
//  Operations.Items[otFirst].Enabled := not DataSet.BOF;
//  Operations.Items[otPrior].Enabled := not DataSet.BOF;
//  Operations.Items[otNext].Enabled := not DataSet.EOF;
//  Operations.Items[otLast].Enabled := not DataSet.EOF;
end;

procedure TdxDBFrame.dsMainSourceDataChange(Sender: TObject;
  Field: TField);
begin
  if Active then DataSetStateChanged;
end;

end.
