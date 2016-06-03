/* Backs up the data in the database tables. */
/* Retrieves the database. */
USE mothy;

/* Exports table data to CSV files. */
SELECT * FROM Users INTO LOCAL OUTFILE 'data/User.csv'
    FIELDS TERMINATED BY ',';

SELECT * FROM Song INTO LOCAL OUTFILE 'data/Song.csv'
    FIELDS TERMINATED BY ',';
    
SELECT * FROM Vocaloid INTO LOCAL OUTFILE 'data/Vocaloid.csv'
    FIELDS TERMINATED BY ',';
    
SELECT * FROM Persona INTO LOCAL OUTFILE 'data/Character.csv'
    FIELDS TERMINATED BY ',';
    
SELECT * FROM Appear INTO LOCAL OUTFILE 'data/Role.csv'
    FIELDS TERMINATED BY ',';
    
SELECT * FROM Album INTO LOCAL OUTFILE 'data/Album.csv'
    FIELDS TERMINATED BY ',';
    
SELECT * FROM Track INTO LOCAL OUTFILE 'data/Track.csv'
    FIELDS TERMINATED BY ',';
    
SELECT * FROM Series INTO LOCAL OUTFILE 'data/Series.csv'
    FIELDS TERMINATED BY ',';
    
SELECT * FROM Part INTO LOCAL OUTFILE 'data/Part.csv'
    FIELDS TERMINATED BY ',';
    
SELECT * FROM Canon INTO LOCAL OUTFILE 'data/Canon.csv'
    FIELDS TERMINATED BY ',';
    
SELECT * FROM Video INTO LOCAL OUTFILE 'data/Video.csv'
    FIELDS TERMINATED BY ',';

SELECT * FROM Artist INTO LOCAL OUTFILE 'data/Artist.csv'
    FIELDS TERMINATED BY ',';
