inherited frmFixedBands: TfrmFixedBands
  Caption = 'Multiple Fixed Bands'
  TextHeight = 13
  inherited lcMain: TdxLayoutControl
    inherited tlDB: TcxDBTreeList
      Bands = <
        item
          Caption.Text = 'Task'
        end
        item
          Caption.Text = 'Info'
          Position.BandIndex = 0
          Position.ColIndex = 0
          Width = 192
        end
        item
          Caption.Text = 'Period'
          Position.BandIndex = 0
          Position.ColIndex = 1
        end
        item
          Caption.Text = 'Process'
          Position.BandIndex = 0
          Position.ColIndex = 3
        end
        item
          Caption.Text = 'Cost & Revenue'
          Position.BandIndex = 0
          Position.ColIndex = 2
        end
        item
          Caption.Text = 'User'
        end
        item
          Caption.Text = 'Name'
          Position.BandIndex = 5
          Position.ColIndex = 0
        end
        item
          Caption.Text = 'Location'
          Position.BandIndex = 5
          Position.ColIndex = 1
        end
        item
          Caption.Text = 'Contacts'
          Position.BandIndex = 5
          Position.ColIndex = 2
        end>
      inherited clnPriority: TcxDBTreeListColumn
        Width = 82
        Position.ColIndex = 0
        Position.RowIndex = 1
      end
      inherited clnEndDate: TcxDBTreeListColumn
        Position.ColIndex = 0
        Position.RowIndex = 1
      end
      inherited clnDone: TcxDBTreeListColumn
        Width = 100
      end
      inherited clnComplete: TcxDBTreeListColumn
        Position.ColIndex = 0
        Position.RowIndex = 1
      end
      inherited clnTotalRevenues: TcxDBTreeListColumn
        Position.ColIndex = 0
        Position.RowIndex = 1
      end
      inherited clnFirstName: TcxDBTreeListColumn
        Width = 127
        Position.LineCount = 2
      end
      inherited clnMiddleName: TcxDBTreeListColumn
        Width = 125
        Position.LineCount = 2
      end
      inherited clnLastName: TcxDBTreeListColumn
        Width = 142
        Position.LineCount = 2
      end
      inherited clnCountry: TcxDBTreeListColumn
        Width = 62
        Position.LineCount = 2
      end
      inherited clnPostalCode: TcxDBTreeListColumn
        Position.LineCount = 2
      end
      inherited clnCity: TcxDBTreeListColumn
        Position.LineCount = 2
      end
      inherited clnAddress: TcxDBTreeListColumn
        Position.LineCount = 2
      end
      inherited clnPhone: TcxDBTreeListColumn
        Width = 100
        Position.LineCount = 2
      end
      inherited clnFax: TcxDBTreeListColumn
        Position.ColIndex = 3
        Position.LineCount = 2
      end
      inherited clnEMail: TcxDBTreeListColumn
        Width = 202
        Position.ColIndex = 1
        Position.LineCount = 2
      end
      inherited clnHomepage: TcxDBTreeListColumn
        Position.ColIndex = 2
        Position.LineCount = 2
      end
      inherited clnImageIndex: TcxDBTreeListColumn
        Width = 118
        Position.ColIndex = 1
        Position.RowIndex = 1
      end
    end
  end
  inherited dxLayoutMainLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxMainCxLookAndFeel1: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    inherited dxLayoutBoldItemCaption: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited ilFirstLevel: TcxImageList
    FormatVersion = 1
  end
  inherited cxImageList1: TcxImageList
    FormatVersion = 1
  end
  inherited ilFirstLevel_24: TcxImageList
    FormatVersion = 1
  end
end
