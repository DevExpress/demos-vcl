unit FrameIDs;

interface

const
  NewUpdatedGroupIndex          = 0;
  GridViewGroupIndex            = 1;
  DataBindingGroupIndex         = 2;
  TableBandedTableGroupIndex    = 3;
  MasterDetailGroupIndex        = 4;
  SortingGroupingGroupIndex     = 5;
  SummariesGroupIndex           = 6;
  EditingGroupIndex             = 7;
  PreviewAndViewGroupIndex      = 8;
  FilteringGroupIndex           = 9;
  OutDatedStyles                = 10;

  NewAndHighlitedFeatureFrameBase = 1000;

  GridFixedColumnsFrameID = NewAndHighlitedFeatureFrameBase + 1;
  OfficeCompactViewFrameID = GridFixedColumnsFrameID + 1;
  GridCustomRowLayoutFrameID = OfficeCompactViewFrameID + 1;
  TableViewHotTrackFrameID = GridCustomRowLayoutFrameID + 1;
  GridEMFMasterDetailFrameID = TableViewHotTrackFrameID + 1;
  GridEMFLargeDataAccessFrameID = GridEMFMasterDetailFrameID + 1;
  GridExcelStyleFilteringFrameID = GridEMFLargeDataAccessFrameID + 1;
  GridAdvancedFilteringFrameID = GridExcelStyleFilteringFrameID + 1;
  GridFilterExpressionFrameID = GridAdvancedFilteringFrameID + 1;
  GridCalculatedFieldsFrameID = GridFilterExpressionFrameID + 1;
  GridEditFormFrameID = GridCalculatedFieldsFrameID + 1;

  GridFixedDataRowsFrameID = 1;
  GridMergedGroupsFrameID = GridFixedDataRowsFrameID + 1;
  GridFindPanelFrameID = GridMergedGroupsFrameID + 1;
  GridConditionalFormattingFrameID = GridFindPanelFrameID + 1;
  GridFilterRowFrameID = GridConditionalFormattingFrameID + 1;
  GridBandedViewFrameID = GridFilterRowFrameID + 1;
  GridScrollbarAnnotationsFrameID = GridBandedViewFrameID + 1;
  GridCheckBoxMultiSelectFrameID = GridScrollbarAnnotationsFrameID + 1;
  GridChartViewFrameID = GridCheckBoxMultiSelectFrameID + 1;
  GridCardViewFrameID = GridChartViewFrameID + 1;
  GridLayoutViewFrameID = GridCardViewFrameID + 1;
  GridLayoutViewCarouselModeFrameID = GridLayoutViewFrameID + 1;
  GridLayotViewGroupScrollingFrameID = GridLayoutViewCarouselModeFrameID + 1;
  GridWinExplorerViewFrameID = GridLayotViewGroupScrollingFrameID + 1;
  GridCalloutPopupViewFrameID = GridWinExplorerViewFrameID + 1;
  GridFixedGroupsFrameID = GridCalloutPopupViewFrameID + 1;
  GridRatingControlFrameID = GridFixedGroupsFrameID + 1;
  GridViewsFrameID = GridRatingControlFrameID + 1;
  GridMasterDetailFrameID = GridViewsFrameID + 1;
  GridOffice11FrameID = GridMasterDetailFrameID + 1;
  GridNewItemRowFrameID = GridOffice11FrameID + 1;
  GridFilteringFrameID = GridNewItemRowFrameID + 1;
  GridCellMergingFrameID = GridFilteringFrameID + 1;
  GridIncSearchFrameID = GridCellMergingFrameID + 1;
  GridMultiEditorsFrameID = GridIncSearchFrameID + 1;
  GridSummaryFrameID = GridMultiEditorsFrameID + 1;
  GridSparklinesFrameID = GridSummaryFrameID + 1;

  GridNestedBandsFrameID = GridSparklinesFrameID + 1;
  GridFixedBandsFrameID = GridNestedBandsFrameID + 1;

  GridCellSelectionFrameID = GridFixedBandsFrameID + 1;
  GridUnboundFrameID = GridCellSelectionFrameID + 1;
  GridUnboundColumnsViewFrameID = GridUnboundFrameID + 1;
  GridFolderFileFrameID = GridUnboundColumnsViewFrameID + 1;
  GridAutoHeightFrameID = GridFolderFileFrameID + 1;

  GridPreviewFrameID = GridAutoHeightFrameID + 1;
  GridDragDropFrameID = GridPreviewFrameID + 1;
  GridInplaceEditorsFrameID = GridDragDropFrameID + 1;
  GridInplaceEditorsValidationFrameID = GridInplaceEditorsFrameID + 1;
  GridBuildInNavigatorFrameID = GridInplaceEditorsValidationFrameID + 1;
  GridServerModeFrameID = GridBuildInNavigatorFrameID + 1;
  GridServerModeQueryFrameID = GridServerModeFrameID + 1;

  EditorsNativeFrameID = 200;
  EditorsShadowedFrameID = 201;
  EditorsWebFrameID = 202;
  EditorsFlatFrameID = 203;
  EditorsUltraFlatFrameID = 204;
  EditorsSkinsFrameID = 207;
  EditorsPropertiesFrameID = 205;
  ExtEditorsPropertiesFrameID = 206;

  GridMasterDetailImageIndex = 0;
  GridUnboundImageIndex = 1;
  GridSummaryImageIndex = 2;
  GridFilteringImageIndex = 3;
  GridAdvancedFilteringImageIndex = 4;
  GridPreviewImageIndex = 5;
  GridAutoHeightImageIndex = 6;
  GridBandedViewImageIndex = 7;
  GridFixedBandsImageIndex = 8;
  GridIncSearchImageIndex = 9;
  GridOutLookExpressReaderImageIndex = 11;
  GridNewItemRowImageIndex = 12;
  GridCardViewImageIndex = 13;
  GridViewsImageIndex = 14;
  GridMultiEditorsImageIndex = 15;
  GridWinMinerImageIndex = 16;
  GridFileFolderImageIndex = 17;
  GridDragDropImageIndex = 18;
  GridInplaceEditorsImageIndex = 19;
  GridBuildInNavigatorImageIndex = 21;
  GridCellSelectionImageIndex = 22;
  GridCellMergingImageIndex = 23;
  GridUnboundColumnsViewImageIndex = 24;
  GridNestedBandsImageIndex = 25;
  GridOffice11ImageIndex = 26;
  GridChartViewImageIndex = 27;
  GridLayoutViewImageIndex = 29;
  GridServerModeImageIndex = 30;
  GridServerModeQueryImageIndex = 31;
  GridInplaceEditorsValidationImageIndex = 32;
  GridLayoutViewCarouselModeImageIndex = GridLayoutViewImageIndex;
  GridFindPanelImageIndex = 128;
  GridEditFormImageIndex = 129;
  GridRatingControlImageIndex = 130;
  GridFixedGroupsImageIndex = 131;
  GridSparklinesImageIndex = 132;
  GridWinExplorerViewImageIndex = 133;
  GridCalloutPopupImageIndex = 134;

  StartFrameID = GridFixedColumnsFrameID;

