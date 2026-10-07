{********************************************************************}
{                                                                    }
{           Developer Express Visual Component Library               }
{           ExpressReports Library                                   }
{                                                                    }
{           Copyright (c) 1998-2026 Developer Express Inc.           }
{           ALL RIGHTS RESERVED                                      }
{                                                                    }
{   The entire contents of this file is protected by U.S. and        }
{   International Copyright Laws. Unauthorized reproduction,         }
{   reverse-engineering, and distribution of all or any portion of   }
{   the code contained in this file is strictly prohibited and may   }
{   result in severe civil and criminal penalties and will be        }
{   prosecuted to the maximum extent possible under the law.         }
{                                                                    }
{   RESTRICTIONS                                                     }
{                                                                    }
{   THIS SOURCE CODE AND ALL RESULTING INTERMEDIATE FILES            }
{   (DCU, OBJ, DLL, ETC.) ARE CONFIDENTIAL AND PROPRIETARY TRADE     }
{   SECRETS OF DEVELOPER EXPRESS INC. THE REGISTERED DEVELOPER IS    }
{   LICENSED TO DISTRIBUTE THE EXPRESSCORE LIBRARY AND ALL           }
{   ACCOMPANYING VCL CONTROLS AS PART OF AN EXECUTABLE PROGRAM ONLY. }
{                                                                    }
{   THE SOURCE CODE CONTAINED WITHIN THIS FILE AND ALL RELATED       }
{   FILES OR ANY PORTION OF ITS CONTENTS SHALL AT NO TIME BE         }
{   COPIED, TRANSFERRED, SOLD, DISTRIBUTED, OR OTHERWISE MADE        }
{   AVAILABLE TO OTHER INDIVIDUALS WITHOUT EXPRESS WRITTEN CONSENT   }
{   AND PERMISSION FROM DEVELOPER EXPRESS INC.                       }
{                                                                    }
{   CONSULT THE END USER LICENSE AGREEMENT FOR INFORMATION ON        }
{   ADDITIONAL RESTRICTIONS.                                         }
{                                                                    }
{********************************************************************}

unit uMainForm;

{$I cxVer.inc}

interface

uses
  System.Classes, System.SysUtils, System.IOUtils, System.Win.Registry, System.Threading, System.Actions,
  System.Generics.Collections,
  Vcl.ActnList, System.ImageList, Vcl.ImgList, Vcl.ExtCtrls,
  Vcl.Controls, Vcl.StdCtrls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Edge,
  Winapi.Windows, Winapi.Messages, Winapi.ShellAPI,
  cxButtons, dxLayoutContainer, dxLayoutControl, dxForms, dxPDFViewer,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxX509Certificate, dxPanel, cxImage, dxGDIPlusClasses,
  dxPDFCore, dxPDFBase, dxPDFText, dxPDFRecognizedObject, dxPDFForm, dxPDFFormData, dxPDFDocument, dxPrintUtils,
  dxBarBuiltInMenu, dxLayoutControlAdapters, cxClasses, dxCustomPreview, dxPDFDocumentViewer, dxLayoutLookAndFeels,
  dxNavBarCollns, dxNavBarBase, dxNavBar, dxLayoutcxEditAdapters, cxContainer, cxEdit, cxGeometry, dxFramedControl,
  uDemoDataModule, dxDemoBaseMainForm, dxRibbonCustomizationForm, dxCore, dxRibbonSkins, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxScreenTip, dxShellDialogs, dxCustomHint, cxHint,
  cxImageList, dxBar, dxBarApplicationMenu, dxRibbon, dxSkinsForm,
  dxPgsDlg, dxPSCore, dxBarExtItems, cxTextEdit, dxNavBarStyles, dxGalleryControl,
  dxRibbonBackstageViewGalleryControl, dxBevel, cxLabel, cxGroupBox, dxRibbonBackstageView, dxPScxSchedulerLnk,
  dxReport, dxReport.Viewer, dxReport.Designer, dxBackend.Utils.WebBrowserForm, dxBackend.BrowserForm, dxBackend.Utils.EdgeBrowserAdapter,
  dxBackend, dxBackend.Embedded, dxBackend.Bundled,
  dxDemoUtils, dxMessageDialog, dxExportProgressDialog, dxReport.Control;

