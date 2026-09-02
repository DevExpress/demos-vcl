{********************************************************************}
{                                                                    }
{           Developer Express Visual Component Library               }
{           ExpressDashboards Library                                }
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
  dxBackend.BrowserForm, dxBackend.Utils.WebBrowserForm, dxBackend.Utils.EdgeBrowserAdapter,
  dxBackend, dxBackend.Embedded, dxBackend.Bundled,
  dxDemoUtils, dxMessageDialog, dxExportProgressDialog, dxDashboard.Viewer,
  dxDashboard.Control;

type
  TDashboardInfo = class;

  { TMainForm }

  TMainForm = class(TfrmMainBase)
    lgMainGroup_Root: TdxLayoutGroup;
    lcMain: TdxLayoutControl;
    nbiDashboardX: TdxNavBarItem;
    nbgDashboards: TdxNavBarGroup;
    pnlDashboardHolder: TdxPanel;
    liDashboardHolder: TdxLayoutItem;
    dxLayoutLookAndFeelList: TdxLayoutLookAndFeelList;
    dxLayoutCxLookAndFeel: TdxLayoutCxLookAndFeel;
    liDescription: TdxLayoutLabeledItem;
    biDesigner: TdxBarLargeButton;
    dxDashboardControl1: TdxDashboardControl;
    procedure actPrintPreviewExecute(Sender: TObject);
    procedure biDesignerClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dxFormShortCut(var Msg: TWMKey; var Handled: Boolean);
  private
    FDashboardInfos: TcxObjectList;
    FCurrentDashboardBarItemLink: TdxNavBarItemLink;
    FDashboardCaption: string;
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
    function IsApplicationButtonAvailable: Boolean; override;
  end;

  { TDashboardInfo }

  TDashboardInfo = class
  private
    FGroupCaption: string;
    FDashboardCaption: string;
    FFileName: string;
    FDescription: string;
    FOrder: Integer;
  public
    constructor Create(const AGroupCaption, ADashboardCaption, AFileName, ADescription: string; AOrder: Integer);

    property GroupCaption: string read FGroupCaption;
    property DashboardCaption: string read FDashboardCaption;
    property Description: string read FDescription;
    property FileName: string read FFileName;
    property Order: Integer read FOrder;
  end;

var
  MainForm: TMainForm;

type
  TdxDashboardSupportedExportFormat = (Unsupported, PDF, XLS, XLSX, CSV, PNG, JPG, GIF, SVG);

const
  // TdxDashboardExportFormat = (PDF, XLS, XLSX, CSV, PNG, JPG, GIF, SVG);
  SupportedExportFormats: array [TSupportedExportType] of TdxDashboardSupportedExportFormat = (
    TdxDashboardSupportedExportFormat.Unsupported, 
    TdxDashboardSupportedExportFormat.Unsupported, 
    TdxDashboardSupportedExportFormat.XLS,         
    TdxDashboardSupportedExportFormat.XLSX,        
    TdxDashboardSupportedExportFormat.PDF,         
    TdxDashboardSupportedExportFormat.Unsupported, 
    TdxDashboardSupportedExportFormat.Unsupported, 
    TdxDashboardSupportedExportFormat.Unsupported, 
    TdxDashboardSupportedExportFormat.Unsupported, 
    TdxDashboardSupportedExportFormat.SVG,         
    TdxDashboardSupportedExportFormat.PNG,         
    TdxDashboardSupportedExportFormat.Unsupported  
  );

implementation

{$R *.dfm}

{ TMainForm }

procedure TMainForm.FormCreate(Sender: TObject);
begin
  inherited FormCreate(Sender);

  InitSitePagesURLs;

  SitePageURLs[spFeatures] := 'https://www.devexpress.com/go/DevExpress_GettingStarted_ExpressDashboards.aspx'; 
  UpdateBaseMenuOptions;
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
  ADescription: string;
  AFileName: string;
  ADashboardInfo: TDashboardInfo;
  AFirstDashboardBarItemLink: TdxNavBarItemLink;
  AGroup: TdxNavBarGroup;
  AObject: TObject;
  AItem: TdxNavBarItem;
  ALink: TdxNavBarItemLink;
