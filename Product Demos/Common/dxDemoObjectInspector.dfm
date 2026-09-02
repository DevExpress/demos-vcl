object frmInspector: TfrmInspector
  Left = 680
  Top = 293
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSizeToolWin
  Caption = 'Property Inspector'
  ClientHeight = 405
  ClientWidth = 332
  Color = clBtnFace
  Constraints.MinWidth = 270
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 12
  object dxFormattedLabel1: TdxFormattedLabel
    AlignWithMargins = True
    Left = 3
    Top = 350
    Align = alBottom
    Caption = 
      'Note: This dialog window was created using the %s. It is not inc' +
      'luded as part of the %s and must be purchased separately. The %s' +
      ' is available in data-aware, non-data aware and RTTI versions. Y' +
      'ou can learn more at: [URL=http://www.devexpress.com/Products/VC' +
      'L/ExVerticalGrid/]http://www.devexpress.com/Products/VCL/ExVerti' +
      'calGrid/[/URL]'
    Properties.WordWrap = True
    Transparent = True
    Width = 326
  end
end
