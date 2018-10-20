use Chinook

/**********************************************************

Query Number 25
Provide a query that shows the top 5 most purchased songs.

***********************************************************/

select top 5
  t.Name, count(t.Name) as NumberOrdered
from InvoiceLine il
join Track t
  on il.TrackId = t.TrackId
join Invoice i
  on i.InvoiceId = il.InvoiceId
group by t.Name
order by NumberOrdered desc