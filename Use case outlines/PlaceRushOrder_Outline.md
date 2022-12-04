# 2.3  OUTLINING USE CASES “Place rush order"
 Similar with "Place Order", but some steps is different.
# Basic flow

| Step | Actor | Activity |
| ------------ | ----- | -------- |
| 1 | Customer | Customer views the cart | 
| 2 | Customer | After having viewed the cart, customer can request to place the order |
| 3 | System | AIMS software checks and the quantity of products in the stock and inform if there is not enough quantity |
| 4 | Customer | Updates products if inneed, customer requests place the order again |
| 5 | Customer |  Update the delivery information and choose to place a rush order |
| 6 | System | NIMS Software validates customer input (supported products, supported address) |
| 7 | Customer |  Update rush order info |
| 8 | System |  Calculate the shipping fees |
| 9 | Customer |  Provide a payment method and pay |


# Alternative flow

| Step | Actor | Activity |
| ------------ | ----- | -------- |
| 6 | System | If there is no support either from any media or the shipping address, the software would notify the customer and ask the customer to update delivery information | 
