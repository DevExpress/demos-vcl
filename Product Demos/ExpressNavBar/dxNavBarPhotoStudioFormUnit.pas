unit dxNavBarPhotoStudioFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxNavBarControlBaseFormUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxClasses, dxBar, Vcl.StdCtrls,
  Vcl.ExtCtrls, dxNavBar, cxGroupBox, dxNavBarBase, dxNavBarCollns, cxTrackBar, dxCore,
  cxLabel, dxGalleryControl, dxGallery, dxGDIPlusClasses, cxImage, dxGDIPlusAPI, dxMessageDialog,
  dxRatingControl, dxLayoutcxEditAdapters, dxLayoutContainer, dxLayoutControl, dxLayoutLookAndFeels;

type
  TImageFilterType = (iftPolaroid, iftGrayScale, iftNegative, iftSepia, iftBGR, iftGBR);

  TdxNavBarControlDemoUnitForm1 = class(TdxNavBarControlDemoUnitForm)
    dxNavBar1: TdxNavBar;
    dxNavBar1Group1: TdxNavBarGroup;
    dxNavBar1Group2: TdxNavBarGroup;
    ngFilters: TdxNavBarGroup;
    ngColors: TdxNavBarGroup;
    ngBrightnessContrast: TdxNavBarGroup;
    ngBrightnessContrastControl: TdxNavBarGroupControl;
    tbR: TcxTrackBar;
    tbG: TcxTrackBar;
    tbB: TcxTrackBar;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    tbBrightness: TcxTrackBar;
    tbContrast: TcxTrackBar;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    gcFilters: TdxNavBarGroupControl;
    gcColor: TdxNavBarGroupControl;
    dxGalleryControl2: TdxGalleryControl;
    dxGalleryControl1: TdxGalleryControl;
    dxGalleryControl1Group1: TdxGalleryControlGroup;
    cxImage1: TcxImage;
    dxNavBar1Group2Control: TdxNavBarGroupControl;
    cxImage2: TcxImage;
    dxRatingControl1: TdxRatingControl;
    dxGalleryControl2Group1: TdxGalleryControlGroup;
    dxLayoutItem1: TdxLayoutItem;
    cxGroupBox3: TcxGroupBox;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    lblImageFileName: TdxLayoutLabeledItem;
    lblImageFileInfo: TdxLayoutLabeledItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutSeparatorItem1: TdxLayoutSeparatorItem;
    procedure dxGalleryControl2ItemClick(Sender: TObject;
      AItem: TdxGalleryControlItem);
    procedure FormCreate(Sender: TObject);
    procedure dxGalleryControl1ItemClick(Sender: TObject;
      AItem: TdxGalleryControlItem);
    procedure tbContrastPropertiesChange(Sender: TObject);
    procedure tbRGBPropertiesChange(Sender: TObject);
  private
    FChangeLock: Boolean;
    function ApplyBrightness(AImage: TdxSmartImage; ABrightnessValue: Byte): TdxSmartImage;
    function ApplyColorMatrix(AImage: TdxSmartImage; AColorMatrix: TdxGpColorMatrix): TdxSmartImage;
    function ApplyContrast(AImage: TdxSmartImage; AContrastValue: Byte): TdxSmartImage;
    function ApplyFilter(AImage: TdxSmartImage; AFilterType: TImageFilterType): TdxSmartImage;
    function ApplyRGB(AImage: TdxSmartImage; R, G, B: Byte): TdxSmartImage;
    procedure PopulateGallery(APath: string);
    procedure UpdateFilterGroup(AGlyph: TdxSmartGlyph);
  protected
    function GetDescription: string; override;
    function GetNavBarControl: TdxNavBar; override;
  public
    class function GetID: Integer; override;
    class function GetLoadingInfo: string; override;
  end;

implementation

{$R *.dfm}

const
  SImageFilterName: array [TImageFilterType] of string = ('Polaroid', 'GrayScale', 'Negative', 'Sepia', 'BGR', 'GBR');

{ TdxNavBarControlDemoUnitForm1 }

procedure TdxNavBarControlDemoUnitForm1.dxGalleryControl1ItemClick(
  Sender: TObject; AItem: TdxGalleryControlItem);
