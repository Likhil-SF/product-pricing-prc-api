%dw 2.0
output application/json
---
{
    "productId": vars.productId,
    "message": "Product is not available hence it can not be deleted",
    "successful": false
}