begin
  FDashboardInfos := TcxObjectList.Create;

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

            ADescription := AIniFile.ReadString(AFileName, 'Description', ''); // Do not localize
            ADescription := StringReplace(ADescription, '\n', sLineBreak, [rfReplaceAll]); // Do not localize

            ADashboardInfo := TDashboardInfo.Create(
              AIniFile.ReadString(AFileName, 'Group', AGroupCaption), // Do not localize
              AIniFile.ReadString(AFileName, 'Caption', AFileName),  // Do not localize
              AFullFileName,
              ADescription,
              AIniFile.ReadInteger(AFileName, 'Order', FDashboardInfos.Count) // Do not localize
            );
            FDashboardInfos.Add(ADashboardInfo);
          end;
        end;
      end;
    finally
      AIniFile.Free;
    end;

    FDashboardInfos.SortList(
      function (AItem1, AItem2: Pointer): Integer
      begin
        Result := TDashboardInfo(AItem1).Order - TDashboardInfo(AItem2).Order;
      end
    );

    AFirstDashboardBarItemLink := nil;
    AGroup := nil;
    for AObject in FDashboardInfos do
    begin
      ADashboardInfo := TDashboardInfo(AObject);
      if (AGroup = nil) or (AGroup.Caption <> ADashboardInfo.GroupCaption) then
      begin
        AGroup := NavBar.Groups.Insert(nbgDashboards.Index) as TdxNavBarGroup;
        AGroup.Caption := ADashboardInfo.GroupCaption;
        AGroup.CustomStyles.Header := nbsGroupStyle;
        AGroup.CustomStyles.HeaderActive := nbsGroupStyle;
        AGroup.CustomStyles.HeaderActiveHotTracked := nbsGroupStyle;
        AGroup.CustomStyles.HeaderActivePressed := nbsGroupStyle;
        AGroup.CustomStyles.HeaderHotTracked := nbsGroupStyle;
        AGroup.CustomStyles.HeaderPressed := nbsGroupStyle;
      end;

      AItem := NavBar.Items.Add;
      AItem.Caption := ADashboardInfo.DashboardCaption;
      AItem.Tag := NativeInt(ADashboardInfo);
      AItem.CustomStyles.Item := nbsItemStyle;
      AItem.CustomStyles.ItemDisabled := nbsItemStyle;
      AItem.CustomStyles.ItemHotTracked := nbsItemStyle;
      AItem.CustomStyles.ItemPressed := nbsItemStyle;
      ALink := AGroup.CreateLink(AItem);
      if AFirstDashboardBarItemLink = nil then
        AFirstDashboardBarItemLink := ALink;
    end;

    nbgDashboards.Free;
    nbiDashboardX.Free;

    inherited InitNavBar;

    if AFirstDashboardBarItemLink <> nil then
      NavBarLinkClick(nil, AFirstDashboardBarItemLink);
  except
    on E: Exception do
    begin
      dxMessageDlg(E.Message, TMsgDlgType.mtInformation, [mbOK]);
      Application.Terminate;
      Abort;
    end;
  end;
end;

function TMainForm.IsApplicationButtonAvailable: Boolean;
begin
  Result := False;
end;

procedure TMainForm.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(FDashboardInfos);
end;

procedure TMainForm.ActivateDemo(AID: Integer);
var
  AInfo: TDashboardInfo;
begin
  if FActiveFrameLink = FCurrentDashboardBarItemLink then
    Exit;

  FCurrentDashboardBarItemLink := FActiveFrameLink;
  FCurrentDashboardBarItemLink.Selected := True;
  AInfo := TDashboardInfo(Pointer(AID));

  liDescription.CaptionOptions.Text := AInfo.Description;
  FDashboardCaption := AInfo.DashboardCaption;
  Caption := GetMainFormCaption + ' - ' + FDashboardCaption;

  dxDashboardControl1.Layout.BeginUpdate;
  try
    dxDashboardControl1.DashboardName := FDashboardCaption;
    dxDashboardControl1.Layout.LoadFromFile(AInfo.FileName);
  finally
    dxDashboardControl1.Layout.EndUpdate;
  end;
end;

procedure TMainForm.actPrintPreviewExecute(Sender: TObject);
begin
  dxDashboardControl1.ShowViewer;
end;

procedure TMainForm.biDesignerClick(Sender: TObject);
begin
  dxDashboardControl1.ShowDesigner;
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
      ShellExecute(Handle, PChar('OPEN'), PChar(AFileName), nil, nil, SW_SHOWMAXIMIZED); // Do not localize
  end;
end;

procedure TMainForm.GetSupportedExportTypes(AList: TList<TSupportedExportType>);
var
  AType: TSupportedExportType;
begin
  for AType in [Low(TSupportedExportType)..High(TSupportedExportType)] do
    if SupportedExportFormats[AType] <> TdxDashboardSupportedExportFormat.Unsupported then
      AList.Add(AType);
end;

function TMainForm.IsExportOptionsAvailable: Boolean;
begin
  Result := True;
end;

function TMainForm.IsPrintOptionsAvailable: Boolean;
begin
  Result := False;
end;

function TMainForm.GetExportFileName: string;
begin
  Result := FDashboardCaption;
end;

procedure TMainForm.DoExportToFile(AExportType: TSupportedExportType; ADataOnly: Boolean; const AFileName: string; AHandler: TObject);
var
  AStream: TFileStream;
begin
  AStream := TFileStream.Create(AFileName, fmCreate);
  try
    dxDashboardControl1.ExportTo(
      TdxDashboardExportFormat(Pred(
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

{ TDashboardInfo }

constructor TDashboardInfo.Create(const AGroupCaption, ADashboardCaption, AFileName, ADescription: string; AOrder: Integer);
begin
  inherited Create;
  FGroupCaption := AGroupCaption;
  FDashboardCaption := ADashboardCaption;
  FFileName := AFileName;
  FDescription := ADescription;
  FOrder := AOrder;
end;

initialization
  dxMegaDemoProductIndex := dxDashboardsIndex;
end.
