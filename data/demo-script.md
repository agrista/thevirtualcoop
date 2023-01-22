# Winfield United SA on The Virtual Co-op

#### Roles

| User                       | Role      | User Name          | Password                |
| -------------------------- | --------- | ------------------ | ----------------------- |
| Get Energy Admin           | Mechant   | getenergy          | getenergy@1234          |
| Cathedral Peak Wines Admin | Farmer    | cathedralpeakwines | cathedralpeakwines@1234 |
| Virtual Farmer Admin       | Financier | virtualfarmer      | virtualfarmer@1234      |

#### 

### Scenario 1: Farmer requests diesel quoation from Virtual Fuels

1. **Farmer** goes to the  [Virtual Fuels store](https://virtualfuels.staging.thevirtualcoop.net) and signs in.
2. The  **Farmer** then clicks on **Shop** in the menu to view products made available by Virtual Fuels. He selects **Diesel 50ppm**.
3. The product detail page shows the list price. The **Farmer** selects the quantity he would like to order and then clicks on the **Add to quote** button.
4. On the **Review Order** page the **Farmer** clicks on **Process Quote**. 
5. On the **Address** page he completes his address details. The system prompts him if he hasn't filled all the required details.
6. After veryfing the address details, the **Farmer** clicks on the **Submit Quote** button. He then is notified that the quotation has been submitted.
7. The **Get Energy Admin** now signs in on the  [Virtual Co-op website](https://www.staging.thevirtualcoop.net). He clicks on the **Sales** application, and selects **Quotations** under the **Orders** menu. On this page he updates the product price on the **Order Lines** tab, He also sets the expiry date. He could also assign a Salesperson on the **Other Info** tab.
8. He now has the option of sending the quotation by email. For demonsration purposes we will generate a link to the quoation by clicking on the **Action** menu and then **Mark Quotation as Sent**. He then clicks on **Share** in the same menu to generate a secure link to the quotation. He then copies the link by clickin on **Copy Text**. He can then share the link by pasting it into WhatsApp or an email to the **Farmer**.
9. The **Farmer** clicks on the link to open the quotation. He approves by clicking on the **Accept & Sign** button. 
10. The **Farmer** then clicks on the **Pay Now** button. He then fills in the Virtual Farmer contract number he would like to use for payment. A confirmation is then displayed to confirm that the order has been submitted for payment approval.
11. The **Virtual Farmer Admin** signs in on  [Virtual Co-op website](https://www.staging.thevirtualcoop.net) and goes to the **Invoicing** app. He then clicks on the **Procurement Account** link in the **Accounting** menu. he then selects the procurement account for Cathedral Peak Wines and clicks on the new payment transaction in the **Payments** tab. He selects the transaction and clicks on the **Authorize Transaction** to approve it. He now switched to the Get Energy company in the dropdown in the navbar. He then goes to to **Sales** modules and finds the sales order he just authorized. He then confirms the sales order.
12. The **Get Energy Admin** now goes to Sales > Orders and captures the delivered quantity by clicking on the transaction icon next to the order line. He then marks the quantity delivered. He then clicks on Validate to confirm the delivery. He now clicks on the Sales Order and then generates an invoice.
13. For the demo emails have not been configured. In production the invoice will be sent to farmer for payment. 
14. The **Farmer** can see the order status on the customer portal.

