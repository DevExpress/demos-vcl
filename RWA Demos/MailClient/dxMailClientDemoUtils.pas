unit dxMailClientDemoUtils;

interface

uses
  System.Types, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, dxBar, Vcl.StdCtrls, Data.DB, Datasnap.DBClient,
  dxBarExtItems, cxControls, cxGeometry, cxGraphics, dxRibbon, dxRibbonGallery, dxMessageDialog,
  dxOffice11, cxRichEdit, dxGDIPlusClasses, dxCore, dxDemoUtils;

type
  TdxContactsView = (cvList, cvAlphabetical, cvByState, cvCard);
  TdxMakeModeType = (dxmmtNew, dxmmtReply, dxmmtReplyAll, dxmmtForward, dxmmtEdit, dxmmtView);

const
  bkRoot    = 0;
  bkInbox   = 1;
  bkSent    = 2;
  bkDeleted = 3;
  bkDrafts  = 4;

  gvMale   = 0;
  gvFemale = 1;

  pvLow    = 0;
  pvMedium = 1;
  pvHigh   = 2;

  ntNone = 0;
  ntDr   = 1;
  ntMiss = 2;
  ntMr   = 3;
  ntMrs  = 4;
  ntMs   = 5;
  ntProf = 6;

  tcgHouseChores = 0;
  tcgShopping    = 1;
  tcgOffice      = 2;

  tfsToday     = 0;
  tfsTomorrow  = 1;
  tfsThisWeek  = 2;
  tfsNextWeek  = 3;
  tfsNoDate    = 4;
  tfsCustom    = 5;
  tfsCompleted = 6;

  tstNotStarted = 0;
  tstInProgress = 1;
  tstCompleted  = 2;
  tstWaiting    = 3;
  tstDeferred   = 4;

  dxAddressDelimiter = ';';

  sRichEditFoundResultCaption = 'Information';
  sRichEditReplaceAllResult = 'Replaced %d occurrences.';
  sRichEditTextNotFound = 'The search text is not found.';

var
  dxMailClientDefaultExportPath: string;

type
  TdxAssignGlyphProcedure = procedure of object;

  TdxSearchFunction = function(AParam: string): string of object;


procedure DrawHelpedColorLine(AScaleFactor: TdxScaleFactor; AGlyph: TdxSmartGlyph; AColor: TColor;
  AImageBasicGlyph: TcxImageList; AIndexBasicGlyph: Integer);
procedure DrawHelpedFontColor(AScaleFactor: TdxScaleFactor; AGlyph: TdxSmartGlyph; AColor: TColor);
procedure DrawHelpedHighlightColor(AScaleFactor: TdxScaleFactor; AGlyph: TdxSmartGlyph; AColor: TColor);
function GetLabelCaption(const ACaption: string): string;
function GetProgramPath: string;
procedure ReplaceInRich(ARich: TcxRichEdit; const ATokenStr, S: string;
  AContinuationFind: Boolean = False);
procedure PopulateCustomerInfoRich(ARich: TcxRichEdit; ACustomerDts: TDataSet);
procedure FindOne(Sender: TObject; Editor: TcxCustomRichEdit);
function GetFullAddress(AAddressLine, ACity, AState, AZipCode: string): string;
function InitializeRich(ARich: TcxRichEdit; AFileName: string;
  AContinuationLoad: Boolean = False): Boolean;
procedure PopulateSymbolGallery(ABarManager: TdxBarManager; AGalleryItem: TdxRibbonGalleryItem);
procedure ReplaceOne(Sender: TObject; Editor: TcxCustomRichEdit);
procedure SetFieldValue(AField: TField; const AValue: Variant);
procedure ShowMessageErrorLoading(const AFileName: string);
procedure ShowMessageFileNotFound(const AFileName: string);

implementation

uses
  System.Contnrs, System.Generics.Collections,
  dxThreading, dxCoreClasses,
  cxDateUtils, MailClientDemoData, LocalizationStrs, dxDPIAwareUtils;

