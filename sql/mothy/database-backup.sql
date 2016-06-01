/* Backs up the data in the database tables. */
/* Retrieves the database. */
USE mothy;

/* Exports table data to CSV files. */
SELECT * FROM Users INTO OUTFILE 'User.csv'
    FIELDS TERMINATED BY ',';

SELECT * FROM Song INTO OUTFILE 'Song.csv'
    FIELDS TERMINATED BY ',';
    
SELECT * FROM Vocaloid INTO OUTFILE 'Vocaloid.csv'
    FIELDS TERMINATED BY ',';
    
SELECT * FROM Persona INTO OUTFILE 'Character.csv'
    FIELDS TERMINATED BY ',';
    
SELECT * FROM Appear INTO OUTFILE 'Role.csv'
    FIELDS TERMINATED BY ',';
    
SELECT * FROM Album INTO OUTFILE 'Album.csv'
    FIELDS TERMINATED BY ',';
    
SELECT * FROM Track INTO OUTFILE 'Track.csv'
    FIELDS TERMINATED BY ',';
    
SELECT * FROM Series INTO OUTFILE 'Series.csv'
    FIELDS TERMINATED BY ',';
    
SELECT * FROM Part INTO OUTFILE 'Part.csv'
    FIELDS TERMINATED BY ',';
    
SELECT * FROM Canon INTO OUTFILE 'Canon.csv'
    FIELDS TERMINATED BY ',';
    
SELECT * FROM Video INTO OUTFILE 'Video.csv'
    FIELDS TERMINATED BY ',';

SELECT * FROM Artist INTO OUTFILE 'Artist.csv'
    FIELDS TERMINATED BY ',';
