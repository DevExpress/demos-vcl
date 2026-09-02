unit cxCustomDrawDemoEditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls, cxButtons, cxDropDownEdit, cxMRUEdit, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, Vcl.CheckLst,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Buttons, cxCustomDrawDemoConsts,
  cxLookAndFeelPainters, cxRadioGroup, cxImageComboBox,
  cxStyles, cxTL, cxMemo, cxCurrencyEdit, cxCheckBox, cxDBLookupComboBox,
  cxInplaceContainer, Vcl.Menus, cxEditRepositoryItems, cxTreeListCustomDrawFormUnit,
  cxGraphics, cxCustomData, cxTLdxBarBuiltInMenu, dxSkinsCore, dxShellDialogs,
  cxSpinEdit, cxBlobEdit, cxHyperLinkEdit, cxGroupBox, cxLookAndFeels, dxForms, dxScrollbarAnnotations,
  cxFilter, dxLayoutContainer, dxLayoutControlAdapters, dxLayoutcxEditAdapters,
  cxClasses, dxLayoutControl, dxLayoutLookAndFeels;

type
  TCustomDrawDemoEditorForm = class(TdxForm)
    btnClose: TcxButton;
    cbGradient: TcxComboBox;
    chbOwnerDrawText: TcxCheckBox;
    FontDialog: TFontDialog;
    mruBkImage: TcxMRUEdit;
    OpenDialog: TdxOpenFileDialog;
    rbBackGroundImage: TcxRadioButton;
    rbGradient: TcxRadioButton;
    rfaultDrawing: TcxRadioButton;
    rpendsOnTheData: TcxRadioButton;
    tlCustomDrawItems: TcxTreeList;
    tlCustomDrawItemscxTreeListColumn1: TcxTreeListColumn;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutSeparatorItem1: TdxLayoutSeparatorItem;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    liFont: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    sbFont: TcxButton;

    procedure FormCreate(Sender: TObject);
    procedure tlCustomDrawItemsSelectionChanged(Sender: TObject);
    procedure rbRadioButtonClick(Sender: TObject);
    procedure mruBkImagePropertiesEditValueChanged(Sender: TObject);
    procedure mruBkImagePropertiesButtonClick(Sender: TObject);
    procedure cbGradientPropertiesChange(Sender: TObject);
    procedure chbOwnerDrawTextPropertiesChange(Sender: TObject);
    procedure sbFontClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
    frmCustomDraw: TfrmCustomDraw;
    procedure AdjustControlsEnable;
    function GetSelectedDrawItem: TcxItemCustomDrawInfo;
  public
    constructor Create(AOwner: TComponent); override;
  end;

implementation

uses System.SysUtils;

{$R *.dfm}

constructor TCustomDrawDemoEditorForm.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  frmCustomDraw := TfrmCustomDraw(AOwner);
end;

procedure TCustomDrawDemoEditorForm.FormCreate(Sender: TObject);

  procedure FillCustomDrawItemList;
  var
    I: Integer;
    AItem: TcxItemCustomDrawInfo;
  begin
    with frmCustomDraw do
      for I := 0 to CustomDrawInfo.Count - 1 do
        with tlCustomDrawItems.Root.AddChild do
        begin
          AItem := CustomDrawInfo.GetItemByIndex(I);
          Data := AItem;
          Values[0] := CustomDrawAreaNames[AItem.DrawArea];
        end;
  end;

  procedure FillBkImageTypeList;
  var
    I: TBkImage;
  begin
    for I := Low(BkImageResNames) to High(BkImageResNames) do
      if I = bkiUserDefined then
        mruBkImage.Properties.LookupItems.Add('User Defined')
      else
        mruBkImage.Properties.LookupItems.Add(BkImageResNames[I]);
  end;

  procedure FillColorSchemeList;
  var
    I: TColorScheme;
  begin
    for I := Low(ColorSchemeNames) to High(ColorSchemeNames) do
      cbGradient.Properties.Items.Add(ColorSchemeNames[I]);
  end;

begin
  FillCustomDrawItemList;
  FillBkImageTypeList;
  FillColorSchemeList;
  OpenDialog.InitialDir := ExtractFilePath(Application.ExeName);
  tlCustomDrawItems.Root.getFirstChild.Focused := True;
end;

