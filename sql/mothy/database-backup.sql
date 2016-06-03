/* Backs up the data in the database tables. */
/* Retrieves the database. */
USE mothy;

/* Exports table data to CSV files. */
SELECT * FROM Users INTO OUTFILE '/var/lib/mysql-files/User.csv'
    FIELDS TERMINATED BY ',';

SELECT * FROM Song INTO OUTFILE '/var/lib/mysql-files/ec-web/data-mothy/Song.csv'
    FIELDS TERMINATED BY ',';
    
SELECT * FROM Vocaloid INTO OUTFILE '/var/lib/mysql-files/ec-web/data-mothy/Vocaloid.csv'
    FIELDS TERMINATED BY ',';
    
SELECT * FROM Persona INTO OUTFILE '/var/lib/mysql-files/Character.csv'
    FIELDS TERMINATED BY ',';
    
SELECT * FROM Appear INTO OUTFILE '/var/lib/mysql-files/ec-web/data-mothy/Role.csv'
    FIELDS TERMINATED BY ',';
    
SELECT * FROM Album INTO OUTFILE '/var/lib/mysql-files/ec-web/data-mothy/Album.csv'
    FIELDS TERMINATED BY ',';
    
SELECT * FROM Track INTO OUTFILE '/var/lib/mysql-files/ec-web/data-mothy/Track.csv'
    FIELDS TERMINATED BY ',';
    
SELECT * FROM Series INTO OUTFILE '/var/lib/mysql-files/ec-web/data-mothy/Series.csv'
    FIELDS TERMINATED BY ',';
    
SELECT * FROM Part INTO OUTFILE '/var/lib/mysql-files/ec-web/data-mothy/Part.csv'
    FIELDS TERMINATED BY ',';
    
SELECT * FROM Canon INTO OUTFILE '/var/lib/mysql-files/ec-web/data-mothy/Canon.csv'
    FIELDS TERMINATED BY ',';
    
SELECT * FROM Video INTO OUTFILE '/var/lib/mysql-files/ec-web/data-mothy/Video.csv'
    FIELDS TERMINATED BY ',';

SELECT * FROM Artist INTO OUTFILE '/var/lib/mysql-files/ec-web/data-mothy/Artist.csv'
    FIELDS TERMINATED BY ',';
