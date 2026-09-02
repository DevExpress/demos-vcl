unit LocalizationDemoRes;

interface

uses
  dxCore;

resourcestring
  sAppName = 'Localization Demo';
  sCar = 'Car:';
  sCheckSpelling = 'Check Spelling';
  sClose1 = 'Close';
  sCompany = 'Company:';
  sCustomer = 'Customer:';
  sDescription = 'This demo shows how to localize VCL Subscription controls. You can select a language in the ' +
                 'Language menu to apply it to the user interface. The Localization tab allows you to change a ' +
                 'resource string''s translation for the currently selected language. Note that you should install ' +
                 'the East Asian language files to display text in these languages.';
  sFile1 = 'File';
  sHelp = 'Help';
  sLanguage1 = 'Language';
  sModel = 'Model:';
  sName = 'Name:';
  sOrderInfo = 'Order Info:';
  sPaymentAmount = 'Payment amount:';
  sPaymentType = 'Payment type:';
  sPicture = 'Picture:';
  sPrint = 'Print...';
  sPurchaseDate = 'Purchase date:';
  sQuantity = 'Quantity:';
  sRefresh = 'Refresh Translation';
  sReload = 'Reload Translation';
  sSave = 'Save Translation';
  sView = 'View';

implementation

procedure AddResourceStringNames(AProduct: TdxProductResourceStrings);
begin
  AProduct.Add('sAppName', @sAppName);
  AProduct.Add('sCar', @sCar);
  AProduct.Add('sCheckSpelling', @sCheckSpelling);
  AProduct.Add('sClose1', @sClose1);
  AProduct.Add('sCompany', @sCompany);
  AProduct.Add('sCustomer', @sCustomer);
  AProduct.Add('sDescription', @sDescription);
  AProduct.Add('sFile1', @sFile1);
  AProduct.Add('sHelp', @sHelp);
  AProduct.Add('sLanguage1', @sLanguage1);
  AProduct.Add('sModel', @sModel);
  AProduct.Add('sName', @sName);
  AProduct.Add('sOrderInfo', @sOrderInfo);
  AProduct.Add('sPaymentAmount', @sPaymentAmount);
  AProduct.Add('sPaymentType', @sPaymentType);
  AProduct.Add('sPicture', @sPicture);
  AProduct.Add('sPrint', @sPrint);
  AProduct.Add('sPurchaseDate', @sPurchaseDate);
  AProduct.Add('sQuantity', @sQuantity);
  AProduct.Add('sRefresh', @sRefresh);
  AProduct.Add('sReload', @sReload);
  AProduct.Add('sSave', @sSave);
  AProduct.Add('sView', @sView);
end;

initialization
  dxResourceStringsRepository.RegisterProduct('Custom Resource Strings', @AddResourceStringNames);

finalization
  dxResourceStringsRepository.UnRegisterProduct('Custom Resource Strings');

end.