type
  TdxSymbolImagesTask = class(TdxTask)
  const
    AMathMap: array [0..7] of Integer = ($B1, $2260, $2264, $2265, $F7, $D7, $221E, $2211);
    AGreekMap: array [0..9] of integer = ($03B1, $03B2, $03B3, $03B4, $03B5, $03B6, $03B7, $03B8, $03B9, $03BA);
    ASymbolMap: array [0..2] of Integer = ($A9, $AE, $2122);
    ACurrencyMap: array [0..4] of Integer = ($20AC, $24, $A3, $A5, $20A3);
  strict private
    FScaleFactor: TdxScaleFactor;
    FFontName: string;
    FFreeNotificator: TcxFreeNotificator;
    FBarManager: TdxBarManager;
    FGalleryItem: TdxRibbonGalleryItem;
    FImageList: TObjectList;
    FCancel: Boolean;
    function CreateSymbolBitmap(AChar: WideChar): TcxAlphaBitmap;
    procedure PopulateGalleryImages;
  protected
    procedure OnCancel(Sender: TComponent);
    procedure Complete; override;
    procedure Execute; override;
  public
    constructor Create(AScaleFactor: TdxScaleFactor; const AFontName: string;
      ABarManager: TdxBarManager; AGalleryItem: TdxRibbonGalleryItem);
    destructor Destroy; override;
  end;



procedure DrawHelpedColorLine(AScaleFactor: TdxScaleFactor; AGlyph: TdxSmartGlyph; AColor: TColor;
  AImageBasicGlyph: TcxImageList; AIndexBasicGlyph: Integer);
var
  ALineBounds: TRect;
  ABasicGlyph: TdxSmartImage;
  ALineGlyph: TcxAlphaBitmap;
  ABitmapGlyph: TcxAlphaBitmap;
  ASize: Integer;
  ALineWidth: Integer;
  ALineHeight: Integer;
  ASourceSize: Integer;
begin
  ASourceSize := 16;
  ABasicGlyph := TdxSmartImage.Create;
  try
    ASize := AScaleFactor.Apply(ASourceSize);
    AImageBasicGlyph.GetImage(AIndexBasicGlyph, ABasicGlyph);
    ABitmapGlyph := TcxAlphaBitmap.CreateSize(ASize, ASize);
    try
      ABitmapGlyph.RecoverTransparency(clWhite);
      ABasicGlyph.StretchDraw(ABitmapGlyph.Canvas.Handle,
        TdxRectF.Create(0, 0, ASize, ASize),
        TdxRectF.Create(0, 0, ABasicGlyph.Width, ABasicGlyph.Height));
      if AColor <> clNone then
      begin
        ALineWidth := Round(AScaleFactor.ApplyF(10.0));
        ALineHeight := Round(AScaleFactor.ApplyF(3.0));
        ALineGlyph := TcxAlphaBitmap.CreateSize(ALineWidth, ALineHeight);
        try
          ALineGlyph.cxCanvas.FillRect(Rect(0, 0, ALineWidth, ALineHeight), AColor);
          ALineGlyph.MakeOpaque;
          ALineBounds := cxRectBounds(Round(AScaleFactor.ApplyF(3.0)), Round(AScaleFactor.ApplyF(11.0)), ALineWidth, ALineHeight);
          cxBitBlt(ABitmapGlyph.Canvas.Handle, ALineGlyph.Canvas.Handle, ALineBounds, Point(0, 0), SRCCOPY);
        finally
          ALineGlyph.Free;
        end;
      end;
      AGlyph.Assign(ABitmapGlyph);
    finally
      ABitmapGlyph.Free;
    end;
    AGlyph.SourceHeight := ASourceSize;
    AGlyph.SourceWidth := ASourceSize;
  finally
    ABasicGlyph.Free;
  end;
end;