begin
  if FChangeLock then
    Exit;
  FChangeLock := True;
  try
    tbBrightness.EditValue := 0;
    tbContrast.EditValue := 0;
    tbR.EditValue := 0;
    tbG.EditValue := 0;
    tbB.EditValue := 0;
    cxImage1.Picture.Graphic := AItem.Glyph;
  finally
    FChangeLock := False;
  end;
end;

procedure TdxNavBarControlDemoUnitForm1.dxGalleryControl2ItemClick(
  Sender: TObject; AItem: TdxGalleryControlItem);
begin
  FChangeLock := True;
  DisableAlign;
  try
    cxImage1.Picture.Graphic := AItem.Glyph;
    cxImage2.Picture.Graphic := AItem.Glyph;
    UpdateFilterGroup(AItem.Glyph);
    lblImageFileName.Caption := AItem.Caption;
    lblImageFileInfo.Caption := AItem.Description;
    tbBrightness.EditValue := 0;
    tbContrast.EditValue := 0;
    tbR.EditValue := 0;
    tbG.EditValue := 0;
    tbB.EditValue := 0;
    dxRatingControl1.EditValue := 0;
  finally
    EnableAlign;
    FChangeLock := False;
  end;
end;

procedure TdxNavBarControlDemoUnitForm1.FormCreate(Sender: TObject);
begin
  dxGalleryControl2.BeginUpdate;
  dxGalleryControl2Group1.Items.Clear;
  PopulateGallery(ExtractFilePath(Application.ExeName) + '\Data\*.jpg');
  dxGalleryControl2.ColumnCount := dxGalleryControl2Group1.ItemCount;
  dxGalleryControl2.EndUpdate;
  if dxGalleryControl2Group1.ItemCount = 0 then
  begin
    dxMessageDlg('No JPG images were found in the Data folder', TMsgDlgType.mtInformation, [mbOK]);
    FChangeLock := True;
    Exit;
  end;
  dxGalleryControl2.Gallery.GetFirstItem.Checked := True;
end;

class function TdxNavBarControlDemoUnitForm1.GetID: Integer;
begin
  Result := 0;
end;

class function TdxNavBarControlDemoUnitForm1.GetLoadingInfo: string;
begin
  Result := 'Photo Studio Demo';
end;

function TdxNavBarControlDemoUnitForm1.GetDescription: string;
begin
  Result := 'This example demonstrates how to use the NavBar Control to create an advanced photo editing ' +
    'tool. The control contains the Properties and Image expandable groups. Expandable items in the ' +
    'Properties group display User Controls providing image editing capabilities.';
end;

function TdxNavBarControlDemoUnitForm1.GetNavBarControl: TdxNavBar;
begin
  Result := dxNavBar1;
end;

procedure TdxNavBarControlDemoUnitForm1.PopulateGallery(APath: string);

  function IsFile(AFindData: TWIN32FindData): Boolean;
  var
    AFileName: string;
  begin
    AFileName := AFindData.cFileName;
    Result := (AFileName <> '.') and (AFileName <> '..') and
      (AFindData.dwFileAttributes and FILE_ATTRIBUTE_DIRECTORY = 0);
  end;

  function GetFileName(AFindData: TWIN32FindData): string;
  begin
    Result := AFindData.cFileName;
  end;

var
  AMask: string;
  AFilePath: string;
  AHandle: THandle;
  AFindData: TWIN32FindData;
  ASize: UInt64;
begin
  if DirectoryExists(APath) then
  begin
    AFilePath := IncludeTrailingPathDelimiter(APath);
    APath := AFilePath + '*';
    AMask := '*';
  end
  else
  begin
    AFilePath := ExtractFilePath(APath);
    AMask := Copy(APath, Length(AFilePath) + 1, MaxInt);
  end;
  AHandle := FindFirstFile(PChar(APath), AFindData);
  if AHandle <> INVALID_HANDLE_VALUE then
    try
      repeat
        if IsFile(AFindData) and ((AMask = '*') or SameText(ExtractFileExt(AFindData.cFileName), ExtractFileExt(AMask))) then
        begin
          with dxGalleryControl2Group1.Items.Add do
          begin
            Glyph.LoadFromFile(AFilePath + GetFileName(AFindData));
            Caption := GetFileName(AFindData);
            ASize := (AFindData.nFileSizeHigh shl 32 + AFindData.nFileSizeLow) div 1024;
            Description := IntToStr(Glyph.Width) + 'x' + IntToStr(Glyph.Height) + dxCRLF + IntToStr(ASize) + ' KB';
          end;
        end;
        if not FindNextFile(AHandle, AFindData) then Break;
      until False;
    finally
      Winapi.Windows.FindClose(AHandle);
    end;
