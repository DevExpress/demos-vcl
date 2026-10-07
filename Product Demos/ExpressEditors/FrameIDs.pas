unit FrameIDs;

interface

const
  HighlightedFeatureGroupIndex       = 0;
  OverviewGroupIndex                 = 1;
  InplaceEditingGroupIndex           = 2;
  EditorsWithoutTextBoxesGroupIndex  = 3;
  RangeControlGroupIndex             = 4;
  EditorsWithTextBoxesGroupIndex     = 5;
  SpinEditorsGroupIndex              = 6;
  EditorsWithDropDownGroupIndex      = 7;
  MultiPurposeGroupIndex             = 8;

  ContactDetailsFrameID = 1;
  GridInplaceEditorsFrameID = ContactDetailsFrameID + 1;

  ShellControlsFrameID = GridInplaceEditorsFrameID + 1;
  ListViewControlFrameID = ShellControlsFrameID + 1;
  TreeViewControlFrameID = ListViewControlFrameID + 1;
  FormattedLabelFrameID = TreeViewControlFrameID + 1;
  BarCodeFrameID = FormattedLabelFrameID + 1;
  CheckBoxFrameID = BarCodeFrameID + 1;
  PictureEditorFrameID = CheckBoxFrameID + 1;
  ProgressBarFrameID = PictureEditorFrameID + 1;
  RadioGroupFrameID = ProgressBarFrameID + 1;
  RangeTrackBarFrameID = RadioGroupFrameID + 1;
  RatingFrameID = RangeTrackBarFrameID + 1;
  SparklineEditFrameID = RatingFrameID + 1;
  ToggleSwitchFrameID = SparklineEditFrameID + 1;
  TrackBarFrameID = ToggleSwitchFrameID + 1;
  WheelPickerFrameID = TrackBarFrameID + 1;
  ZoomTrackBarFrameID = WheelPickerFrameID + 1;

  RangeControlFrameID = ZoomTrackBarFrameID + 1;

  ButtonEditFrameID = RangeControlFrameID + 1;
  HyperLinkFrameID = ButtonEditFrameID + 1;
  MaskEditFrameID = HyperLinkFrameID + 1;
  MemoEditFrameID = MaskEditFrameID + 1;
  TextEditFrameID = MemoEditFrameID + 1;
  TokenEditFrameID = TextEditFrameID + 1;

  SpinEditFrameID = TokenEditFrameID + 1;
  TimeEditFrameID = SpinEditFrameID + 1;

  BlobEditFrameID = TimeEditFrameID + 1;
  BreadcrumbEditFrameID = BlobEditFrameID + 1;
  CalcEditFrameID = BreadcrumbEditFrameID + 1;
  ColorComboBoxFrameID = CalcEditFrameID + 1;
  ColorEditFrameID = ColorComboBoxFrameID + 1;
  ComboBoxFrameID = ColorEditFrameID + 1;
  DateEditFrameID = ComboBoxFrameID + 1;
  CheckComboBoxFrameID = DateEditFrameID + 1;
  ExtLookupComboBoxFrameID = CheckComboBoxFrameID + 1;
  FontNameComboBoxFrameID = ExtLookupComboBoxFrameID + 1;
  ImageComboBoxFrameID = FontNameComboBoxFrameID + 1;
  LookupComboBoxFrameID = ImageComboBoxFrameID + 1;
  MRUEditFrameID = LookupComboBoxFrameID + 1;
  ShellBreadcrumbEditFrameID = MRUEditFrameID + 1;

  ActivityIndicatorFrameID = ShellBreadcrumbEditFrameID + 1;
  CheckListBoxFrameID = ActivityIndicatorFrameID + 1;
  CheckGroupBoxFrameID = CheckListBoxFrameID + 1;
  CalloutPopupFrameID = CheckGroupBoxFrameID + 1;
  ValidationDemoFrameID = CalloutPopupFrameID + 1;
  DBNavigatorFrameID = ValidationDemoFrameID + 1;
  GalleryControlFrameID = DBNavigatorFrameID + 1;
  MCListBoxFrameID = GalleryControlFrameID + 1;
  UIAdornersFrameID = MCListBoxFrameID + 1;

  StartFrameID = ShellControlsFrameID;

resourcestring
  ActivityIndicatorFrameName = 'Activity Indicator Control';
  BarCodeFrameName = 'Barcode Control';
  BlobEditFrameName = 'BLOB Editor';
  BreadcrumbEditFrameName = 'Breadcrumb Editor';
  ButtonEditFrameName = 'Button Editor';
  CalcEditFrameName = 'Calculator';
  CalloutPopupFrameName = 'Callout Popup Control';
  CheckBoxFrameName = 'Check Box';
  CheckComboBoxFrameName = 'Dropdown Checked List';
  CheckGroupBoxFrameName = 'Checked Group';
  CheckListBoxFrameName = 'Checked List';
  ColorComboBoxFrameName = 'Color Combo Box';
  ColorEditFrameName = 'Color Editor';
  ComboBoxFrameName = 'Combo Box';
  ContactDetailsFrameName = 'Contact Details';
  DateEditFrameName = 'Date Picker';
  DBNavigatorFrameName = 'External Data Navigator';
  ExtLookupComboBoxFrameName = 'Extended Lookup';
  FontNameComboBoxFrameName = 'Font Picker';
  FormattedLabelFrameName = 'Formatted Label';
  GalleryControlFrameName = 'Gallery Control';
  GridInplaceEditorsFrameName = 'In-place Grid Cell Editors';
  HyperLinkFrameName = 'Hyperlink Editor';
  ImageComboBoxFrameName = 'Image Combo Box';
  ListViewControlFrameName = 'ListView Control';
  LookupComboBoxFrameName = 'Lookup Editor';
  MaskEditFrameName = 'Mask Editor';
  MCListBoxFrameName = 'Multi Column List Box';
  MemoEditFrameName = 'Memo Editor';
  MRUEditFrameName = 'MRU Editor';
  PictureEditorFrameName = 'Image Editor';
  ProgressBarFrameName = 'Progress Bar';
  RadioGroupFrameName = 'Radio Group';
  RangeControlFrameName = 'Range Control';
  RangeTrackBarFrameName = 'Range Track Bar';
  RatingFrameName = 'Rating Control';
  ShellBreadcrumbEditFrameName = 'Shell Breadcrumb Editor';
  ShellControlsFrameName = 'Shell Controls';
  SparklineEditFrameName = 'Sparkline Editor';
  SpinEditFrameName = 'Spin Editor';
  TextEditFrameName = 'Text Editor';
  TimeEditFrameName = 'Time Editor';
  ToggleSwitchFrameName = 'Toggle Switch Editor';
  TokenEditFrameName = 'Token Editor';
  TrackBarFrameName = 'Track Bar';
  TreeViewControlFrameName = 'TreeView Control';
  UIAdornersFrameName = 'UI Adorners';
  ValidationDemoFrameName = 'Data Validation';
  WheelPickerFrameName = 'Wheel Picker';
  ZoomTrackBarFrameName = 'Zoom Track Bar';

implementation

end.