procedure DrawHelpedFontColor(AScaleFactor: TdxScaleFactor; AGlyph: TdxSmartGlyph; AColor: TColor);
begin
  DrawHelpedColorLine(AScaleFactor, AGlyph, AColor, DM.cxGridsImageList_16, 20);
end;

procedure DrawHelpedHighlightColor(AScaleFactor: TdxScaleFactor; AGlyph: TdxSmartGlyph; AColor: TColor);
begin
  DrawHelpedColorLine(AScaleFactor, AGlyph, AColor, DM.cxGridsImageList_16, 21);
end;

function GetFullAddress(AAddressLine, ACity, AState, AZipCode: string): string;
begin
  Result := Format('%s, %s, %s, %s', [AAddressLine, ACity, AState, AZipCode]);
end;

function GetLabelCaption(const ACaption: string): string;
begin
  Result := StringReplace(ACaption, '&', '&&', [rfReplaceAll, rfIgnoreCase]);
end;

function GetProgramPath: string;
begin
  Result := ExtractFilePath(Application.ExeName);
end;

function InitializeRich(ARich: TcxRichEdit; AFileName: string;
  AContinuationLoad: Boolean = False): Boolean;
begin
  Result := False;
  if not AContinuationLoad then
    ARich.Lines.Clear;
  ARich.Properties.StreamModes := [resmSelection];
  if FileExists(AFileName) then
    try
      ARich.Lines.LoadFromFile(AFileName);
      Result := True;
    except
      ShowMessageErrorLoading(AFileName);
    end
  else
    ShowMessageFileNotFound(AFileName);
  ARich.Properties.StreamModes := [];
end;

procedure ReplaceInRich(ARich: TcxRichEdit; const ATokenStr, S: string;
  AContinuationFind: Boolean = False);
var
  ASelLength: Integer;
  AStartPosition: Integer;
begin
  ASelLength := Length(ATokenStr);
  AStartPosition := 0;
  if AContinuationFind then
    AStartPosition := ARich.CursorPos;
  ARich.SelStart := ARich.FindTexT(ATokenStr, AStartPosition,
    Length(ARich.Text) - AStartPosition, []);
  ARich.SelLength := ASelLength;
  ARich.SelText := S;
end;

procedure PopulateCustomerInfoRich(ARich: TcxRichEdit; ACustomerDts: TDataSet);
var
  AName, ABirthDate, AEMail, APhone, AAddress: string;
begin
  InitializeRich(ARich, GetProgramPath + 'Data\CustomerFmt.rtf');
  with ACustomerDts do
  begin
    AName := FieldByName('Name').AsString;
    ABirthDate := DateTimeToText(FieldByName('BirthDate').AsDateTime);
    AEMail := FieldByName('EMail').AsString;
    APhone := FieldByName('Phone').AsString;
    AAddress := GetFullAddress(
      FieldByName('AddressLine').AsString, FieldByName('City').AsString,
      FieldByName('State').AsString, FieldByName('ZipCode').AsString);
  end;
  ReplaceInRich(ARich, '__Name__', AName);
  ReplaceInRich(ARich, '__BirthDate__', ABirthDate);
  ReplaceInRich(ARich, '__EMail__', AEMail);
  ReplaceInRich(ARich, '__Phone__', APhone);
  ReplaceInRich(ARich, '__Address__', AAddress);
  ReplaceInRich(ARich, '__clBirthDate__', cxGetResourceString(@sBirthDate));
  ReplaceInRich(ARich, '__clEMail__', cxGetResourceString(@sEmail));
  ReplaceInRich(ARich, '__clPhone__', cxGetResourceString(@sPhoneColumn));
  ReplaceInRich(ARich, '__clAddress__', cxGetResourceString(@sAddressColumn));
end;

procedure FindOne(Sender: TObject; Editor: TcxCustomRichEdit);
var
  StartPos, FindLength, FoundAt: Integer;
  Flags: TSearchTypes;
  P: TPoint;
  CaretR, R, IntersectR: TRect;
