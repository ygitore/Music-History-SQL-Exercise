SELECT * FROM Genre


SELECT * FROM Artist 
ORDER BY Artist.ArtistName

SELECT
    Song.Id,
    Song.Title,
    Song.ReleaseDate
FROM Song
JOIN Artist artist ON Song.ArtistId = artist.Id;

SELECT album.id, Title, GenreId
FROM Album


SELECT * FROM SONG song
JOIN Artist artist ON artist.Id = song.ArtistId

select GenreId from Song s
join Genre g on g.Id = s.GenreId


SELECT artist.ArtistName 
FROM Artist artist
JOIN Album album ON album.ArtistId = artist.Id
JOIN Genre genre ON genre.Id = album.GenreId
where genre.Label = 'Pop' 

SELECT artist.ArtistName 
FROM Artist artist
JOIN Album album ON album.ArtistId = artist.Id
JOIN Genre genre ON genre.Id = album.GenreId
WHERE genre.Label = 'Jazz' OR genre.Label = 'Rock'

SELECT *
FROM Album album
Join Song s on s.AlbumId = album.Id
WHERE album.Id IS NULL


INSERT INTO Artist (ArtistName, YearEstablished) VALUES('Teddy Afro', 2000)


INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) VALUES('Fiyorina', '2010-10-11',100, 'Maraki', 28, 7)


INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES('Tikur Sew', 500, '2010-10-11', 2, 28, 23)


SELECT album.Title, song.Title, artist.ArtistName
FROM Song song 
LEFT JOIN Artist artist ON artist.Id = song.ArtistId 
LEFT JOIN Album album ON album.Id = song.AlbumId
WHERE artist.ArtistName = 'Teddy afro' AND album.Title = 'Fiyorina';


select album.title, count(album.id) as 'Album count' 
from song song 
join album album on album.id = song.albumid
group by album.title;



SELECT artist.ArtistName, Count(artist.Id) AS 'Artist Count' 
FROM Song song 
JOIN Artist artist ON artist.Id = song.ArtistId
GROUP By artist.ArtistName;



SELECT genre.Label, Count(genre.Id) AS 'Genre Count' 
FROM Song song 
JOIN Genre genre ON genre.Id = song.GenreId
GROUP By genre.Label;



SELECT artist.ArtistName, COUNT(album.Label) AS 'Record Label'
FROM Artist artist
JOIN Album album ON album.ArtistId = artist.Id
GROUP By artist.ArtistName
HAVING COUNT(album.Label) > 2;



SELECT album.Title, MAX(album.AlbumLength) AS 'Album with Longes Duration'
FROM Album album
GROUP BY album.Title



SELECT song.Title, MAX(song.SongLength) AS 'Album with Longes Duration'
FROM Song song
GROUP BY song.Title





