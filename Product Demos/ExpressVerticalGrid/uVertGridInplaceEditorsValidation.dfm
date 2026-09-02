inherited frmVertGridInplaceEditorsValidation: TfrmVertGridInplaceEditorsValidation
  Width = 814
  Height = 507
  inherited lcFrame: TdxLayoutControl
    Width = 814
    Height = 507
    object VerticalGrid: TcxDBVerticalGrid [0]
      Left = 10
      Top = 10
      Width = 580
      Height = 449
      LayoutStyle = lsMultiRecordView
      OptionsView.RowHeaderWidth = 144
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      TabOrder = 0
      DataController.DataSource = DataSource
      Version = 1
      object VerticalGridFirstName: TcxDBEditorRow
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.EditProperties.OnValidate = VerticalGridFirstNameEditPropertiesValidate
        Properties.DataBinding.FieldName = 'FirstName'
        Properties.OnValidateDrawValue = VerticalGridFirstNamePropertiesValidateDrawValue
        ID = 0
        ParentID = -1
        Index = 0
        Version = 1
      end
      object VerticalGridLastName: TcxDBEditorRow
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.EditProperties.OnValidate = VerticalGridLastNameEditPropertiesValidate
        Properties.DataBinding.FieldName = 'LastName'
        Properties.OnValidateDrawValue = VerticalGridLastNamePropertiesValidateDrawValue
        ID = 1
        ParentID = -1
        Index = 1
        Version = 1
      end
      object VerticalGridAddress: TcxDBEditorRow
        Properties.EditPropertiesClassName = 'TcxComboBoxProperties'
        Properties.EditProperties.DropDownListStyle = lsFixedList
        Properties.EditProperties.Items.Strings = (
          '123 Home Lane, Homesville'
          '436 1st Ave, Cleveland'
          '349 Graphic Design L, Newman'
          '3920 Michelson Dr., Bridgeford')
        Properties.EditProperties.OnValidate = VerticalGridAddressEditPropertiesValidate
        Properties.DataBinding.FieldName = 'Address'
        Properties.OnValidateDrawValue = VerticalGridAddressPropertiesValidateDrawValue
        ID = 2
        ParentID = -1
        Index = 2
        Version = 1
      end
      object VerticalGridPhoneNumber: TcxDBEditorRow
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.EditProperties.OnValidate = VerticalGridPhoneNumberEditPropertiesValidate
        Properties.DataBinding.FieldName = 'PhoneNumber'
        Properties.OnValidateDrawValue = VerticalGridPhoneNumberPropertiesValidateDrawValue
        ID = 3
        ParentID = -1
        Index = 3
        Version = 1
      end
      object VerticalGridEmail: TcxDBEditorRow
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.EditProperties.OnValidate = VerticalGridEmailEditPropertiesValidate
        Properties.DataBinding.FieldName = 'Email'
        Properties.OnValidateDrawValue = VerticalGridEmailPropertiesValidateDrawValue
        ID = 4
        ParentID = -1
        Index = 4
        Version = 1
      end
    end
    inherited lgContent: TdxLayoutGroup
      CaptionOptions.Visible = False
    end
    inherited lgSetupTools: TdxLayoutGroup
      CaptionOptions.Text = 'Validation Options'
      Visible = True
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = lgContent
      AlignHorz = ahClient
      AlignVert = avClient
      Control = VerticalGrid
      ControlOptions.OriginalHeight = 568
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object cbValidationRaiseException: TdxLayoutCheckBoxItem
      Parent = lgSetupTools
      SizeOptions.Height = 21
      SizeOptions.Width = 176
      Action = acValidationRaiseException
      Index = 0
    end
    object cbValidationShowErrorIcons: TdxLayoutCheckBoxItem
      Parent = lgSetupTools
      SizeOptions.Height = 21
      SizeOptions.Width = 176
      Action = acValidationShowErrorIcons
      Index = 1
    end
    object cbValidationAllowLoseFocus: TdxLayoutCheckBoxItem
      Parent = lgSetupTools
      SizeOptions.Height = 21
      SizeOptions.Width = 176
      Action = acValidationAllowLoseFocus
      Index = 2
    end
  end
  inherited dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    inherited dxLayoutBoldItemCaption: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
  object dxScreenTipRepository: TdxScreenTipRepository
    AssignedFonts = [stbHeader]
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = 5000268
    HeaderFont.Height = -12
    HeaderFont.Name = 'Segoe UI Semibold'
    HeaderFont.Style = [fsBold]
    Left = 168
    Top = 272
    PixelsPerInch = 96
    object stGrid: TdxScreenTip
      Description.GlyphFixedWidth = False
      UseHintAsHeader = True
      Width = 1
    end
  end
  object cxHintStyleController: TcxHintStyleController
    HintStyleClassName = 'TdxScreenTipStyle'
    HintStyle.ScreenTipLinks = <
      item
        ScreenTip = stGrid
      end>
    HintStyle.ScreenTipActionLinks = <>
    HintHidePause = 10000
    OnShowHintEx = cxHintStyleControllerShowHintEx
    Left = 168
    Top = 216
  end
  object icCustomIconList: TcxImageCollection
    Left = 88
    Top = 248
    object icCustomIcon1: TcxImageCollectionItem
      Picture.Data = {
        0D546478536D617274496D6167653C3F786D6C2076657273696F6E3D22312E30
        2220656E636F64696E673D227574662D38223F3E0D0A3C737667207665727369
        6F6E3D22312E31222069643D225F7833335F5F53796D626F6C735F436972636C
        65642220783D223070782220793D22307078222076696577426F783D22302030
        2031362031362220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
        2F323030302F737667223E0D0A20203C7374796C6520747970653D2274657874
        2F637373223E0D0A092E59656C6C6F777B66696C6C3A234646423131353B7D0D
        0A3C2F7374796C653E0D0A20203C7061746820636C6173733D2259656C6C6F77
        2220643D224D20382E30313220312E303132204320342E31313220312E303132
        20312E30313220342E31313220312E30313220382E303132204320312E303132
        2031312E39313220342E3131322031352E30313220382E3031322031352E3031
        3220432031312E3931322031352E3031322031352E3031322031312E39313220
        31352E30313220382E30313220432031352E30313220342E3131322031312E39
        313220312E30313220382E30313220312E303132205A204D20392E3031322031
        332E303132204C20372E3031322031332E303132204C20372E3031322031312E
        303132204C20392E3031322031312E303132204C20392E3031322031332E3031
        32205A204D20392E30313220392E303132204C20372E30313220392E30313220
        4C20372E30313220332E303132204C20392E30313220332E303132204C20392E
        30313220392E303132205A222F3E0D0A3C2F7376673E}
    end
  end
  object dxMemData1: TdxMemData
    Active = True
    Indexes = <>
    Persistent.Data = {
      5665728FC2F5285C8FFE3F050000001400000001000A0046697273744E616D65
      0014000000010009004C6173744E616D65002800000001000800416464726573
      73001400000001000C0050686F6E654E756D626572001400000001000600456D
      61696C0001040000004A6F686E00011900000031323320486F6D65204C616E65
      2C20486F6D657376696C6C650000010500000048656E72790001160000003433
      3620317374204176652C20436C6576656C616E64010E00000028383030292032
      34342D31303639010F000000696E666F40686F74626F782E636F6D0105000000
      4672616E6B0106000000486F6C6D6573011C0000003334392047726170686963
      2044657369676E204C2C204E65776D616E000001070000004C65746963696101
      04000000466F72640100000000010E0000002835353529203737362D31353636
      010B000000666F726440686F74626F7801050000004B6172656E010600000048
      6F6C6D65730100000000010E0000002835353529203334322D32353734000105
      000000526F67657201090000004D696368656C736F6E011E0000003339323020
      4D696368656C736F6E2044722E2C20427269646765666F7264010E0000002835
      353529203935342D353138380111000000726F6765726D406D796D61696C2E62
      6F78}
    SortOptions = []
    Left = 56
    Top = 24
    object dxMemData1FirstName: TStringField
      FieldName = 'FirstName'
    end
    object dxMemData1LastName: TStringField
      FieldName = 'LastName'
    end
    object dxMemData1Address: TStringField
      FieldName = 'Address'
      Size = 40
    end
    object dxMemData1PhoneNumber: TStringField
      FieldName = 'PhoneNumber'
    end
    object dxMemData1Email: TStringField
      FieldName = 'Email'
    end
  end
  object DataSource: TDataSource
    DataSet = dxMemData1
    Left = 56
    Top = 80
  end
  object ActionList1: TActionList
    Left = 400
    Top = 8
    object acValidationRaiseException: TAction
      AutoCheck = True
      Caption = 'Raise Exception'
      OnExecute = InitializeEditors
    end
    object acValidationShowErrorIcons: TAction
      AutoCheck = True
      Caption = 'Show Error Icons'
      Checked = True
      OnExecute = InitializeEditors
    end
    object acValidationAllowLoseFocus: TAction
      AutoCheck = True
      Caption = 'Allow Lose Focus'
      Checked = True
      OnExecute = InitializeEditors
    end
  end
end