begin
  with Editor, TFindDialog(Sender) do
  begin
    StartPos := SelStart;
    if SelLength <> 0 then
      StartPos := StartPos + SelLength;
    FindLength := Length(Text) - StartPos;
    Flags := [];

    if frMatchCase in Options then
      Include(Flags, stMatchCase);
    if frWholeWord in Options then
      Include(Flags, stWholeWord);

    FoundAt := Editor.FindText(FindText, StartPos, FindLength, Flags);
    if FoundAt > -1 then
    begin
      if frReplaceAll in Options then
      begin
        SelStart := FoundAt;
        SelLength := Length(FindText);
      end
      else
      begin
        SetFocus;
        SelStart := FoundAt;
        SelLength := Length(FindText);

        Winapi.Windows.GetCaretPos(P);
        P := ClientToScreen(P);
        CaretR := Rect(P.X, P.Y, P.X + 2, P.Y + 20);
        GetWindowRect(Handle, R);
        if IntersectRect(IntersectR, CaretR, R) then
          if P.Y < Screen.Height div 2 then
            Top := P.Y + 40
          else
            Top := P.Y - (R.Bottom - R.Top + 20);
      end
    end
    else
      if not (frReplaceAll in Options) then
        dxMessageDlg(sRichEditTextNotFound, sRichEditFoundResultCaption, TMsgDlgType.mtInformation, [mbOK]);
  end;
end;

procedure ReplaceOne(Sender: TObject; Editor: TcxCustomRichEdit);
var
  ReplacedCount, OldSelStart, PrevSelStart: Integer;
  S: string;
begin
  with Editor, TReplaceDialog(Sender) do
  begin
    ReplacedCount := 0;
    OldSelStart := SelStart;
    if frReplaceAll in Options then
      ShowHourglassCursor;

    repeat
      if (SelLength > 0) and ((SelText = FindText) or (not (frMatchCase in Options) and
         (AnsiUpperCase(SelText) = AnsiUpperCase(FindText)))) then
      begin
        SelText := ReplaceText;
        Inc(ReplacedCount);
      end;
      PrevSelStart := SelStart;
      FindOne(Sender, Editor);
    until not (frReplaceAll in Options) or (SelStart = PrevSelStart);

    if frReplaceAll in Options then
    begin
      HideHourglassCursor;
      if ReplacedCount = 0 then
        S := sRichEditTextNotFound
      else
      begin
        SelStart := OldSelStart;
        S := Format(sRichEditReplaceAllResult, [ReplacedCount]);
      end;
      dxMessageDlg(S, sRichEditFoundResultCaption, TMsgDlgType.mtInformation, [mbOK]);
    end;
  end;
end;

procedure SetFieldValue(AField: TField; const AValue: Variant);
begin
  with AField.DataSet do
  begin
    Edit;
    AField.Value := AValue;
    Post;
  end;
end;