type
  TReportInfo = class;

  { TMainForm }

  TMainForm = class(TfrmMainBase)
    lgMainGroup_Root: TdxLayoutGroup;
    lcMain: TdxLayoutControl;
    nbiReportX: TdxNavBarItem;
    nbgReports: TdxNavBarGroup;
    dxReportControl: TdxReportControl;
    liReportHolder: TdxLayoutItem;
    dxLayoutLookAndFeelList: TdxLayoutLookAndFeelList;
    dxLayoutCxLookAndFeel: TdxLayoutCxLookAndFeel;
    liDescription: TdxLayoutLabeledItem;
    biDesigner: TdxBarLargeButton;
    repSubReport: TdxReport;
    procedure actPrintPreviewExecute(Sender: TObject);
    procedure biDesignerClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dxFormShortCut(var Msg: TWMKey; var Handled: Boolean);
  private
    FReportInfos: TcxObjectList;
    FCurrentReportBarItemLink: TdxNavBarItemLink;
    FReportCaption: string;
  protected
    procedure ActivateDemo(AID: Integer); override;
    procedure CustomizeSetupRibbonGroups; override;
    procedure DoExport(AExportType: TSupportedExportType; ADataOnly: Boolean); override;
    procedure DoExportToFile(AExportType: TSupportedExportType; ADataOnly: Boolean; const AFileName: string; AHandler: TObject); override;
    function IsExportOptionsAvailable: Boolean; override;
    function GetExportFileName: string; override;
    procedure GetSupportedExportTypes(AList: TList<TSupportedExportType>); override;
    procedure InitNavBar; override;
    function IsPrintOptionsAvailable: Boolean; override;
  end;

  { TReportInfo }

  TReportInfo = class
  private
    FGroupCaption: string;
    FReportCaption: string;
    FFileName: string;
    FDescription: string;
    FOrder: Integer;
    FSubreportFileName: string;
  public
    constructor Create(const AGroupCaption, AReportCaption, ADescription, AFileName, ASubreportFileName: string; AOrder: Integer);

    property GroupCaption: string read FGroupCaption;
    property ReportCaption: string read FReportCaption;
    property Description: string read FDescription;
    property FileName: string read FFileName;
    property SubreportFileName: string read FSubreportFileName;

    property Order: Integer read FOrder;
  end;

var
  MainForm: TMainForm;

type
  TdxReportSupportedExportFormat = (Unsupported, CSV, DOCX, HTML, Image, MHT, PDF, RTF, Text, XLS, XLSX);

const
  SupportedExportFormats: array [TSupportedExportType] of TdxReportSupportedExportFormat = (
    TdxReportSupportedExportFormat.HTML,        
    TdxReportSupportedExportFormat.Unsupported, 
    TdxReportSupportedExportFormat.XLS,         
    TdxReportSupportedExportFormat.XLSX,        
    TdxReportSupportedExportFormat.PDF,         
    TdxReportSupportedExportFormat.Text,        
    TdxReportSupportedExportFormat.Unsupported, 
    TdxReportSupportedExportFormat.DOCX,        
    TdxReportSupportedExportFormat.RTF,         
    TdxReportSupportedExportFormat.Unsupported, 
    TdxReportSupportedExportFormat.Image,       
    TdxReportSupportedExportFormat.Unsupported  
  ); 

implementation

{$R *.dfm}

{ TMainForm }

procedure TMainForm.FormCreate(Sender: TObject);
begin
  inherited FormCreate(Sender);


  FreeAndNil(barOptions);
  FreeAndNil(biPrint);
  FreeAndNil(biPageSetup);
  FreeAndNil(BLightStyle);

  FreeAndNil(bsiScrollbarMode);

  FreeAndNil(bvtPrint);


  InitSitePagesURLs;
  SitePageURLs[spFeatures] := 'https://www.devexpress.com/go/DevExpress_GettingStarted_ExpressReports.aspx';
end;

procedure TMainForm.CustomizeSetupRibbonGroups;
begin
  biCustomProperties.Visible := ivNever;
end;

procedure TMainForm.InitNavBar;
var
  AIniFile: TdxMemIniFile;
  AFolderPath: string;
  AGroupCaption: string;
  AFullFileName: string;
  AFullSubreportFileName: string;
  AFileName: string;
  AReportInfo: TReportInfo;
  AFirstReportBarItemLink: TdxNavBarItemLink;
  AGroup: TdxNavBarGroup;
  AObject: TObject;
  AItem: TdxNavBarItem;
  ALink: TdxNavBarItemLink;
