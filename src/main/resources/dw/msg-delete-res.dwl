%dw 2.0
output application/json skipNullOn="everywhere"
---
(payload.items map ((item, index) ->{
    "productId": vars.productId,
    "message": item.message,
    "salesforceId": item.id,
    "successful": item.successful
}))[0]