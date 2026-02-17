%dw 2.0
output application/json

var input3 = vars.currencyCode 
fun convertPrice(value, fromCurrency, toCurrency) =
    if (value == null) 
        0
    else if (fromCurrency == toCurrency)
        value as Number
    else if (fromCurrency == vars.rates.base)
        (value as Number) * (vars.rates.rates[toCurrency] default 1)
    else if (toCurrency == vars.rates.base)
        (value as Number) / (vars.rates.rates[fromCurrency] default 1)
    else 
        ((value as Number) / (vars.rates.rates[fromCurrency] default 1)) * (vars.rates.rates[toCurrency] default 1)
---
payload map (item) -> {
    productId: item.External_Id__c,
    name: item.Name,
    productCode: item.ProductCode,
    description: item.Description,
    ProductPrice__c: ((convertPrice(item.ProductPrice__c, item.CurrencyCode__c, input3)) as String {format: "#.##"}) as Number,
    CurrencyCode__c: input3,
}