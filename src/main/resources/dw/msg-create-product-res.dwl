%dw 2.0
output application/json skipNullOn="everywhere"
---
payload.items map ((item, index) ->{
    "productId": vars.initialPayload[index].productId,
    "name": vars.initialPayload[index].name,
    "message": item.message,
    "statusCode": item.statusCode,
    "salesforceId": item.id,
    "successful": item.successful
})