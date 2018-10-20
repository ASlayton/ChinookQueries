use Chinook

/************************************************************

Number 12
Provide a query that includes the purchased track name with 
each invoice line item.

************************************************************/

Select *
From InvoiceLine i
Join Track t
On i.TrackId = t.TrackId
Order by InvoiceLineId