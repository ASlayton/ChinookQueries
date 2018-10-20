use Chinook

/***********************************************************

Number 16
Provide a query that shows all the Tracks, but displays no 
IDs.  The result should include the Album name, Media type
and Genre.

************************************************************/

select distinct a.Title, m.Name, g.Name
from Album a
join Track t
on a.AlbumId = t.AlbumId
join MediaType m
on t.MediaTypeId = m.MediaTypeId
join Genre g
on t.GenreId = g.GenreId