begin
  FReportInfos := TcxObjectList.Create;

  try
    AIniFile := TdxMemIniFile.Create(TPath.GetAppPath + '\Layouts\info.dat'); // Do not localize
    try
      for AFolderPath in TDirectory.GetDirectoriesEnumerator(TPath.GetAppPath + '\Layouts') do // Do not localize
        begin
          AGroupCaption := ExtractFileExt(AFolderPath).Substring(1);
          for AFullFileName in TDirectory.GetFilesEnumerator(AFolderPath) do
          begin
            AFileName := ChangeFileExt(ExtractFileName(AFullFileName), '');
            if AIniFile.SectionExists(AFileName) then
            begin
              if AIniFile.ReadBool(AFileName, 'Hide', False) then // Do not localize
                Continue;
              AFullSubreportFileName := AIniFile.ReadString(AFileName, 'SubReportFileName', ''); // Do not localize
              if AFullSubreportFileName <> '' then
                AFullSubreportFileName := TPath.Combine(AFolderPath, AFullSubreportFileName);

              AReportInfo := TReportInfo.Create(
                AIniFile.ReadString(AFileName, 'Group', AGroupCaption),
                AIniFile.ReadString(AFileName, 'Caption', AFileName), // Do not localize
                AIniFile.ReadString(AFileName, 'Description', '').Replace('\n', sLineBreak), // Do not localize
                AFullFileName,
                AFullSubreportFileName,
                AIniFile.ReadInteger(AFileName, 'Order', FReportInfos.Count) // Do not localize
              );
              FReportInfos.Add(AReportInfo);
            end
            else
            begin
              AIniFile.WriteString(AFileName, 'Group', AGroupCaption); // Do not localize
              AIniFile.WriteString(AFileName, 'Caption', AFileName); // Do not localize
              AIniFile.WriteBool(AFileName, 'Hide', False); // Do not localize
              AIniFile.WriteString(AFileName, 'Description', '[B]dx[/B]Formatted[URL=http://x.com]Label[/URL]1\nline 2'); // Do not localize
              AIniFile.WriteInteger(AFileName, 'Order', FReportInfos.Count); // Do not localize
            end;
          end;
        end;
    finally
      if AIniFile.Modified then
        AIniFile.UpdateFile;
      AIniFile.Free;
    end;

    FReportInfos.SortList(
      function (AItem1, AItem2: Pointer): Integer
      begin
        Result := TReportInfo(AItem1).Order - TReportInfo(AItem2).Order;
      end
    );

    AFirstReportBarItemLink := nil;
    AGroup := nil;
    for AObject in FReportInfos do
    begin
      AReportInfo := TReportInfo(AObject);
      if (AGroup = nil) or (AGroup.Caption <> AReportInfo.GroupCaption) then
      begin
        AGroup := NavBar.Groups.Insert(nbgReports.Index) as TdxNavBarGroup;
        AGroup.Caption := AReportInfo.GroupCaption;
        AGroup.CustomStyles.Header := nbsGroupStyle;
        AGroup.CustomStyles.HeaderActive := nbsGroupStyle;
        AGroup.CustomStyles.HeaderActiveHotTracked := nbsGroupStyle;
        AGroup.CustomStyles.HeaderActivePressed := nbsGroupStyle;
        AGroup.CustomStyles.HeaderHotTracked := nbsGroupStyle;
        AGroup.CustomStyles.HeaderPressed := nbsGroupStyle;
      end;

      AItem := NavBar.Items.Add;
      AItem.Caption := AReportInfo.ReportCaption;
      AItem.Tag := NativeInt(AReportInfo);
      AItem.CustomStyles.Item := nbsItemStyle;
      AItem.CustomStyles.ItemDisabled := nbsItemStyle;
      AItem.CustomStyles.ItemHotTracked := nbsItemStyle;
      AItem.CustomStyles.ItemPressed := nbsItemStyle;
      ALink := AGroup.CreateLink(AItem);
      if AFirstReportBarItemLink = nil then
        AFirstReportBarItemLink := ALink;
    end;

    nbgReports.Free;
    nbiReportX.Free;

    inherited InitNavBar;

    if AFirstReportBarItemLink <> nil then
      NavBarLinkClick(nil, AFirstReportBarItemLink);
  except
    on E: Exception do
    begin
      dxMessageDlg(E.Message, TMsgDlgType.mtInformation, [mbOK]);
      Application.Terminate;
      Abort;
    end;
  end;
end;

procedure TMainForm.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(FReportInfos);
end;

