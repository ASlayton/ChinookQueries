use Chinook
/*
Provide a query that shows the most purchased track of 2013.
*/

select top 1 
  t.Name, count(t.Name) as NumberOrdered
from InvoiceLine il
join Track t
  on il.TrackId = t.TrackId
join Invoice i
  on i.InvoiceId = il.InvoiceId
where datepart(yyyy, i.InvoiceDate) between 2013 and 2014
group by t.Name
order by NumberOrdered desc