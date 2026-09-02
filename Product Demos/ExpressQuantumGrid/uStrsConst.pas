unit uStrsConst;

interface

const
  //Module hints, descriptions and full names
  sdxFrameScrollbarAnnotationsDescription = 'This demo shows how to highlight specific rows using scrollbar annotations - colored markers arranged along' +
    ' the vertical scrollbar. You can click an annotation or drag the scrollbar thumb to its location to bring the associated row into view. Select the' +
    ' scrollbar annotations you want to display from the option list and customize their appearance.';
  sdxFrameAdvancedFilteringDescription = 'The most advanced grid also includes ultra advanced data filtering capabilities. ' +
    'Try it - specify a filter and press the Apply button to see your results!';
  sdxFrameAutoPreviewDescription = 'This example demonstrates the grid View''s automatic preview feature. The preview section''s' +
    ' text can be retrieved from a specific field or supplied via an event. A custom draw event allows you to control how preview sections are drawn.';
  sdxFrameAutoRowHeightDescription = 'The Cell Auto Height option automatically adjust the row height to display individual columns'' entire content,' +
    ' and is often used when displaying memo fields or images within the grid control. In this example, the Notes and Photo columns dictate individual rows''' +
    ' height and the grid automatically adjusts the row sizes to display the content of each note and image cell.';
  sdxFrameBuildInNavigatorDescription = 'You can display or hide the built-in data navigator by setting a single property at design or runtime.' +
  ' The ExpressQuantumGrid Suite gives you dozens of additional properties to help you customize the appearance and functionality of the data navigator as your needs dictate.';
  sdxFrameCardViewDescription = 'Cards can be individually collapsed and filtering can be executed for each individual field. You have full column customization at your disposal.';
  sdxFrameChartViewDescription =
    'Chart View allows you to visualize data using two different diagrams - Columns and Bars. ' +
    'This example demonstrates how the Chart View can be used to build charts based on data from a database (Yearly Sales) or in-memory source (Sales By Quarter). ' +
    'Also at the "Orders by Customer" level, you can see how the Chart View can be used to show data from a detail dataset for each master row.';
  sdxFrameCheckBoxMultiSelectDescription =
    'This demo shows an alternative approach to row selection within the grid. With ' +
    'check boxes and selected state synchronization between group rows and their child rows, your ' +
    'users can select rows with fewer mouse clicks. Try different selection and check box options ' +
    'while selecting rows using mouse clicks and Shift/Ctrl key combinations.';
  sdxFrameCalloutPopupDescription =
    'This demo shows how to provide details on individual grid records by using callout popups. ' +
    'Browse through a list of houses and click any of them to invoke a callout popup containing ' +
    'additional information arranged into tabbed pages.';
  sdxFrameCellSelectionDescription = 'Like Microsoft Excel, the grid allows end users to select individual cells and blocks of data cells.';
  sdxFrameDragDropDescription = 'The ExpressQuantumGrid Suite includes full drag and drop support. ' +
    'Give it a shot - drag one or more rows from one grid to another and see it in action.';
  sdxFrameFileExplorerDescription = 'The ExpressQuantumGrid Suite is powered by our advanced Data Controller. ' +
    'This demo illustrates the power behind this technology. ' +
    'Via our Provider Mode, you can populate the ExpressQuantumGrid with information without caching ANY data! ' +
    'Browse your hard drive and see the speed with which the QuantumGrid obtains information and ' +
    'use the incremental search feature to locate any record within a given folder ' +
    '(enter one ore more letters to locate the appropriate file name).';
  sdxFrameFilteringDescription = 'The ExpressQuantumGrid was the very first grid control to provide you with on the fly filtering capabilities via column headers and give you advanced display of filter status.' +
  ' This version provides you with the ability to display the most recently executed filters both at a column and Table View level. In addition, you can now display the filter status pane at the bottom or top of your Grid.';
  sdxFrameFilterRowDescription = 'This demo illustrates the capabilities provided by the grid Filter' +
    ' Row located immediately below column headers. Enter text within' +
    ' a column'#39's filter row cell to create a filter condition and' +
    ' apply it to that column. Change the filter condition'#39's operator' +
    ' by clicking the current operator displayed in the cell (it'#39's a' +
    ' button) and selecting the required operator from the displayed drop-down list.';
  sdxFrameFixedGroupsDescription = 'This demo shows how to anchor group rows to the top of the grid' +
    ' View so that scrolling through their content doesn'#39't take them out' +
    ' of view. Click the Fixed Groups option to choose between the' +
    ' classic and anchored group rows and scroll the grid content to see the difference.';
  sdxFrameIncSearchGridDescription1 = 'Auto-Incremental Search against QuantumGrid columns: Press ANY key to Stop.';
  sdxFrameIncSearchGridDescription2 = 'Auto-Incremental Searching is available against any QuantumGrid column WITHOUT ' +
    'writing any source code! With its blinding fast speed, your users can find information quickly ' +
    'when large amounts of data are displayed within the QuantumGrid. ' +
    'Use Ctrl+Down to find the next match and Ctrl+Up to find the previous match.';
  sdxFrameInplaceEditFormDescription = 'This demo shows data edit capabilities in four available edit modes.';
  sdxFrameInplaceEditors = 'The ExpressQuantumGrid Suite is not just a grid control - but a collection of over 140 individual components. ' +
    'The ExpressEditors Library which ships with this Suite gives you the ability to use the most advanced data editors available today as standalone field controls or as individual cell editors.';
  sdxFrameInplaceEditorsValidation = 'This demo shows how to validate data input in-place using the built-in validation capabilities. ' +
    'Edit cell values and move focus or press the Enter key in order to validate the input. Correct input ' +
    'errors based on the requirements displayed in error hints. Try various validation options to customize validation error display.';
  sdxFrameLayoutViewDescription = 'This demo illustrates the basic features provided by Layout Views (runtime field customization in cards, card collapsing, multiple selection and runtime record layout customization).';
  sdxFrameLayoutViewCarouselModeDescription = 'This demo illustrates the Layout View''s capabilities in Carousel mode. In this mode, cards are arranged in an ellipse with transparency and animation effects that mimic a rolling carousel.';
  sdxFrameLayoutViewGroupScrollingDescription = 'This demo shows how to limit the card/record size in Layout Views' +
    ' and enable content scrolling using scrollbars. Adjust the record size using the spin editors, and see how the card layout adapts to the changes in size.';
  sdxFrameMasterDetailDescription = 'Without Equal - the ExpressQuantumGrid Suite is the most comprehensive product library of its kind for Delphi/C++Builder.' +
    ' But you don''t have to take our word for it…review its features and the scope and breadth of the individual components which make up the ExpressEditors Library' +
    ' (included in the ExpressQuantumGrid Suite) and decide for yourself. We think you will agree with us when we say that nothing comes close to the ExpressQuantumGrid Suite.';
  sdxFrameMergedGroupsDescription = 'This demo shows how to group records in merged column grouping mode,' +
    ' allowing for a more compact record list. Press and hold the Ctrl key to use this grouping mode when dropping column headers within the Group By box.';
  sdxFrameMultiEditorsDescription = 'Flexibility is at the heart of the ExpressQuantumGrid Suite. ' +
    'Via our Multi-Editor support, you can display multiple editors for the same grid ' +
    'column with ease… Just take a look at the Grade column, each row contains a different data editor!';
  sdxFramePSHint = 'Press the Print Preview toolbar button to render the active visual control.';
  sdxFrameRatingControlDescription = 'This demo illustrates the use of the Rating Control within individual' +
    ' grid cells. Experiment with the appearance and behavior options displayed above the grid.';
  sdxFrameSparklinesDescription = 'This demo illustrates the use of the Sparkline Lookup within individual' +
    ' grid cells. Sparklines help you easily picture data trends and offer a simple visual way to compare information between grid rows.';
  sdxFrameStyleDescription = 'The ExpressQuantumGrid Suite is without doubt the most advanced visual control ever created for Delphi/C++Builder. ' +
    'With our Styles technology, you can easily assign Styles to the QuantumGrid and display information ' +
    'to your end-users in a format that meets your specific business needs and requirements. '+
    'Give it a shot…select a Style, Modify a Style, or Create a Style from scratch…it''s as easy as 1-2-3.';
  sdxFrameSummariesDescription = 'The ExpressQuantumGrid was the first grid control for Delphi/C++Builder ' +
    'to make data summaries available for footers, grouped nodes, and grouped rows. ' +
    'You can calculate data summaries for any level displayed within the QuantumGrid (Master-Detail levels)…With LIGHTNING FAST SPEED!';
  sdxFrameUnboundDescription = 'The ExpressQuantumGrid Suite in Unbound Mode: 30,000 records have been loaded at '+
    'lightning speed for you - the data stored within the ExpressDataController. ' +
    'Give it a shot, group/sort by any record to see how fast ExpressQuantumGrid works with data. ' +
    'It simply has no equal in the marketplace… Guaranteed.';
  sdxFrameViewsDescription = 'With our View-based technology, you can alter the view of information displayed within the ExpressQuantumGrid by ' +
   'changing a single property - You do not have to modify ANYTHING else!';
  sdxFrameWinExplorerDescription = 'This demo illustrates how to display records with images and short captions using the WinExplorer View. Choose between seven display' +
    ' modes (Tiles, List, Content, or four Images of various sizes), change grouping and sort order, and experiment with appearance and behavior options.';
  sdxNestedBandsDescription = 'This example shows nested band support and the ability to mix both bound and unbound data in a single grid View.';
  sdxFrameServerModeDescription = 'This demo shows a grid control''s capabilities when bound to a large amount of data' +
    ' in Server Mode via a dbExpress, ADO or FireDAC connection.';
  sdxFrameServerModeQueryDescription = 'This demo shows a grid control''s capabilities when bound to a large amount of data' +
    ' in Server Mode via a dbExpress, ADO or FireDAC connection.';
  sdxFrameBandedViewDescription = 'This demo illustrates how to combine columns into logical groups using the Banded Table View. You can drag and drop' +
    ' columns within bands and change the column height to adjust cell sizes.';
  sdxFrameFindPanelDescription = 'The Find Panel delivers an easy and straightforward way for end-users to locate information within the grid' +
    ' control. To execute a search, simply enter text within the Find box and the grid will display those records that have matching values. You' +
    ' can hide (filter out) non-matching records, specify searchable columns, choose between delayed automatic and manual search modes,' +
    ' allow search strings to be highlighted within located records, enable the extended syntax for more granular search using multiple conditions, etc.';
  sdxFrameMergeCellsDescription = 'Much like Microsoft Excel, the ExpressQuantumGrid' + '''' + 's cell merging feature allows your application to deliver data ' +
    'clarity and avoid duplicating common information within individual rows. In this demo, neighboring data cells across different rows are merged ' +
    'whenever they display matching values. Note that row selection and data editing in merged cells are disabled while using this feature.';
  sdxFrameNewItemRowDescription = 'A new item row is labeled with the ''Click here to add a new row'' description in this example. A horizontal bar visually delimits this row from other regular rows in a View – the new item row''s separator.' +
    ' As a regular data row, a new item row activates an in-place editor in the space an end-user selects. When the row loses focus, all the data is sent to the underlying dataset. After the View is updated with the posted data,' +
    ' the new item row becomes blank prompting an end-user to enter new data.';
  sdxFrameUnboundColumnsDescription = 'The grid control allows you to setup unbound columns in data-aware Views. These columns are populated programmatically, and their values are not stored in the underlying data set.';
  sdxFrameConditionalFormattingDescription = 'This demo allows you to highlight certain cells and rows using Excel-inspired conditional formatting, ' +
    'based on rule sets and custom criteria. You can highlight elements using data bars, icons, and color scales, as well as customize their '+
    'appearance and associated formatting rules. Click "Manage Rules..." to display a built-in dialog that allows you to customize formatting rules. ' +
    'You can also invoke the grid''s context menu and choose from the predefined rules, data bars, icons, and color scales and apply them to the focused ' +
    'column''s cells displaying numeric values.';
  sdxFrameFixedBandsDescription = 'You can fix bands in a grid''s Banded Table View so that scrolling the View horizontally does not affect the band columns.' +
    ' This example demonstrates bands (with single columns) fixed to the grid View''s left and right edges.';
  sdxFrameFixedDataRowsDescription = 'This demo shows how to anchor specific data rows to either the top or bottom of the grid so that these rows are always ' +
    'displayed when scrolling through the grid. You can click on the pin for each row to fix it, or select the corresponding option in the row context menu to ' +
    'fix/unfix the row, as well as try different pin visibility options and select pin click actions.';
  sdxFrameCustomDrawDescription = 'The ExpressQuantumGrid Suite offers you unrivaled power and flexibility - ' +
    'Guaranteed. By using CustomDraw and Unbound Mode, you can even build yourself a MineSweeper game!';
  sdxFrameOutlookStyleDescription = 'This grid control resembles Microsoft Office Outlook Mail table. You can implement this grid without writing any code.';
  sdxFrameExcelStyleFilteringDescription = 'This demo illustrates the Excel-inspired filter dropdowns for grid columns. The grid control optimizes a filter dropdown UI for each data type. Try different options to customize the UI.';
  sdxFrameCalculatedFieldsDescription = 'In this demo, two unbound columns (Discount Amount and Total) calculate their values ' +
    'using formulas written as string expressions. You can modify these expressions via the DevExpress Expression Editor. To display ' +
    'it, right-click a column header to display its popup menu and select the corresponding item. Alternatively, you can double-click ' +
    'a column in the option list to the right of the grid or select this column and click the button below the option list.';
  sdxFrameCalculatedFilterItemsDescription = 'In this demo, the filter compares values from the Price column to an expression calculated from List Price multiplied by a percentage. Check Editable Expressions and click the Customize... button to edit these expressions.';
  sdxFrameCustomRowLayoutDescription = 'This demo shows how to customize the cell arrangement in Table View rows in a similar ' +
    'fashion to the one that the Layout View and Edit Form provide. Click "Customize Row Layout..." to display a Customization Form. ' +
    'Using its UI elements and drag-and-drop operations, adjust a template row''s layout as needed and click OK to apply the changes ' +
    'to the View. Try Table View-related features, including master-detail data presentation, modal Edit Form, group and sort operations, etc.';
  sdxFrameOfficeCompactViewDescription =   
	'The ExpressQuantumGrid is a highly flexible UI control. It allows you to customize cell display and data rendering as requirements dictate. ' +
    'In this demo, we use a template to customize cell content on-the-fly. Specifically, the cell template used in this demo arranges cell content ' +
    'in free-form fashion – the layout is not limited to a grid-like layout normally available in Table and Banded Table Views. Resize the application ' +
    'window horizontally to see how the template renders cell content based on the QuantumGrid''s width.';
  sdxFrameTableViewHotTrackDescription =
    'The ExpressQuantumGrid allows you to "track" mouse movements across individual cells or entire data rows. You can modify hot track mode (cell vs row) ' +
    'and customize hot track colors as needed. Hover your mouse over the QuantumGrid and modify individual settings to determine which user experience best' +
    ' suits end-user requirements.';
  sdxFrameFixedColumnsDescription =
    'This demo illustrates how to anchor columns to the left or right border of the Table View. Scroll the View horizontally to see how highlighted columns stick to the left border, one by one. ' +
    'You can right-click a column header to invoke a pop-up menu with anchor options available for the column. ' +
    'Use the pane to the right of the Table View to customize column anchor settings.';


  //dxFrames
  sdxAccessCodeIsIllegal = 'The access code %d is illegal';
  sdxCannotCreateSecondInstance = 'Cannot create the second instance of the object %s';

  //dxGridFrame
  sdxGridFrameHint1 = 'Right click individual column headers and footers to activate the ExpressQuantumGrid Suite popup menu.';
  sdxGridFrameHint2 = 'Right click individual column headers to activate the ExpressQuantumGrid Suite popup menu.';

  //Main
  sdxColumnCustomizationMessage = 'The QuantumGrid fully supports runtime column selection. This feature is available to you without writing ' +
    'a single line of code! Try it, drag any column you wish to remove from display away from the column header and drop it.';

  sdxColumnCustomizationMessageCaption =  'Column/Band Customization';

  //uGridStyles
  sdxCopyOf = 'Copy of ';
  sdxDeletePresentationStyle = 'Delete "%s" Style Sheet?';
  sdxNewStyleSheet = 'New Style Sheet';

  //Inplace editors module
  sdxInplaceFrame_BlobItem = 'Please add text here...';
  sdxInplaceFrame_ButtonItem = 'Press me...';
  sdxInplaceFrame_MemoItem = 'Robbins studied drama at UCLA where he graduated with honors in 1981. ' +
    'That same year, he formed the Actors'''+
    ' Gang, an experimental ensemble that expressed radical political observations through ' +
    'the European avant-garde form of theater.';
  sdxInplaceFrame_MRUItem = 'What''s your favorite color?';
  sdxInplaceFrame_MRUItemClick = 'You''ve pressed the MRU Inplace Editor button.';
  sdxInplaceFrame_PopupItem = 'Pop me up...';
  sdxInplaceFrame_TextItem = 'Text';

  //Multiple editors module
  sdxMultipleEditorsFrame_Communication = 'Communication';
  sdxMultipleEditorsFrame_CustomInformation = 'Custom Information';
  sdxMultipleEditorsFrame_Programming = 'Programming Experience (in years)';
  sdxMultipleEditorsFrame_PrimaryLanguage = 'Primary Language';
  sdxMultipleEditorsFrame_PutInformation =  'Put additional information here';
  sdxMultipleEditorsFrame_SecondaryLanguage = 'Secondary Language';
  sdxMultipleEditorsFrame_StartWork = 'Start working from';

  //Auto Preview module
  sdxFramePreview_DescriptionText1 = 'This is a description for ';
  sdxFramePreview_DescriptionText2 = 'Notice the Auto Preview Feature';


implementation

end.