procedure TMainForm.ActivateDemo(AID: Integer);
var
  AInfo: TReportInfo;
begin
  if FActiveFrameLink = FCurrentReportBarItemLink then
    Exit;

  FCurrentReportBarItemLink := FActiveFrameLink;
  FCurrentReportBarItemLink.Selected := True;
  AInfo := TReportInfo(Pointer(AID));

  liDescription.CaptionOptions.Text := AInfo.Description;
  FReportCaption := AInfo.ReportCaption;
  Caption := GetMainFormCaption + ' - ' + FReportCaption;
  if AInfo.SubReportFileName <>'' then
    repSubReport.Layout.LoadFromFile(AInfo.SubReportFileName)
  else
    repSubReport.Layout.Clear;
  dxReportControl.Report.Layout.LoadFromFile(AInfo.FileName);

  dxReportControl.ReportWebBrowserHandlers.Zoom := 1;
  dxReportControl.Active := True;
  UpdateBaseMenuOptions;
end;

procedure TMainForm.actPrintPreviewExecute(Sender: TObject);
begin
  dxReportControl.Report.ShowViewer;
end;

procedure TMainForm.biDesignerClick(Sender: TObject);
begin
  dxReportControl.Report.ShowDesigner;
end;

procedure TMainForm.DoExport(AExportType: TSupportedExportType; ADataOnly: Boolean);
var
  AFileName: string;
  AProgressDialog: TfrmExportProgress;
begin
  SaveDialog.FileName := GetExportFileName + SupportedExportExtensions[AExportType];
  SaveDialog.Filter := SupportedExportSaveDialogFilters[AExportType];
  if SaveDialog.Execute then
  begin
    AFileName := SaveDialog.FileName;
    AProgressDialog := TfrmExportProgress.Create(Self);
    try
      AProgressDialog.Show;
      DoExportToFile(AExportType, ADataOnly, AFileName, AProgressDialog);
    finally
      AProgressDialog.Free;
    end;
    if dxMessageDlg(Format('Open file %s?', [AFileName]), mtConfirmation, mbYesNo) = mrYes then
      ShellExecute(Handle, PChar('OPEN'), PChar(AFileName), nil, nil, SW_SHOWMAXIMIZED);
  end;
end;

procedure TMainForm.GetSupportedExportTypes(AList: TList<TSupportedExportType>);
var
  AType: TSupportedExportType;
begin
  for AType in [Low(TSupportedExportType)..High(TSupportedExportType)] do
    if SupportedExportFormats[AType] <> TdxReportSupportedExportFormat.Unsupported then
      AList.Add(AType);
end;

function TMainForm.IsExportOptionsAvailable: Boolean;
begin
  Result := dxReportControl.Active;
end;

function TMainForm.IsPrintOptionsAvailable: Boolean;
begin
  Result := dxReportControl.Active;
end;

function TMainForm.GetExportFileName: string;
begin
  Result := FReportCaption;
end;

procedure TMainForm.DoExportToFile(AExportType: TSupportedExportType; ADataOnly: Boolean; const AFileName: string; AHandler: TObject);
var
  AStream: TFileStream;
begin
  AStream := TFileStream.Create(AFileName, fmCreate);
  try
    dxReportControl.Report.ExportTo(
      TdxReportExportFormat(Pred(
        SupportedExportFormats[AExportType]
      )), AStream);
  finally
    AStream.Free;
  end;
end;

procedure TMainForm.dxFormShortCut(var Msg: TWMKey; var Handled: Boolean);
const
  CtrlR = Ord('R') + scCtrl;
  CtrlP = Ord('P') + scCtrl;
  CtrlShiftP = Ord('P') + scCtrl + scShift;
  F5 = $6F + 5;
var
  AShortCut: TShortCut;
begin
  AShortCut := ShortCutFromMessage(Msg);
  Handled := (AShortCut = CtrlR) or (AShortCut = CtrlP) or (AShortCut = CtrlShiftP) or (AShortCut = F5);
end;

{ TReportInfo }

constructor TReportInfo.Create(const AGroupCaption, AReportCaption, ADescription, AFileName, ASubreportFileName: string; AOrder: Integer);
begin
  inherited Create;
  FGroupCaption := AGroupCaption;
  FReportCaption := AReportCaption;
  FDescription := ADescription;
  FFileName := AFileName;
  FSubreportFileName := ASubreportFileName;
  FOrder := AOrder;
end;

initialization
  dxMegaDemoProductIndex := dxReportsIndex;
end.