procedure PopulateSymbolGalleryEx(ABarManager: TdxBarManager; AGalleryItem: TdxRibbonGalleryItem);
var
  AScaleFactor: TdxScaleFactor;

  procedure AddItem(AGroup: TdxRibbonGalleryGroup; ACode: Integer);

    function CreateBitmap(const AFont: string; AChar: WideChar): TcxAlphaBitmap;
    var
      AGlyphSize: Integer;
      R: TRect;
    begin
      AGlyphSize := AScaleFactor.Apply(32);
      R := Rect(0, 0, AGlyphSize, AGlyphSize);
      Result := TcxAlphaBitmap.CreateSize(R);
      Result.Canvas.Brush.Color := $FAFAFA;
      Result.Canvas.FillRect(R);
      Result.Canvas.Font.Name := AFont;
      Result.Canvas.Font.Color := $5C534C;
      Result.Canvas.Font.Height := AScaleFactor.Apply(-MulDiv(16, dxDefaultDPI, 72)); 
      DrawTextW(Result.Canvas.Handle, @AChar, 1, R, DT_CENTER or DT_VCENTER or DT_SINGLELINE);
      Result.TransformBitmap(btmSetOpaque);
    end;

  var
    AItem: TdxRibbonGalleryGroupItem;
    AFont: string;
    ABitmap: TcxAlphaBitmap;
  begin
    AItem := AGroup.Items.Add;
    AFont := 'Times New Roman';
    AItem.Caption := AFont + ' #' + IntToStr(ACode);
    AItem.Description := AFont;
    AItem.Tag := ACode;
    ABitmap := CreateBitmap(AFont, WideChar(ACode));
    AItem.Glyph.Assign(ABitmap);
    AItem.Glyph.SourceDPI := AScaleFactor.TargetDPI;
    ABitmap.Free;
  end;

  procedure PopulateGroup(AGroupIndex: Integer; AMap: array of Integer);
  var
    I: Integer;
  begin
    for I := Low(AMap) to High(AMap) do
      AddItem(AGalleryItem.GalleryGroups[AGroupIndex], AMap[I]);
  end;

  procedure ClearGroups;
  var
    I: Integer;
  begin
    for I := 0 to AGalleryItem.GalleryGroups.Count - 1 do
      AGalleryItem.GalleryGroups[I].Items.Clear;
  end;

const
  AMathMap: array [0..7] of Integer = ($B1, $2260, $2264, $2265, $F7, $D7, $221E, $2211);
  AGreekMap: array [0..9] of integer = ($03B1, $03B2, $03B3, $03B4, $03B5, $03B6, $03B7, $03B8, $03B9, $03BA);
  ASymbolMap: array [0..2] of Integer = ($A9, $AE, $2122);
  ACurrencyMap: array [0..4] of Integer = ($20AC, $24, $A3, $A5, $20A3);
begin
  AScaleFactor := GetRibbonGalleryScaleFactor(AGalleryItem);
  ABarManager.BeginUpdate;
  try
    ClearGroups;
    PopulateGroup(0, AMathMap);
    PopulateGroup(1, AGreekMap);
    PopulateGroup(2, ASymbolMap);
    PopulateGroup(3, ACurrencyMap);
  finally
    ABarManager.EndUpdate;
  end;
end;

procedure PopulateSymbolGallery(ABarManager: TdxBarManager; AGalleryItem: TdxRibbonGalleryItem);
begin
  dxTasksDispatcher.Run(TdxSymbolImagesTask.Create(GetRibbonGalleryScaleFactor(AGalleryItem),
    'Times New Roman', ABarManager, AGalleryItem));
end;

procedure ShowMessageErrorLoading(const AFileName: string);
begin
  dxMessageDlg(Format('Error at loading from "%s"', [AFileName]), mtError, [mbOK]);
end;

procedure ShowMessageFileNotFound(const AFileName: string);
begin
  dxMessageDlg(Format('File "%s" not found', [AFileName]), mtError, [mbOK]);
end;

{ TdxSymbolImagesTask }

constructor TdxSymbolImagesTask.Create(AScaleFactor: TdxScaleFactor; const AFontName: string;
  ABarManager: TdxBarManager; AGalleryItem: TdxRibbonGalleryItem);
begin
  inherited Create;
  FScaleFactor := TdxScaleFactor.Create;
  FScaleFactor.Assign(GetRibbonGalleryScaleFactor(AGalleryItem));
  FFontName := AFontName;
  FBarManager := ABarManager;
  FGalleryItem := AGalleryItem;
  FFreeNotificator := TcxFreeNotificator.Create(Self);
  FFreeNotificator.OnFreeNotification := OnCancel;
  FFreeNotificator.AddSender(FBarManager);
  FFreeNotificator.AddSender(FGalleryItem);
end;

destructor TdxSymbolImagesTask.Destroy;
begin
  FFreeNotificator.Free;
  FScaleFactor.Free;
  FImageList.Free;
  inherited;
