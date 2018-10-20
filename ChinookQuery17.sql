use Chinook

/*Provide a query that shows all Invoices but includes the # of
 invoice line items.*/

 select
	i.InvoiceId, 
	i.CustomerId, 
	i.InvoiceDate,
	i.BillingAddress, 
	i.BillingCity, 
	i.BillingCountry, 
	i.BillingPostalCode,
	i.Total,
	count(il.InvoiceLineId) as NumOfItems
 from Invoice i
 join InvoiceLine il
    on i.InvoiceId = il.InvoiceId
group by 
	i.InvoiceId, 
	i.CustomerId, 
	i.InvoiceDate,
	i.BillingAddress, 
	i.BillingCity, 
	i.BillingCountry, 
	i.BillingPostalCode,
	i.Total