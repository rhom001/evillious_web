/* Backs up the data in the database tables. */
/* Retrieves the database. */
USE mothy;

/* Exports table data to CSV files. */
SELECT * FROM Users INTO OUTFILE '/var/lib/mysql-files/User.csv'
    FIELDS TERMINATED BY ',';

SELECT * FROM Song INTO OUTFILE '/var/lib/mysql-files/Song.csv'
    FIELDS TERMINATED BY ',';
    
SELECT * FROM Vocaloid INTO OUTFILE '/var/lib/mysql-files/Vocaloid.csv'
    FIELDS TERMINATED BY ',';
    
SELECT * FROM Persona INTO OUTFILE '/var/lib/mysql-files/Character.csv'
    FIELDS TERMINATED BY ',';
    
SELECT * FROM Appear INTO OUTFILE '/var/lib/mysql-files/Role.csv'
    FIELDS TERMINATED BY ',';
    
SELECT * FROM Album INTO OUTFILE '/var/lib/mysql-files/Album.csv'
    FIELDS TERMINATED BY ',';
    
SELECT * FROM Track INTO OUTFILE '/var/lib/mysql-files/Track.csv'
    FIELDS TERMINATED BY ',';
    
SELECT * FROM Series INTO OUTFILE '/var/lib/mysql-files/Series.csv'
    FIELDS TERMINATED BY ',';
    
SELECT * FROM Part INTO OUTFILE '/var/lib/mysql-files/Part.csv'
    FIELDS TERMINATED BY ',';
    
SELECT * FROM Canon INTO OUTFILE '/var/lib/mysql-files/Canon.csv'
    FIELDS TERMINATED BY ',';
    
SELECT * FROM Video INTO OUTFILE '/var/lib/mysql-files/Video.csv'
    FIELDS TERMINATED BY ',';

SELECT * FROM Artist INTO OUTFILE '/var/lib/mysql-files/Artist.csv'
    FIELDS TERMINATED BY ',';
