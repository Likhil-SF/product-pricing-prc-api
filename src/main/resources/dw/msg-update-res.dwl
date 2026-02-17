%dw 2.0
output application/json skipNullOn="everywhere"
---
(payload.items map ((item, index) ->{
	"productId": vars.productId,
    "name": vars.initialPayload.productName,
    "message": item.message,
    "statusCode": item.statusCode,
    "salesforceId": item.id,
    "successful": item.successful
}))[0]