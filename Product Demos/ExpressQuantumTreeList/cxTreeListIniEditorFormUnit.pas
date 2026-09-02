unit cxTreeListIniEditorFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, cxUnboundTreeListBaseFormUnit, cxGraphics,
  cxCustomData, cxStyles, cxTL, cxTextEdit, cxTLdxBarBuiltInMenu, dxSkinsCore,
  cxLookAndFeelPainters, Vcl.Menus, Vcl.ImgList, cxInplaceContainer,
  cxLabel, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxContainer, cxEdit, cxGroupBox, dxShellDialogs,
  cxControls, cxLookAndFeels, dxLayoutContainer, cxClasses, dxLayoutControl, Vcl.ActnList, dxLayoutLookAndFeels,
  dxLayoutControlAdapters, dxScrollbarAnnotations, System.ImageList, System.Actions,
  cxFilter, cxImageList;

type
  TfrmIniEditor = class(TcxUnboundTreeListDemoUnitForm)
    OpenDialog: TdxOpenFileDialog;
    SaveDialog: TdxSaveFileDialog;
    clnSection: TcxTreeListColumn;
    clnValue: TcxTreeListColumn;
    ImageList: TcxImageList;
    dxLayoutItem2: TdxLayoutItem;
    btnLoad: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    btnSave: TcxButton;
    dxLayoutEmptySpaceItem1: TdxLayoutEmptySpaceItem;
    dxLayoutLabeledItem1: TdxLayoutLabeledItem;
    liFileName: TdxLayoutLabeledItem;
    procedure btnLoadClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure tlUnboundEditing(Sender: TcxCustomTreeList;
      AColumn: TcxTreeListColumn; var Allow: Boolean);
  private
    FFileName: string;
    procedure SetFileName(const Value: string);
  public
    constructor Create(AOwner: TComponent); override;
    procedure ActivateDataSet; override;
    class function GetID: Integer; override;
    property FileName: String read FFileName write SetFileName;
 end;

implementation

{$R *.dfm}

uses
  System.IniFiles, Main, cxTreeListFeaturesDemoStrConsts;

procedure LoadFromINIFile(ATreeList: TcxTreeList; INIFileName: String);
var
  AINIFile: TINIFile;
  ASections, AOptions : TStringList;
  i, j : Integer;
  ANode, AChildNode : TcxTreeListNode;
begin
  ATreeList.BeginUpdate;
  ATreeList.Clear;
  AINIFile := TIniFile.Create(INIFileName);
  ASections := TStringList.Create;
  AOptions := TStringList.Create;;
  try
    //Load Sections
    AINIFile.ReadSections(ASections);
    for i := 0 to ASections.Count - 1 do begin
      //Add Section
      if ATreeList.Count = 0 then
         ANode := ATreeList.AddFirst(nil)
      else ANode := ATreeList.Add(nil);
      ANode.Values[0] := ASections.Strings[i];
      //Load Values List for the current Section
      AINIFile.ReadSection(ASections.Strings[i], AOptions);
      for j := 0 to AOptions.Count - 1 do begin
        //Add Options
        if ANode.Count = 0 then
           AChildNode := ATreeList.AddChildFirst(ANode)
        else
           AChildNode := ATreeList.AddChild(ANode);
        AChildNode.Values[0] := AOptions.Strings[j];
        AChildNode.Values[1] := AINIFile.ReadString(ASections.Strings[i], AOptions.Strings[j], '');
        AChildNode.ImageIndex := 1;
        AChildNode.SelectedIndex := 1;
      end;
    end;
  finally
    AINIFile.Free;
    ASections.Free;
    AOptions.Free;
    ATreeList.EndUpdate;
  end;
end;

procedure SaveToINIFile(ATreeList: TcxTreeList; AINIFileName: String);
var
  AINIFile: TIniFile;
  ACurrSection : String;
  I, J: Integer;
begin
  //If the ini file exists, rewrite
  if FileExists(AINIFileName) then DeleteFile(AINIFileName);
  AINIFile := TIniFile.Create(AINIFileName);
  for I := 0 to ATreeList.Count - 1 do
  begin
     //Save Section information
     ACurrSection := ATreeList.Root[I].Values[0];
     //Skip sections with blank names
     if ACurrSection = '' then continue;
     for J := 0 to ATreeList.Root[I].Count - 1 do
     begin
       //Skip options with blank name
       if (ATreeList.Root[I].Items[J].Values[0] = '') then continue;
       //Save Option of the current Section
       AINIFile.WriteString(ACurrSection, ATreeList.Root[I].Items[J].Values[0],
         ATreeList.Root[I].Items[J].Values[1]);
     end;
  end;
  AINIFile.Free;
end;

constructor TfrmIniEditor.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  liFileName.LookAndFeel := TfrmMain(Application.MainForm).dxLayoutSkinLookAndFeelBoldItemCaption;
  FileName := ExtractFilePath(Application.EXEName) + 'odbcinst_test.ini';
end;

procedure TfrmIniEditor.ActivateDataSet;
begin
//
end;

class function TfrmIniEditor.GetID: Integer;
begin
  Result := 23;
end;

procedure TfrmIniEditor.SetFileName(const Value: string);
begin
  if (FFileName = Value) or not FileExists(Value) then exit;
  LoadFromINIFile(UnboundTreeList, Value);
  FFileName := Value;
  liFileName.Caption := FileName;
  btnSave.Enabled := FileName <> '';
end;

procedure TfrmIniEditor.btnLoadClick(Sender: TObject);
begin
  if OpenDialog.Execute then
  begin
    LoadFromINIFile(UnboundTreeList, OpenDialog.FileName);
    FileName := OpenDialog.FileName;
  end;
end;

procedure TfrmIniEditor.btnSaveClick(Sender: TObject);
begin
  SaveToINIFile(UnboundTreeList, FileName);
end;

procedure TfrmIniEditor.tlUnboundEditing(Sender: TcxCustomTreeList;
  AColumn: TcxTreeListColumn; var Allow: Boolean);
begin
  with TcxCustomTreeList(Sender) do
    Allow := (FocusedNode <> nil) and (FocusedNode.Level > 0) or (AColumn <> clnValue);
end;

initialization
  TfrmIniEditor.Register;

end.