resourcestring
  GridCalculatedFieldsFrameName = 'Calculated Fields';
  GridExcelStyleFilteringFrameName = 'Excel Style Filtering';
  GridConditionalFormattingFrameName = 'Conditional Formatting';
  GridFixedDataRowsFrameName = 'Fixed Data Rows';
  GridCheckBoxMultiSelectFrameName = 'Web-Style Row Selection';
  GridMasterDetailFrameName = 'Master/Detail';
  GridUnboundModeFrameName = 'Unbound Mode';
  GridEditFormFrameName = 'Edit Form';
  GridFilterExpressionFrameName = 'Calculated Filter Items';
  GridFindPanelFrameName = 'Find Panel';
  GridFixedColumnsFrameName = 'Fixed Columns';
  GridFilterRowFrameName = 'Filter Row';
  GridFixedGroupsFrameName = 'Fixed Groups';
  GridMergedGroupsFrameName = 'Merged Groups';
  GridRatingControlFrameName = 'Rating Control';
  GridWinExplorerViewFrameName = 'WinExplorer View';
  GridCalloutPopupFrameName = 'Callout Popup';
  GridPoviderModeFrameName = 'Provider Mode';
  GridCardViewFrameName = 'Card View';
  GridViewsFrameName = 'View Architecture';
  GridDataSummariesFrameName = 'Data Summaries';
  GridDataFilteringFrameName = 'Data Filtering';
  GridDataAdvancedFilteringFrameName = 'Advanced Data Filtering';
  GridAutoPreviewFrameName = 'Auto Preview';
  GridRowHeightFrameName = 'Auto Row Height';
  GridFixedBandsFrameName = 'Fixed Bands';
  GridNestedBandsFrameName = 'Nested Bands';
  GridUnboundColumnsFrameName = 'Unbound Columns';
  GridBandedViewFrameName = 'Banded View';
  GridIncrementalSearchFrameName = 'Incremental Search';
  GridOffice11FrameName = 'Outlook Style';
  GridNewItemRowFrameName = 'New Item Row';
  GridMultiEditorsFrameName = 'Multiple Editors per Row';
  GridInplaceEditorsFrameName = 'In-place Editors';
  GridInplaceEditorsValidationFrameName = 'In-place Editor Validation';
  GridDragDropFrameName = 'Drag && Drop Rows';
  GridBuildInNavigatorFrameName = 'Data Navigation';
  GridWinMinerFrameName = 'Custom Draw';
  GridCellSelectonFrameName = 'Cell Selection';
  GridCellMergingFrameName = 'Cell Merging';
  GridChartViewFrameName = 'Chart View';
  GridLayoutViewFrameName = 'Layout View';
  GridLayoutViewGroupScrollingFrameName = 'Layout View Group Scrolling';
  GridChartStackedFrameName = 'Stacked Bars/Columns';
  GridChartStackedAreaFrameName = 'Stacked Area';
  GridChartNullPointsFrameName = 'Null points';
  GridServerModeFrameName = 'Server Mode (Table)';
  GridServerModeQueryFrameName = 'Server Mode (Query)';
  GridLayoutViewCarouselModeFrameName = 'Layout View Carousel Mode';
  GridSparklinesFrameName = 'Sparklines';
  GridScrollbarAnnotationsFrameName = 'Scrollbar Annotations';
  GridEMFTableViewFrameName = 'EMF Table View';
  GridEMFLargeDataAccessFrameName = 'EMF Large Data Access';
  GridCustomRowLayoutFrameName = 'Custom Row Layout';
  OfficeCompactViewFrameName = 'Office Compact View';
  TableViewHotTrackFrameName = 'Hot Track';

  EditorNativeFrameName = 'Native Look && Feel';
  EditorShadowedFrameName = 'Shadowed Look && Feel';
  EditorWebFrameName = 'Web Look && Feel';
  EditorFlatFrameName = 'Flat Look && Feel';
  EditorUltraFlatFrameName = 'UltraFlat Look && Feel';
  EditorSkinsFrameName = 'Skinned Look && Feel';
  EditorPropertiesFrameName = 'Properties';
  ExtEditorPropertiesFrameName = 'Extended Editors Properties';

implementation

end.
