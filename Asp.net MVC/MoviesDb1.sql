create database MoviesDB

Create Table Movie(
 Mid int Primary Key NOT NULL,
 Moviename Varchar(50) NOT NULL,
 DateofRelease Date NOT NULL
);

INSERT INTO Movie Values (1, 'The Matrix', '1999-03-31');
INSERT INTO Movie Values (2, 'Need For Speed', '2015-09-03');
INSERT INTO Movie Values (3, 'Martian', '2015-10-2');
INSERT INTO Movie Values (4, 'The Pursuit of Happyness', '2006-12-15');


SELECT * FROM Movie;


UPDATE Movie
SET Moviename = 'The Matrix Reloaded'
WHERE Mid = 1;

DELETE FROM Movie
WHERE Mid = 2;