end;

function TdxSymbolImagesTask.CreateSymbolBitmap(AChar: WideChar): TcxAlphaBitmap;
var
  AGlyphSize: Integer;
  R: TRect;
  ACanvas: TCanvas;
begin
  AGlyphSize := FScaleFactor.Apply(32);
  R := Rect(0, 0, AGlyphSize, AGlyphSize);
  Result := TcxAlphaBitmap.CreateSize(R);
  ACanvas := Result.Canvas;
  ACanvas.Lock;
  try
    ACanvas.Brush.Color := $FAFAFA;
    ACanvas.FillRect(R);
    ACanvas.Font.Name := FFontName;
    ACanvas.Font.Color := $5C534C;
    ACanvas.Font.Height := FScaleFactor.Apply(-MulDiv(16, dxDefaultDPI, 72)); 
    DrawTextW(ACanvas.Handle, @AChar, 1, R, DT_CENTER or DT_VCENTER or DT_SINGLELINE);
    Result.TransformBitmap(btmSetOpaque);
  finally
    ACanvas.Unlock;
  end;
end;

procedure TdxSymbolImagesTask.Complete;
begin
  TThread.Synchronize(nil, PopulateGalleryImages);
end;

procedure TdxSymbolImagesTask.Execute;

  function PopulateList(AMap: array of Integer): TObjectList;
  var
    I: Integer;
  begin
    Result := TObjectList.Create;
    for I := Low(AMap) to High(AMap) do
      Result.Add(CreateSymbolBitmap(WideChar(AMap[I])));
  end;

begin
  FImageList := TObjectList.Create;
  FImageList.Add(PopulateList(AMathMap));
  FImageList.Add(PopulateList(AGreekMap));
  FImageList.Add(PopulateList(ASymbolMap));
  FImageList.Add(PopulateList(ACurrencyMap));
end;

procedure TdxSymbolImagesTask.OnCancel(Sender: TComponent);
begin
  FCancel := True;
end;

procedure TdxSymbolImagesTask.PopulateGalleryImages;

  procedure AddItem(AGroup: TdxRibbonGalleryGroup; ACode: Integer; ABitmap: TcxAlphaBitmap);
  var
    AItem: TdxRibbonGalleryGroupItem;
    AFont: string;
  begin
    AItem := AGroup.Items.Add;
    AFont := 'Times New Roman';
    AItem.Caption := AFont + ' #' + IntToStr(ACode);
    AItem.Description := AFont;
    AItem.Tag := ACode;
    AItem.Glyph.Assign(ABitmap);
    AItem.Glyph.SourceDPI := FScaleFactor.TargetDPI;
  end;

  procedure PopulateGroup(AGroupIndex: Integer; AMap: array of Integer);
  var
    I: Integer;
    AImageList: TObjectList;
  begin
    AImageList := TObjectList(FImageList[AGroupIndex]);
    for I := Low(AMap) to High(AMap) do
      AddItem(FGalleryItem.GalleryGroups[AGroupIndex], AMap[I], TcxAlphaBitmap(AImageList[I]));
  end;

  procedure ClearGroups;
  var
    I: Integer;
  begin
    for I := 0 to FGalleryItem.GalleryGroups.Count - 1 do
      FGalleryItem.GalleryGroups[I].Items.Clear;
  end;

begin
  if not FCancel and not FScaleFactor.Equals(GetRibbonGalleryScaleFactor(FGalleryItem)) then
    Exit;

  FBarManager.BeginUpdate;
  try
    ClearGroups;
    PopulateGroup(0, AMathMap);
    PopulateGroup(1, AGreekMap);
    PopulateGroup(2, ASymbolMap);
    PopulateGroup(3, ACurrencyMap);
  finally
    FBarManager.EndUpdate;
  end;
end;

initialization
  dxMailClientDefaultExportPath := '';
end.
