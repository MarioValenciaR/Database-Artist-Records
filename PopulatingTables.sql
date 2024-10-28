-- Populate the Genre Table
INSERT INTO Genre (GenreName, ParentGenreID) VALUES 
('Rock', NULL),
('Pop', NULL),
('Jazz', NULL),
('Classical', NULL),
('Hip Hop', NULL);

-- Populate the Artist Table
INSERT INTO Artist (Country, MainGenreID, FirstName, LastName, GrammyWins) VALUES 
('USA', 1, 'John', 'Doe', 2),         -- Individual (Rock)
('UK', 2, 'Jane', 'Smith', 1),        -- Individual (Pop)
('France', 3, 'Pierre', 'Dubois', 0), -- Individual (Jazz)
('Germany', 4, 'Hans', 'Schmidt', 0), -- Individual (Classical)
('Canada', 5, 'Emily', 'Clark', 1),   -- Individual (Hip Hop)
('USA', 1, NULL, NULL, 5),            -- Band (Rock)
('UK', 2, NULL, NULL, 3),             -- Band (Pop)
('Brazil', 3, NULL, NULL, 0),         -- Band (Jazz)
('Australia', 4, NULL, NULL, 2),      -- Band (Classical)
('Japan', 5, NULL, NULL, 1);          -- Band (Hip Hop)

-- Populate the IndividualArtist Table
INSERT INTO IndividualArtist (ArtistID, StageName, BirthYear, DebutYear) VALUES 
(1, 'Johnny Rock', 1980, 2000),
(2, 'Jane Pop', 1990, 2010),
(3, 'Pierre Jazz', 1975, 1995),
(4, 'Hans Classical', 1965, 1985),
(5, 'Emily Hip', 1985, 2005);

-- Populate the Band Table
INSERT INTO Band (ArtistID, BandName, FormationYear, MemberCount) VALUES 
(6, 'The Rockers', 1998, 4),
(7, 'Popstars', 2005, 5),
(8, 'Jazz Masters', 2010, 6),
(9, 'Classic Harmony', 1988, 3),
(10, 'Hip Hop Crew', 2002, 7);

-- Populate the Musician Table
INSERT INTO Musician (ArtistID, MainInstrument, SecondaryInstrument) VALUES 
(1, 'Guitar', 'Vocals'),
(2, 'Vocals', 'Piano'),
(3, 'Saxophone', 'Trumpet'),
(4, 'Violin', 'Piano'),
(5, 'Turntable', 'Drum Machine');

-- Populate the Producer Table
INSERT INTO Producer (ArtistID, Specialization, Studio) VALUES 
(1, 'Rock Production', 'Rock Studios'),
(2, 'Pop Mixing', 'Pop Sound Lab'),
(3, 'Jazz Mastering', 'Jazz House'),
(6, 'Music Production', 'Big Sound Studios'),
(7, 'Pop Production', 'Pop Music Inc');

-- Populate the Writer Table
INSERT INTO Writer (ArtistID, WriterType, PublishingCompany, LyricLanguage) VALUES 
(1, 'Lyricist', 'Rock Publishing', 'English'),
(2, 'Composer', 'Pop Tunes', 'English'),
(4, 'Arranger', 'Classic Notes', 'German'),
(8, 'Lyricist', 'Jazz Words', 'French'),
(10, 'Lyricist', 'Hip Hop Words', 'Japanese');

-- Populate the Album Table
INSERT INTO Album (Title, ReleaseYear, SongCount, Duration) VALUES 
('Rocking All Night', 2010, 12, 45),
('Pop Sensation', 2015, 10, 38),
('Jazz Grooves', 2012, 8, 42),
('Classical Greats', 2000, 15, 60),
('Hip Hop Beats', 2018, 11, 50);

-- Populate the AlbumArtist Table with ArtistRole included
INSERT INTO AlbumArtist (AlbumID, ArtistID, ArtistRole) VALUES 
(1, 6, 'Lead Band'),       -- The Rockers
(2, 7, 'Lead Band'),       -- Popstars
(3, 8, 'Lead Band'),       -- Jazz Masters
(4, 9, 'Lead Band'),       -- Classic Harmony
(5, 10, 'Lead Band'),      -- Hip Hop Crew
(1, 1, 'Collaborator'),    -- Johnny Rock
(2, 2, 'Collaborator'),    -- Jane Pop
(3, 3, 'Collaborator'),    -- Pierre Jazz
(4, 4, 'Collaborator'),    -- Hans Classical
(5, 5, 'Collaborator');    -- Emily Hip

-- Populate the AlbumGenre Table
INSERT INTO AlbumGenre (AlbumID, GenreID) VALUES 
(1, 1), -- Rock
(2, 2), -- Pop
(3, 3), -- Jazz
(4, 4), -- Classical
(5, 5); -- Hip Hop
