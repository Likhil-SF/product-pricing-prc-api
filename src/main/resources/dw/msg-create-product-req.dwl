%dw 2.0
output application/json skipNullOn="everywhere"
---
vars.initialPayload map ((item, index) ->{
    "Name": item.productName,
    "External_Id__c": item.productId,
    "ProductCode": item.productCode,
    "Description": item.description,
    "ProductPrice__c": item.productPrice,
    "CurrencyCode__c": item.currencyCode
} )