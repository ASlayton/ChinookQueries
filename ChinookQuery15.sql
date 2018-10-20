use Chinook

/***********************************************************

Number 15
Provide a query that shows the total number of tracks in
each playlist. The Playlist name should be include on the
resulant table.

************************************************************/

select
  PlaylistId as PlaylistId, 
  count(TrackId) as NumOfTracks
from PlaylistTrack
GROUP by PlaylistId