procedure TCustomDrawDemoEditorForm.tlCustomDrawItemsSelectionChanged(
  Sender: TObject);
  procedure AdjustSettings(ASelectedNode: TcxTreeListNode);
  var
    AItem: TcxItemCustomDrawInfo;
  begin
    AItem := TcxItemCustomDrawInfo(ASelectedNode.Data);
    rbBackGroundImage.Checked := AItem.DrawingStyle = cdsBkImage;
    rbGradient.Checked := AItem.DrawingStyle = cdsGradient;
    rpendsOnTheData.Checked := AItem.DrawingStyle = cdsDependsOnData;
    rfaultDrawing.Checked := AItem.DrawingStyle = cdsDefaultDrawing;
    chbOwnerDrawText.Checked := AItem.OwnerTextDraw;
    rpendsOnTheData.Visible := AItem.ItemType = itCell;
    mruBkImage.Text := BkImageResNames[AItem.BkImageType];
    cbGradient.ItemIndex := Integer(AItem.ColorScheme);
    AdjustControlsEnable;
  end;
begin
  if tlCustomDrawItems.SelectionCount > 0 then
    AdjustSettings(tlCustomDrawItems.Selections[0]);
end;

procedure TCustomDrawDemoEditorForm.AdjustControlsEnable;
begin
  mruBkImage.Enabled := rbBackGroundImage.Checked;
  cbGradient.Enabled := rbGradient.Checked;
  chbOwnerDrawText.Enabled := (GetSelectedDrawItem.ItemType in [itText, itCell]) and
    not (rfaultDrawing.Checked or rpendsOnTheData.Checked);
  liFont.Enabled := chbOwnerDrawText.Checked and chbOwnerDrawText.Enabled;
end;

procedure TCustomDrawDemoEditorForm.rbRadioButtonClick(
  Sender: TObject);
var
  AItem: TcxItemCustomDrawInfo;
begin
  TcxRadioButton(Sender).Checked := True;
  AItem := GetSelectedDrawItem;
  if AItem <> nil then
  begin
    AItem.DrawingStyle := TCustomDrawingStyle(TcxRadioButton(Sender).Tag);
    AdjustControlsEnable;
    frmCustomDraw.TreeList.LayoutChanged;
  end;
end;

function TCustomDrawDemoEditorForm.GetSelectedDrawItem: TcxItemCustomDrawInfo;
begin
  Result := nil;
  if tlCustomDrawItems.SelectionCount > 0 then
    Result := TcxItemCustomDrawInfo(tlCustomDrawItems.Selections[0].Data);
end;

procedure TCustomDrawDemoEditorForm.mruBkImagePropertiesEditValueChanged(
  Sender: TObject);
  function GetBkImageTypeByName(AName: string): TBkImage;
  var
    I: TBkImage;
  begin
    Result := bkiUserDefined;
    for I := Low(BkImageResNames) to High(BkImageResNames) do
      if BkImageResNames[I] = AName then
      begin
        Result := I;
        Break;
      end;
  end;
begin
  GetSelectedDrawItem.BkImageType :=
    GetBkImageTypeByName(TcxMRUEdit(Sender).EditValue);
  frmCustomDraw.TreeList.Invalidate;
end;

procedure TCustomDrawDemoEditorForm.mruBkImagePropertiesButtonClick(
  Sender: TObject);
var
  ABitmap: TBitmap;
begin
  if OpenDialog.Execute then
  begin
    ABitmap := TBitmap.Create;
    ABitmap.LoadFromFile(OpenDialog.FileName);
    GetSelectedDrawItem.Bitmap := ABitmap;
    TcxCustomEdit(Sender).EditValue := 'User Defined';
    frmCustomDraw.TreeList.Invalidate;
  end;
end;

procedure TCustomDrawDemoEditorForm.cbGradientPropertiesChange(
  Sender: TObject);
begin
  GetSelectedDrawItem.ColorScheme := TColorScheme(TcxComboBox(Sender).ItemIndex);
  frmCustomDraw.TreeList.Invalidate;
end;

procedure TCustomDrawDemoEditorForm.chbOwnerDrawTextPropertiesChange(
  Sender: TObject);
begin
  AdjustControlsEnable;
  GetSelectedDrawItem.OwnerTextDraw := chbOwnerDrawText.Checked;
  frmCustomDraw.TreeList.LayoutChanged;
end;

procedure TCustomDrawDemoEditorForm.sbFontClick(Sender: TObject);
var
  AFont: TFont;
begin
  if FontDialog.Execute then
  begin
    AFont := TFont.Create;
    AFont.Assign(FontDialog.Font);
    GetSelectedDrawItem.Font := AFont;
    frmCustomDraw.TreeList.Invalidate;
  end;
end;

procedure TCustomDrawDemoEditorForm.btnCloseClick(Sender: TObject);
begin
  Close;
end;

end.
