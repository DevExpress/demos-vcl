unit cxTreeListFeaturesDemoStrConsts;

interface

type
  TdxDescriptionInfo = record
    ID: Integer;
    Description: string;
  end;

const
  DescriptionsInfo: array[0..31] of TdxDescriptionInfo =
  ((ID: 0; Description: 'Nested bands allow users to build a hierarchical band structure. Bands can be moved within a hierarchy using drag and drop. This automatically affects all child bands and their columns.'),
   (ID: 1; Description: 'A band that displays node expand buttons is called an expandable band. In this example, you can specify the expandable band to customize the location of expand buttons.'),
   (ID: 2; Description: 'You can easily customize the visibility of bands and columns by clicking corresponding items in specially designed dropdowns. To invoke dropdowns, click the buttons located at the intersection of a band/column header panel and the node indicator.'),
   (ID: 3; Description: 'You can anchor any band to the left or right side of the ExpressQuantumTreeList so that a band doesn''t take part in horizontal scrolling. This example shows four anchored bands.'),
   (ID: 4; Description: 'This example shows how to calculate summaries against groups of nodes with the same parent. Use the group footer context menu to specify the summary types to be calculated, and adjust summary options.'),
   (ID: 5; Description: 'This example shows how to display multiple summaries per column in the footer and group footers. Use the footer and group footer context menus to specify the summary types to be calculated and adjust summary options.'),
   (ID: 6; Description: 'In this example, you can opt to include all child nodes for the summary calculation base or calculate, using only the immediate child nodes.'),
   (ID: 7; Description: 'In this example, node images are substituted on the fly with larger versions. You can specify at which node nesting level this should be done.'),
   (ID: 8; Description: 'This example shows how to display overlay images over node and state images. You can opt to display state images only for the focused node.'),
   (ID: 9; Description: 'Use spin editors to customize the height of individual nodes or specify the node height for all nodes. You can also drag the bottom edges of indicator cells to adjust the height of corresponding nodes.'),
   (ID:10; Description: 'This example shows how to filter nodes by changing their visibility. Nodes that don''t match the specified criteria are hidden.'),
   (ID:11; Description: 'Click node check boxes and radio buttons, to select the products to be "installed". See how a parent node keeps track of child node states, and automatically updates its state, and vice versa.'),
   (ID:12; Description: 'In this example, you can invoke context menus by right-clicking column headers, footer, group footers, or their cells. You can also disable context menus for certain elements.'),
   (ID:13; Description: 'See how fast the ExpressQuantumTreeList works in Virtual mode - when data is created and updated on the fly, using specially designed events. If the "Smart Load Mode" option is enabled, data is loaded on demand, when' + ' a node is expanded. Note the performance difference with this option on and off.'),
   (ID:14; Description: 'This example shows how to perform a text search in the tree list using various search modes and options.'),
   (ID:28; Description: 'In this example, the unbound tree list is dynamically populated with file system data. You can use an incremental search within the Name column to locate a certain folder or file.'),
   (ID:22; Description: 'This example demonstrates the tree list in provider mode. In this mode, a custom data source is created in code. Try the "Smart Load Mode" option that switches the data loading mode. If enabled, data is loaded on demand,' +' when a node is expanded. Note the performance difference with this option on and off.'),
   (ID:27; Description: 'In this example, you can switch the visibility of the preview section and customize its position within a node. You can also select a source column providing data for preview cells.'),
   (ID:21; Description: 'Nodes can be moved via drag and drop. While dragging, you can automatically expand a node by hovering the mouse pointer over the node''s expand button. Similarly, you can copy nodes by dragging them while holding down the Ctrl key.' + ' Note that multiple nodes can be selected using the Ctrl and Shift keys and dragged simultaneously.'),
   (ID:23; Description: 'This example shows how INI files can be easily edited using the unbound tree list.'),
   (ID:24; Description: 'The ExpressEditors Library shipped with the ExpressQuantumTreeList allows you to use about 30 editors for in-place data editing. You can create in-place editors as repository items and reuse them in other columns or tree lists.'),
   (ID:25; Description: 'Any tree list element can be custom painted using specially designed events. In this example, you can select an element within the Draw Item list and adjust the parameters of the routine that paints this element.'),
   (ID:26; Description: 'The appearance of tree list elements can be easily customized using styles. You can apply an entire palette of styles to all elements at one time via style sheets. This example allows you to apply predefined style sheets to the tree list.'),
   (ID:54; Description: 'This demo shows how to validate data input in-place using the built-in validation capabilities. Edit cell values and move focus or press the Enter key in order to validate the input. Correct input errors based on the ' + 'requirements displayed in error hints. Try various validation options to customize validation error display.'),
   (ID:55; Description: 'This demo shows how to highlight certain cells and columns using Excel-inspired conditional formatting, ' +
                        'based on rule sets and custom criteria. You can highlight elements using data bars, icons, and color scales, ' +
                        'as well as customize their appearance and associated formatting rules. Click "Manage Rules..." to display a built-in dialog that allows you to customize formatting rules.'),
   (ID:56; Description: 'The Find Panel delivers an easy and straightforward way for end-users to locate information within the tree list' +
                        ' control. To execute a search, simply enter text within the Find box and the tree list will display those nodes that have matching values. You' +
                        ' can hide (filter out) non-matching nodes, specify searchable columns, choose between delayed automatic and manual search modes, allow search strings to be highlighted within located' +
                        ' nodes, enable the extended syntax for more granular search using multiple conditions, etc.'),
   (ID:57; Description: 'This demo shows how to filter tree list nodes using the advanced capabilities provided by the Filter Control. Create filter conditions and apply them to the tree list.'),
   (ID:58; Description: 'This demo illustrates the capabilities provided by filter dropdowns available for columns. You can display a filter dropdown for any column by clicking ' +
                        'the filter button at the column header''s edge. Try different display and behavior options while applying filter criteria via dropdown UI elements.'),
   (ID:59; Description: 'This demo illustrates the Excel-inspired filter dropdowns for tree list columns. The tree list control optimizes a filter dropdown UI for each data type. Try different options to customize the UI.'),
   (ID:60; Description: 'In this demo, two unbound columns (Discount Amount and Total) calculate their values using formulas written as string expressions. You can modify these expressions via the ' +
                        'DevExpress Expression Editor. To display it, double-click a column in the option list to the right of the tree list or select this column and click the button below the option list.'),
   (ID:61; Description: 'This demo shows how to highlight specific nodes using scrollbar annotations - colored markers arranged along' +
                        ' the vertical scrollbar. You can click an annotation or drag the scrollbar thumb to its location to bring the associated node into view. Select' +
                        ' the scrollbar annotations you want to display from the option list and customize their appearance.'),
   (ID:62; Description: 'In this demo, the filter compares values from the Price column to an expression calculated from List Price multiplied by a percentage. Check Editable Expressions and click the Customize... button to edit these expressions.'));

implementation

end.
