%dw 2.0
%dw 2.0
output application/json
---
{
	"productId": vars.productId,
    "name": vars.initialPayload.Name,
    "message": "Product is not available hence it can not be updated",
    "successful": false
}