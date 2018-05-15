class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def self.data
  	{
  "products": [
    {
      "productId": 1,
      "description": "Small Widget",
      "quantityOnHand": 50,
      "reorderThreshold": 10,
      "reorderAmount": 50,
      "deliveryLeadTime": 5
    },
    {
      "productId": 2,
      "description": "Medium Widget",
      "quantityOnHand": 10,
      "reorderThreshold": 10,
      "reorderAmount": 10,
      "deliveryLeadTime": 5
    },
    {
      "productId": 3,
      "description": "Large Widget",
      "quantityOnHand": 0,
      "reorderThreshold": 10,
      "reorderAmount": 20,
      "deliveryLeadTime": 5
    }
  ],
  "orders": [
    {
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
    },
    {
      "orderId": 1123,
      "status": "Pending",
      "dateCreated": "2018-05-09 14:21",
      "items": [
        {
          "orderId": 1123,
          "productId": 1,
          "quantity": 4,
          "costPerItem": 10.45
        },
        {
          "orderId": 1123,
          "productId": 2,
          "quantity": 3,
          "costPerItem": 20.95
        },
        {
          "orderId": 1123,
          "productId": 3,
          "quantity": 5,
          "costPerItem": 20.95
        }
      ]
    },
    {
      "orderId": 1124,
      "status": "Pending",
      "dateCreated": "2018-05-09 14:22",
      "items": [
        {
          "orderId": 1124,
          "productId": 1,
          "quantity": 1,
          "costPerItem": 10.45
        },
        {
          "orderId": 1124,
          "productId": 2,
          "quantity": 3,
          "costPerItem": 20.95
        }
      ]
    },
    {
      "orderId": 1125,
      "status": "Pending",
      "dateCreated": "2018-05-09 14:22",
      "items": [
        {
          "orderId": 1125,
          "productId": 1,
          "quantity": 6,
          "costPerItem": 10.45
        },
        {
          "orderId": 1125,
          "productId": 2,
          "quantity": 8,
          "costPerItem": 20.95
        },
        {
          "orderId": 1125,
          "productId": 3,
          "quantity": 3,
          "costPerItem": 20.95
        }
      ]
    }
  ]
}
  end 

  def self.products
  	self.data[:products]
  end 

  def self.orders
  	self.data[:orders]
  end 
end
