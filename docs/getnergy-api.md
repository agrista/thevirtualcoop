We’ve published UAT API http://uat.wholesale.gurrom.co.za/api/
To access the API calls via code and postman, you need to use authorization key: 53c36fe4dc247cfae16fce2d3b686e43
 
So far, we have 2 methods:
Create a quote
Get Supplier points
 
Creating a quote:
Method name: quote/create
HTTP Type: Post
Request data:
String EnternalRefNo
Unique Odoo reference number
Int ProductID
Only doing 50PPM for now. Default to 2
Int SalesTermsID
2 drop-down options:
COC (Set the SalesTermsID = 6)
Delivered (Set the SalesTermsID = 7)
Int SupplierPointID
If Sales Term = COC, then SupplierPointID must be supplied
More on how to obtain the SupplierPointID described below
String DeliveryGPSCoordinates
E.g., -26.2296146, 28.0781607
If Sales Term = Delivered, then the GPS Coordinates must be supplied
Decimal Units
Represents the # of litres e.g., 500.45
Response data
If no error is found, we will return a successful response.
See attached class file show the response model called QuoteResponseModel on line 27
Models QuoteOpco, QuoteBody & QuoteDetail will only return 1 row
Models QuoteBankingDetail & QuoteNote can return many
The response will represent all of the data that you see in the attached quotes
Quote 1482 is a Delivered example
Quote 1483 is a Delivered example
I’m currently finalising this method. Aiming for tomorrow morning.
 
Get Supplier Pickup Points:
Method name: supplier/points/
HTTP Type: Get
Request data:
Int SupplierID
Default to 6
Example below
Response data
If no error is found, we will return a successful response.
Response example below
Use PointName in a dropdown when Sales Term = COC is chosen
Save SupplierPointID when a PointName is chosen and pass that through when calling create quote
This method is ready to use