end;

function TdxNavBarControlDemoUnitForm1.ApplyBrightness(AImage: TdxSmartImage;
  ABrightnessValue: Byte): TdxSmartImage;
begin
  Result := ApplyRGB(AImage, ABrightnessValue, ABrightnessValue, ABrightnessValue);
end;

function TdxNavBarControlDemoUnitForm1.ApplyColorMatrix(AImage: TdxSmartImage;
  AColorMatrix: TdxGpColorMatrix): TdxSmartImage;
var
  AAttributes: TdxGPImageAttributes;
  AGpCanvas: TdxGPCanvas;
begin
  Result := TdxSmartImage.CreateSize(AImage.ClientRect);
  AAttributes := TdxGPImageAttributes.Create;
  try
    AAttributes.SetColorMatrix(@AColorMatrix, ColorMatrixFlagsDefault, ColorAdjustTypeBitmap);
    AGpCanvas := Result.CreateCanvas;
    try
      AGpCanvas.Draw(AImage, AImage.ClientRect, AAttributes);
    finally
      AGpCanvas.Free;
    end;
  finally
    AAttributes.Free;
  end;
end;

function TdxNavBarControlDemoUnitForm1.ApplyContrast(AImage: TdxSmartImage;
  AContrastValue: Byte): TdxSmartImage;

const
  ColorMatrix: TdxGpColorMatrix =
    ((1, 0, 0, 0, 0),
     (0, 1, 0, 0, 0),
     (0, 0, 1, 0, 0),
     (0, 0, 0, 1, 0),
     (0, 0, 0, 0, 1));

var
  AColorMatrix: TdxGpColorMatrix;
  AScale: Single;
  ATranslate: Single;
begin
  AScale := AContrastValue/100;
  ATranslate := (-0.5 * AContrastValue + 0.5) * 255;
  AColorMatrix := ColorMatrix;
  AColorMatrix[0, 0] := ColorMatrix[0, 0] + AScale;
  AColorMatrix[1, 1] := ColorMatrix[1, 1] + AScale;
  AColorMatrix[2, 2] := ColorMatrix[2, 2] + AScale;
  AColorMatrix[0, 4] := ATranslate;
  AColorMatrix[1, 4] := ATranslate;
  AColorMatrix[2, 4] := ATranslate;
  Result := ApplyColorMatrix(AImage, AColorMatrix);
end;

function TdxNavBarControlDemoUnitForm1.ApplyFilter(
  AImage: TdxSmartImage; AFilterType: TImageFilterType): TdxSmartImage;

const
  ColorMatrix: array [TImageFilterType] of TdxGpColorMatrix =
    (
    //  PolaroidFilter: TdxGpColorMatrix =
        ((1.438, -0.062, -0.062, 0, 0),
         (-0.122, 1.378, -0.122, 0, 0),
         (0.016, -0.016, 1.438, 0, 0),
         (0, 0, 0, 1, 0),
         (0.03, 0.05, -0.2, 0, 1)),
  //    GrayScaleFilter: TdxGpColorMatrix =
        ((0.3, 0.3, 0.3, 0, 0),
         (0.59, 0.59, 0.59, 0, 0),
         (0.11, 0.11, 0.11, 0, 0),
         (0, 0, 0, 1, 0),
         (0, 0, 0, 0, 1)),
   //   NegativeFilter: TdxGpColorMatrix =
        ((-1, 0, 0, 0, 0),
         (0, -1, 0, 0, 0),
         (0, 0, -1, 0, 0),
         (0, 0, 0, 1, 0),
         (1, 1, 1, 0, 1)),
    //  SepiaFilter: TdxGpColorMatrix =
        ((0.393, 0.349, 0.272, 0, 0),
         (0.769, 0.686, 0.534, 0, 0),
         (0.189, 0.168, 0.131, 0, 0),
         (0, 0, 0, 1, 0),
         (0, 0, 0, 0, 1)),
    //  BGRFilter: TdxGpColorMatrix =
        ((0, 0, 1, 0, 0),
         (0, 1, 0, 0, 0),
         (1, 0, 0, 0, 0),
         (0, 0, 0, 1, 0),
         (0, 0, 0, 0, 1)),
   //   GBRFilter: TdxGpColorMatrix =
        ((0, 1, 0, 0, 0),
         (0, 0, 1, 0, 0),
         (1, 0, 0, 0, 0),
         (0, 0, 0, 1, 0),
         (0, 0, 0, 0, 1)));

