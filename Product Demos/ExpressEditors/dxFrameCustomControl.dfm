inherited frmCustomControl: TfrmCustomControl
  inherited lcFrame: TdxLayoutControl
    inherited lcControlContent: TdxLayoutControl
      object dxLayoutGroup1: TdxLayoutGroup
        Parent = lgContent
        AlignHorz = ahCenter
        AlignVert = avCenter
        CaptionOptions.Text = 'New Group'
        ItemIndex = 1
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 0
      end
      object dxLayoutGroup2: TdxLayoutGroup
        Parent = dxLayoutGroup1
        AlignHorz = ahLeft
        AlignVert = avClient
        CaptionOptions.Text = 'Sample'
        Index = 0
      end
      object dxLayoutGroup3: TdxLayoutGroup
        Parent = dxLayoutGroup1
        AlignHorz = ahClient
        CaptionOptions.Text = 'Properties'
        Index = 2
      end
      object dxLayoutEmptySpaceItem1: TdxLayoutEmptySpaceItem
        Parent = dxLayoutGroup1
        AlignHorz = ahLeft
        SizeOptions.Height = 10
        SizeOptions.Width = 10
        CaptionOptions.Text = 'Empty Space Item'
        Index = 1
      end
    end
  end
end
