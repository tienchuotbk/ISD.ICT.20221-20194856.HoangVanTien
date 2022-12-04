# 2.3  OUTLINING USE CASE PLACE ORDER

## Steps for placing order
1. Order placement *
2. Order payment *
3. Order approval
4. Delivery
5. Post order support

\* Required steps for a successful order

## Description
- A customer choose to place an order after selecting products and add them into the cart. The customer has to request to place an order, and perform order payment before the goods are delivered

## Actors
- Customers

## Flow of events
### Basic flow
- First, customer views the cart
- After having viewed the cart, customer can request to place the order
- AIMS software checks and the quantity of products in the stock and inform if there is not enough quantity
- Customer updates the cart according to current quantity states of items if needed
- After updates, customer requests place the order again
- Customer must provide a payment method ( local currency (VND) through prepaid credit card (by linking to interbank) /  credit cards )
- Customer updates delivery information and delivery instructions
- AIMS software validates customer's input

### Alternative flow
#### Exception
- Invalid user input for delivery information
- Unsupported delivery address

#### Alternative
- Customer chooses to place rush order
    - AIMS software checks if the items are available for rush order 
    - AIMS software combines the items that can be rushed
    - AIMS software schedules time for rush order