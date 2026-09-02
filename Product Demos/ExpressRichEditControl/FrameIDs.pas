unit FrameIDs;

interface

const
  HighlightFeaturesGroupIndex = 0;
  EditingFeaturesGroupIndex = HighlightFeaturesGroupIndex + 1;
  LayoutAndNavigationGroupIndex = EditingFeaturesGroupIndex + 1;
  RestrictionsGroupIndex = LayoutAndNavigationGroupIndex + 1;
  MailMergeGroupIndex = RestrictionsGroupIndex + 1;
  DocumentManagementGroupIndex = MailMergeGroupIndex + 1;

  RichEditLoadSaveRTFID = 1;
  RichEditLoadSaveDOCID = RichEditLoadSaveRTFID + 1;
  RichEditCharacterFormattingID = RichEditLoadSaveDOCID + 1;
  RichEditParagraphFormattingID = RichEditCharacterFormattingID + 1;
  RichEditConditionalFormattingID = RichEditParagraphFormattingID + 1;
  RichEditStylesID = RichEditConditionalFormattingID + 1;
  RichEditBulletsAndNumberingID = RichEditStylesID + 1;
  RichEditAIAssistantID = RichEditBulletsAndNumberingID + 1;
  RichEditRibbonUIID = RichEditAIAssistantID + 1;
  RichEditHyperlinksAndBookmarksID = RichEditRibbonUIID + 1;
  RichEditTablesID = RichEditHyperlinksAndBookmarksID + 1;
  RichEditDocumentViewsAndLayoutsID = RichEditTablesID + 1;
  RichEditMultiColumnContentID = RichEditDocumentViewsAndLayoutsID + 1;
  RichEditZoomingID = RichEditMultiColumnContentID + 1;
  RichEditFindAndReplaceID = RichEditZoomingID + 1;
  RichEditLineNumberingID = RichEditFindAndReplaceID + 1;
  RichEditDocumentRestrictionsID = RichEditLineNumberingID + 1;
  RichEditOperationRestrictionsID = RichEditDocumentRestrictionsID + 1;
  RichEditHeadersAndFootersID = RichEditOperationRestrictionsID + 1;
  RichEditFloatingObjectsID = RichEditHeadersAndFootersID + 1;
  RichEditMailMergeRuntimeDataID = RichEditFloatingObjectsID + 1;
  RichEditMailMergeDatabaseID = RichEditMailMergeRuntimeDataID + 1;
  RichEditMasterDetailMailMergeID = RichEditMailMergeDatabaseID + 1;
  RichEditSpellCheckingID = RichEditMasterDetailMailMergeID + 1;
  RichEditLoadSaveDOCXID = RichEditSpellCheckingID + 1;
  RichEditTableOfContentsID = RichEditLoadSaveDOCXID + 1;
  RichEditLoadSaveHTMLID = RichEditTableOfContentsID + 1;
  RichEditDocumentProtectionID = RichEditLoadSaveHTMLID + 1;

  StartFrameID = RichEditAIAssistantID;

resourcestring
  RichEditRibbonUIFrameName = 'Ribbon UI';
  RichEditFloatingObjectsFrameName = 'Floating Objects';
  RichEditAIAssistantFrameName = 'AI Assistant';
  RichEditLoadSaveRTFFrameName = 'Load/Save RTF';
  RichEditLoadSaveDOCFrameName = 'Load/Save DOC';
  RichEditCharacterFormattingFrameName = 'Character Formatting';
  RichEditParagraphFormattingFrameName = 'Paragraph Formatting';
  RichEditConditionalFormattingFrameName = 'Conditional Formatting';
  RichEditStylesFrameName = 'Styles';
  RichEditBulletsAndNumberingFrameName = 'Bullets && Numbering';
  RichEditTablesFrameName = 'Tables';
  RichEditDocumentViewsAndLayoutsFrameName = 'Document Views && Layouts';
  RichEditMultiColumnContentFrameName = 'Multi-Column Content';
  RichEditZoomingFrameName = 'Zooming';
  RichEditFindAndReplaceFrameName = 'Find && Replace';
  RichEditLineNumberingFrameName = 'Line Numbering';
  RichEditDocumentRestrictionsFrameName = 'Document Restrictions';
  RichEditOperationRestrictionsFrameName = 'Operation Restrictions';
  RichEditHyperlinksAndBookmarksFrameName = 'Hyperlinks && Bookmarks';
  RichEditHeadersAndFootersFrameName = 'Headers && Footers';
  RichEditMailMergeRuntimeDataFrameName = 'Mail Merge: Runtime Data';
  RichEditMailMergeDatabaseFrameName = 'Mail Merge: Database';
  RichEditMasterDetailMailMergeFrameName = 'Master-Detail Mail Merge';
  RichEditSpellCheckingFrameName = 'Spell Checking';
  RichEditLoadSaveDOCXFrameName = 'Load/Save DOCX';
  RichEditTableOfContentsFrameName = 'Table Of Contents';
  RichEditDocumentProtectionFrameName = 'Document Protection';
  RichEditLoadSaveHTMLFrameName = 'Load/Save HTML';

implementation

end.
