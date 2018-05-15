# NOMSS


### Run the APP

```
bundle install 
rails s

```

### Unfilled API
#### End point  
 Local : http://localhost:3000/api/v1/warehouse/fulfilment 
  or temp server 
 Endpoint : https://nomss.herokuapp.com/api/v1/warehouse/fulfilment

```
	
	Method : POST

	Request Input: 

	{
		“orderIds” : [1122,1123,1124,1125]
	}

	Response: 

	{
  	  “unfulfillable”: [1123,1125]
    } 

```

### Unfilled API
#### End point  
 Local : http://localhost:3000/api/v1/order/1 
  or temp server 
 Endpoint : https://nomss.herokuapp.com/api/v1/order/1

```
	
	Method : GET

	Response : {
      "orderId": 1122,
      "status": "Pending",
      "dateCreated": "2018-05-09 10:59",
      "items": [
        {
          "orderId": 1122,
          "productId": 1,
          "quantity": 4,
          "costPerItem": 10.45
        },
        {
          "orderId": 1122,
          "productId": 2,
          "quantity": 7,
          "costPerItem": 20.95
        }
      ]
    }

```



### Unfilled API
#### End point  
 Local : http://localhost:3000/api/v1/product/1
  or temp server 
 Endpoint : https://nomss.herokuapp.com/api/v1/product/1

```
	
	Method : GET

	Response: 

	{
      "productId": 1,
      "description": "Small Widget",
      "quantityOnHand": 50,
      "reorderThreshold": 10,
      "reorderAmount": 50,
      "deliveryLeadTime": 5
    }

```