begin
  Result := ApplyColorMatrix(AImage, ColorMatrix[AFilterType]);
end;

function TdxNavBarControlDemoUnitForm1.ApplyRGB(AImage: TdxSmartImage; R, G,
  B: Byte): TdxSmartImage;

const
  ColorMatrix: TdxGpColorMatrix =
    ((1, 0, 0, 0, 0),
     (0, 1, 0, 0, 0),
     (0, 0, 1, 0, 0),
     (0, 0, 0, 1, 0),
     (0.1, 0.1, 0.1, 0, 1));

var
  AColorMatrix: TdxGpColorMatrix;
  I: Integer;
begin
  AColorMatrix := ColorMatrix;
  AColorMatrix[0, 0] := ColorMatrix[0, 0] + R/255;
  AColorMatrix[1, 1] := ColorMatrix[1, 1] + G/255;
  AColorMatrix[2, 2] := ColorMatrix[2, 2] + B/255;
  if (R = 0) and (G = 0) and (B = 0) then
    for I := 0 to 3 do
      AColorMatrix[4, I] := 0;
  Result := ApplyColorMatrix(AImage, AColorMatrix);
end;

procedure TdxNavBarControlDemoUnitForm1.UpdateFilterGroup(AGlyph: TdxSmartGlyph);
var
  AGalleryItem: TdxGalleryControlItem;
  AFilterType: TImageFilterType;
  AImage: TdxSmartImage;
begin
  dxGalleryControl1Group1.Items.Clear;
  for AFilterType := Low(TImageFilterType) to High(TImageFilterType) do
  begin
    AGalleryItem := dxGalleryControl1Group1.Items.Add;
    AGalleryItem.Caption := SImageFilterName[AFilterType];
    AImage := ApplyFilter(AGlyph, AFilterType);
    try
      AGalleryItem.Glyph.Assign(AImage);
    finally
      AImage.Free;
    end;
  end;
end;

procedure TdxNavBarControlDemoUnitForm1.tbContrastPropertiesChange(
  Sender: TObject);
var
  AImage, AImage1: TdxSmartImage;
begin
  if FChangeLock then
    Exit;
  FChangeLock := True;
  try
    tbR.EditValue := 0;
    tbG.EditValue := 0;
    tbB.EditValue := 0;
    dxGalleryControl1.Gallery.UncheckAll;
    tbContrast.Update;
    tbBrightness.Update;
    AImage := ApplyContrast(cxImage2.Picture.Graphic as TdxSmartImage, tbContrast.EditValue);
    AImage1 := ApplyBrightness(AImage, tbBrightness.EditValue);
    cxImage1.Picture.Graphic := AImage1;
    AImage1.Free;
    AImage.Free;
  finally
    FChangeLock := False;
  end;
end;

procedure TdxNavBarControlDemoUnitForm1.tbRGBPropertiesChange(Sender: TObject);
var
  AImage: TdxSmartImage;
begin
  if FChangeLock then
    Exit;
  FChangeLock := True;
  try
    tbBrightness.EditValue := 0;
    tbContrast.EditValue := 0;
    dxGalleryControl1.Gallery.UncheckAll;
    tbR.Update;
    tbG.Update;
    tbB.Update;
    AImage := ApplyRGB(cxImage2.Picture.Graphic as TdxSmartImage, tbR.EditValue, tbG.EditValue, tbB.EditValue);
    cxImage1.Picture.Graphic := AImage;
    AImage.Free;
  finally
    FChangeLock := False;
  end;
end;

initialization
  TdxNavBarControlDemoUnitForm1.Register;

end.
