object frmDrillDown: TfrmDrillDown
  Left = 278
  Top = 278
  ActiveControl = cxGrid1
  Caption = 'Drill Down Form'
  ClientHeight = 407
  ClientWidth = 644
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 349
    Width = 644
    Height = 58
    Align = alBottom
    TabOrder = 0
    object lblURL: TLabel
      Left = 3
      Top = 31
      Width = 286
      Height = 13
      Cursor = crHandPoint
      Caption = 'http://www.devexpress.com/Products/VCL/ExQuantumGrid'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsUnderline]
      ParentFont = False
      Transparent = True
      OnClick = lblURLClick
    end
    object cxLabel1: TcxLabel
      Left = 1
      Top = 1
      Align = alTop
      Caption = 
        'The ExpressQuantumGrid Suite allows you to view drill down data ' +
        'source and can be purchased separately via our website. You can ' +
        'learn more at:'
      Properties.WordWrap = True
      Transparent = True
      Width = 642
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 644
    Height = 349
    Align = alClient
    TabOrder = 1
    object TableView: TcxGridTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = TableView
    end
  end
end
