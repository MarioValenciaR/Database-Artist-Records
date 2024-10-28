-- Select all data from each table

SELECT * FROM Genre;
SELECT * FROM Artist;
SELECT * FROM Band;
SELECT * FROM IndividualArtist;
SELECT * FROM Musician;
SELECT * FROM Producer;
SELECT * FROM Writer;
SELECT * FROM Album;
SELECT * FROM AlbumArtist;
SELECT * FROM AlbumGenre;

-- Show Artists with their Main Genre
SELECT a.ArtistID, a.FirstName, a.LastName, g.GenreName AS MainGenre
FROM Artist a
JOIN Genre g ON a.MainGenreID = g.GenreID;

-- Show Individual Artists with their Stage Name
SELECT ia.ArtistID, ia.StageName, a.FirstName, a.LastName
FROM IndividualArtist ia
JOIN Artist a ON ia.ArtistID = a.ArtistID;

-- Show Bands with their Band Name and Member Count
SELECT b.ArtistID, b.BandName, b.MemberCount, a.Country
FROM Band b
JOIN Artist a ON b.ArtistID = a.ArtistID;

-- Show Albums with their Artists and Roles
SELECT al.AlbumID, al.Title, aa.ArtistID, aa.ArtistRole, a.FirstName, a.LastName
FROM AlbumArtist aa
JOIN Album al ON aa.AlbumID = al.AlbumID
JOIN Artist a ON aa.ArtistID = a.ArtistID;

-- Show Albums with Genres
SELECT al.AlbumID, al.Title, g.GenreName
FROM AlbumGenre ag
JOIN Album al ON ag.AlbumID = al.AlbumID
JOIN Genre g ON ag.GenreID = g.GenreID;


-- List Musicians and Their Instruments
SELECT m.ArtistID, a.FirstName, a.LastName, m.MainInstrument, m.SecondaryInstrument
FROM Musician m
JOIN Artist a ON m.ArtistID = a.ArtistID;

-- List Producers and Their Studios
SELECT p.ArtistID, a.FirstName, a.LastName, p.Specialization, p.Studio
FROM Producer p
JOIN Artist a ON p.ArtistID = a.ArtistID;

-- List Writers and Their Publishing Company
SELECT w.ArtistID, a.FirstName, a.LastName, w.WriterType, w.PublishingCompany
FROM Writer w
JOIN Artist a ON w.ArtistID = a.ArtistID;

-- Albums and Collaborations by Genre
SELECT g.GenreName, al.Title AS AlbumTitle, a.FirstName, a.LastName, aa.ArtistRole
FROM AlbumGenre ag
JOIN Genre g ON ag.GenreID = g.GenreID
JOIN Album al ON ag.AlbumID = al.AlbumID
JOIN AlbumArtist aa ON al.AlbumID = aa.AlbumID
JOIN Artist a ON aa.ArtistID = a.ArtistID;
-- Count Artists by Genre
SELECT g.GenreName, COUNT(a.ArtistID) AS NumberOfArtists
FROM Artist a
JOIN Genre g ON a.MainGenreID = g.GenreID
GROUP BY g.GenreName;

-- Count Albums by Genre
SELECT g.GenreName, COUNT(al.AlbumID) AS NumberOfAlbums
FROM AlbumGenre ag
JOIN Genre g ON ag.GenreID = g.GenreID
JOIN Album al ON ag.AlbumID = al.AlbumID
GROUP BY g.GenreName;

-- Count Collaborators per Album
SELECT al.Title, COUNT(aa.ArtistID) AS NumberOfCollaborators
FROM Album al
JOIN AlbumArtist aa ON al.AlbumID = aa.AlbumID
GROUP BY al.Title;
