unit GroupingOptionsFormUnit;

{$I cxVer.inc}

interface

uses
{$IFDEF DELPHI16}
  System.UITypes,
{$ENDIF}
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSpreadSheetCore, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxLayoutLookAndFeels, cxClasses, dxLayoutContainer, dxLayoutControl,
  Vcl.Menus, dxLayoutControlAdapters, Vcl.StdCtrls, cxButtons, dxLayoutcxEditAdapters, cxContainer, cxEdit, cxLabel,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, dxForms;

type

  { TfrmGroupingOptions }

  TfrmGroupingOptions = class(TdxForm)
    btnCancel: TcxButton;
    btnOk: TcxButton;
    cbbColumns: TcxComboBox;
    cbbRows: TcxComboBox;
    dxLayoutCxLookAndFeel1: TdxLayoutCxLookAndFeel;
    lgDialogButtons: TdxLayoutGroup;
    liBtnCancel: TdxLayoutItem;
    liBtnOk: TdxLayoutItem;
    liColumns: TdxLayoutItem;
    liRows: TdxLayoutItem;
    LayoutLookAndFeelList: TdxLayoutLookAndFeelList;
    lcMain: TdxLayoutControl;
    lcMainGroup_Root: TdxLayoutGroup;
  public
    procedure Load(ASheet: TdxSpreadSheetTableView);
    procedure Save(ASheet: TdxSpreadSheetTableView);
  end;

implementation

{$R *.dfm}

{ TfrmGroupingOptions }

procedure TfrmGroupingOptions.Load(ASheet: TdxSpreadSheetTableView);
begin
  cbbRows.ItemIndex := Ord(ASheet.Rows.Groups.ExpandButtonPosition);
  cbbColumns.ItemIndex := Ord(ASheet.Columns.Groups.ExpandButtonPosition);
end;

procedure TfrmGroupingOptions.Save(ASheet: TdxSpreadSheetTableView);
begin
  ASheet.Columns.Groups.ExpandButtonPosition := TdxSpreadSheetTableItemGroupExpandButtonPosition(cbbColumns.ItemIndex);
  ASheet.Rows.Groups.ExpandButtonPosition := TdxSpreadSheetTableItemGroupExpandButtonPosition(cbbRows.ItemIndex);
end;

end.
