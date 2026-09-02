unit uStrsConst;

interface

resourcestring
  //Module hints, description and full names

  //dxGridFrame
  sdxCannotCreateSecondInstance = 'Can not create the second instance of the object %s';
  sdxAccessCodeIsIllegal = 'The access code %d is illegal';

  //Data Prefix
  sdxStartDocumentPrefix = 'Data\';

  //Start Document
  sdxRibbonUIStartDocumentName = 'MovieRentals.docx';
  sdxFloatingObjectsStartDocumentName = 'FloatingObjects.docx';
  sdxAIAssistantStartDocumentName = 'FirstLook.docx';
  sdxLoadSaveRTFStartDocumentName = 'CharacterFormatting.rtf';
  sdxCharacterFormattingStartDocumentName = 'CharacterFormatting.docx';
  sdxParagraphFormattingStartDocumentName = 'ParagraphFormatting.docx';
  sdxConditionalFormattingStartDocumentName = 'ConditionalFormatting.docx';
  sdxStylesStartDocumentName = 'Styles.docx';
  sdxBulletsAndNumberingStartDocumentName = 'BulletsAndNumbering.docx';
  sdxTablesStartDocumentName = 'ActiveCustomers.docx';
  sdxDocumentViewsAndLayoutsStartDocumentName = 'TextWithImages.docx';
  sdxMultiColumnContentStartDocumentName = 'Sections.docx';
  sdxZoomingStartDocumentName = 'Zoom.docx';
  sdxFindAndReplaceStartDocumentName = 'Search.docx';
  sdxLineNumberingStartDocumentName = 'LineNumbering.docx';
  sdxDocumentRestrictionsStartDocumentName = 'TextWithImages.docx';
  sdxOperationRestrictionsStartDocumentName = 'TextWithImages.docx';
  sdxHyperlinksAndBookmarksStartDocumentName = 'HyperlinksAndBookmarks.docx';
  sdxHeadersAndFootersStartDocumentName = 'HeadersFooters.docx';
  sdxMailMergeRuntimeDataStartDocumentName = 'MailMergeSimple.docx';
  sdxMailMergeDatabaseStartDocumentName = 'MailMerge.docx';
  sdxMailMergeDetailStartDocumentName = 'MasterDetailMailMergeDetail.docx';
  sdxMailMergeMasterStartDocumentName = 'MasterDetailMailMergeMaster.docx';
  sdxMailMergeTemplateStartDocumentName = 'MasterDetailMailMergeTemplate.docx';
  sdxSpellCheckingDocumentName = 'HunspellDictionaries.docx';
  sdxLoadSaveDOCDocumentName = 'DocLoading.doc';
  sdxLoadSaveDOCXDocumentName = 'CustomDraw.docx';
  sdxTableOfContentsTemplateStartDocumentName = 'TableOfContentsTemplate.rtf';
  sdxDocumentProtectionDocumentName = 'DocumentProtection.docx';
  sdxLoadSaveHTMLDocumentName = 'DevExpress VCL Subscription supports RAD Studio 10.1 Berlin - ctodx.htm';

  //Descriptions
  sdxFrameBulletsAndNumberingDescription = 'This demo illustrates how the Rich Edit Control displays numbered lists within ' +
    'a document, and how to manage the auto-number feature using the corresponding buttons on the Ribbon''s Home tab.';
  sdxFrameCharacterFormattingDescription = 'This demo illustrates the Rich Edit Control''s character formatting options.' +
    ' You can apply different character settings and font effects available in the Ribbon''s Home tab.';
  sdxFrameHyperlinksDescription = 'This demo illustrates managing hyperlinks and bookmarks in the Rich Edit Control. ' +
    'To edit a hyperlink, right-click it and select Edit Hyperlink..., or switch to the Insert Ribbon tab and click the' +
    ' Hyperlink button. You can use the Bookmark command on the Insert tab to modify a bookmark or create a new one.';
  sdxFrameParagraphFormattingDescription = 'This demo illustrates the Rich Edit Control''s paragraph formatting' +
    ' options. To change the paragraph''s appearance, switch to the Home Ribbon tab and use the Paragraph group''s corresponding buttons.';
  sdxFrameRichEditStylesDescription = 'The Rich Edit Control supports paragraph and character-based styles.';
  sdxFrameTables = 'This demo illustrates Rich Edit Control features such as splitting and merging table cells, changing its background color and auto-fitting the cell content. You can use the Table Tools Ribbon tabs to create and modify tables.';
  sdxFrameHeadersAndFooters = 'This demo illustrates headers and footers in the Rich Edit Control. You can double-click these headers and footers or use the INSERT tab''s commands to edit their contents.';
  sdxFrameFloatingObjects = 'This demo allows you to position, scale and rotate floating objects using its resizing and rotating handles, and modify object characteristics using the Ribbon commands. You can also activate the built-in layout dialog using the context menu.';
  sdxFrameAIAssistant = 'This demo adds DevExpress Al-powered Extensions (commands) to the RichEdit control. Select text/text block within the RichEditControl and right-click to invoke its popup menu includes an "Al Assistant" submenu.' +
    ' Al-generated responses/answers will be displayed within a dialog. You can insert the answer above/below the cursor, replace selected text, or copy the answer to the clipboard.' +
    #13#10#13#10'Note: DevExpress Al-powered extensions follow the "bring your own key" principle. DevExpress does not offer a REST API and does not ship any built-in LLMs/SLMs. You need an active Azure/Open Al subscription to obtain the REST API endpoint,' +
    ' key, and model deployment name. These variables must be specified at application startup to register Al clients and enable DevExpress AI-powered Extensions in your application. ';
  sdxFrameSpellChecking = 'The Rich Edit Control includes built-in spell checking support. It can detect misspelled words after clicking the corresponding button or immediately after they are typed. Refer to the Spell Checker demo for more information about ' +
    'the capabilities of the DevExpress Spell Checker.';
  sdxFrameRibbonUI = 'This demo shows a Ribbon Control containing buttons and editors. You can use these buttons and editors to perform Rich Edit operations at runtime: change text alignment, customize font settings, insert images, create and modify tables and ' +
    'lists, etc. The Rich Edit Control can generate the Ribbon UI automatically.';
  sdxFrameDocumentViewsAndLayouts = 'The Rich Edit Control ships with 3 View options: Simple, Draft and Print Layout. You can use the corresponding commands on the View Ribbon tab to switch between these views. The Simple View is used for typing and spell ' +
    'checking, the Draft View for text formatting, and the Print Layout for preparing the document for printing.';
  sdxFrameMultiColumnContent = 'This demo illustrates how to divide a document into sections and specify different page settings for each section. You can use the Page Layout Ribbon tab commands to set the number of columns, page orientation and margins for each section.';
  sdxFrameZooming = 'In this demo, you can press the CTRL key while scrolling your mouse wheel to change the zoom level.';
  sdxFrameFindAndReplace = 'This demo allows you to find and replace characters or text strings within a document. You can specify the search direction and other search/replace options.';
  sdxFrameLineNumbering = 'This demo illustrates line numbering in the Rich Edit Control. You can use the options on the PAGE LAYOUT Ribbon tab to insert line numbers. These numbers can run continuously throughout the document or are restarted on each page/section.';
  sdxFrameDocumentRestrictions = 'In this demo, we illustrate various Rich Edit Control options that disable formatting actions within business-sensitive documents. You can specify which restrictions apply to a document objects. Changes are not applied ' +
    'to the document when a user performs a restricted action.';
  sdxFrameOperationRestrictions = 'This demo illustrates different restrictions you can apply to protect sensitive documents. The properties in the top pane allow you to restrict certain actions (open, save documents, etc.). ';
  sdxFrameMailMergeRuntimeData = 'This demo illustrates how to create mail merge documents with the Rich Edit Control. You can use the commands in the Ribbon''s MAIL MERGE tab to embed data fields into the static document content.';
  sdxFrameMailMergeDatabase = 'This demo illustrates how to create mail merge documents with the Rich Edit Control. You can use the commands in the Ribbon''s MAIL MERGE tab to embed data fields into the static document content.';
  sdxFrameMailMergeMasterDetail = 'This demo illustrates how to create mail merge documents with the Rich Edit Control. You can use the tab headers at the top of the editor to merge several document templates into a complex resulting document with automatically filled fields.';
  sdxFrameTableOfContents = 'This demo illustrates an automatically generated Table of Contents in the Rich Edit Control.';
  sdxFrameLoadSaveRTF = 'The Rich Edit Control allows you to load/save RTF and text files.';
  sdxFrameLoadSaveDOC = 'The Rich Edit Control can open and save documents in most popular third-party formats, such as Word 97.';
  sdxFrameLoadSaveDOCX = 'The Rich Edit Control can open and save documents in most popular third-party formats, such as Word 2007.';
  sdxFrameLoadSaveHTML = 'This demo illustrates loading and saving HTML content in the Rich Edit Control. You can load an HTML file and see how it is displayed in the Rich Edit Control.';
  sdxFrameDocumentProtection = 'The VCL Rich Edit Control enables you to prohibit all document modifications or allow specific users to edit its certain parts. You can select a user from the drop-down list (the REVIEW Ribbon tab) and specify ' +
    'which parts this user can change. Editable regions are highlighted in yellow. The document password is ''123''.';

  //Base Name
  sdxMailMergeRuntimeDataBaseName = 'MailMergeRuntimeData.cds';
  sdxMailMergeDatabaseBaseName = 'Employees.cds';
  sdxMailMergePhotosDatabaseBaseName = 'EmployeesPhotos.cds';
  sdxMailMergeCategoriesDatabaseName = 'Categories.cds';
  sdxMailMergeProductsDatabaseName = 'Products.cds';
  sdxMailMergeMasterDatabaseName = 'Master.cds';
  sdxTOCEmployeesDatabaseName = 'TOC_Employees.cds';

implementation

end.
