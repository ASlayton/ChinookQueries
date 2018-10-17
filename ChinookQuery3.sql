use Chinook

/*
Provide a query showing the Invoices of customers who are from Brazil. 
The resultant table should show the customer's full name, Invoice ID, 
Date of the invoice and billing country.
*/

select 
  FullName = FirstName + ' ' + LastName,
  InvoiceId,
  InvoiceDate,
  BillingCountry
from customer c
join Invoice i
 on c.CustomerId = i.CustomerId
where country = 'Brazil'