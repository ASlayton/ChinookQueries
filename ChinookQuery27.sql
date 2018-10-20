use Chinook

/**********************************************************

Query Number 27
Provide a query that shows the most purchased Media Type.

***********************************************************/

select top 1
  m.Name, count(m.Name) as TotalPurchased
from InvoiceLine il
join Track t
  on il.TrackId = t.TrackId
join MediaType m
  on t.MediaTypeId = m.MediaTypeId
group by m.Name
order by TotalPurchased desc
