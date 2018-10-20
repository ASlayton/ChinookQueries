use Chinook

/**********************************************************

Query Number 26
Provide a query that shows the top 3 best selling artists.

***********************************************************/

select top 3
  a.Name, count(a.Name) as NumSold
from InvoiceLine il
join Track t
  on il.TrackId = t.TrackId
join Artist a
  on t.Composer = a.Name
group by a.Name
order by NumSold desc