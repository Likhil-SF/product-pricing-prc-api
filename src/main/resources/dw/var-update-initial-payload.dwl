%dw 2.0
output application/json skipNullOn="everywhere"
---
{
    "Name": payload.productName,
    "Description": payload.description,
    "ProductPrice__c": payload.productPrice,
    "CurrencyCode__c": payload.currencyCode
}