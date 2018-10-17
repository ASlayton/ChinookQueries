use Chinook

/*
Provide a query that includes the purchased track name AND artist name with each invoice line item.
*/

Select 
  i.InvoiceLineId,
  t.Name,
  t.Composer
From InvoiceLine i
Join Track t
On i.TrackId = t.TrackId
Order by InvoiceLineId