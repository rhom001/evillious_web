/* Updates the tables in the database. */
/* Selects mothy database. */
USE mothy;

/* Drops the tables. */
DROP TABLE Artist;
DROP TABLE Video;
DROP TABLE Canon;
DROP TABLE Part;
DROP TABLE Series;
DROP TABLE Track;
DROP TABLE Album;
DROP TABLE Appear;
DROP TABLE Persona;
DROP TABLE Vocaloid;
DROP TABLE Song;
DROP TABLE Users;

/* Creates the tables. */
/* Creates the Users table. */
/* Contains the username, password, and their user level. */
/* Level 1 users can change their password and delete their account. */
/* Level 2 users can do level 1 user functions and also add, delete, or update other accounts. */
CREATE TABLE Users(
    uname CHAR(20) UNIQUE NOT NULL,
    passwd CHAR(20) NOT NULL,
    ulevel INT NOT NULL,
    PRIMARY KEY(uname)
);

/* Creates the Song table. */
/* Contains the song's title, alternate (English) title, release date, song id, and lyrics file path. */
/* An alternate (English) title may exist. */
/* Triggers generate the song id and the lyrics file path. */
CREATE TABLE Song(
    title CHAR(30) UNIQUE NOT NULL,
    alt CHAR(30) UNIQUE,
    sdate DATE NOT NULL,
    sid INT UNIQUE NOT NULL,
    lyrics CHAR(40) UNIQUE NOT NULL,
    PRIMARY KEY(sid)
);

/* Creates the Vocaloid table. */
/* Contains the vocaloid name, color, and secondary color. */
/* There may be a secondary color for multiple roles. */
CREATE TABLE Vocaloid(
    vname CHAR(30) UNIQUE NOT NULL,
    color1 CHAR(7) UNIQUE NOT NULL,
    color2 char(7) UNIQUE,
    PRIMARY KEY(vname)
);

/* Creates the Persona table. */
/* Contains the character name, the name of the vocaloid who plays them, and character id. */
/* Trigger generates the character id. */
CREATE TABLE Persona(
    cname CHAR(30) UNIQUE NOT NULL,
    vname CHAR(30) NOT NULL,
    cid INT UNIQUE NOT NULL,
    FOREIGN KEY(vname) REFERENCES Vocaloid(vname),
    PRIMARY KEY(cid)
);

/* Creates the Appear table. */
/* Contains the character id, song id, and if the character only shows up in the PV. */
CREATE TABLE Appear(
    cid INT NOT NULL,
    sid INT NOT NULL,
    appears CHAR(10),
    FOREIGN KEY(cid) REFERENCES Persona(cid),
    FOREIGN KEY(sid) REFERENCES Song(sid),
    PRIMARY KEY(sid, cid)
);

/* Creates the Album table. */
/* Contains the album title, release date, and the album id. */
/* Trigger generates the album id. */
CREATE TABLE Album(
    atitle CHAR(30) UNIQUE NOT NULL,
    rdate DATE NOT NULL,
    aid INT UNIQUE NOT NULL,
    PRIMARY KEY(aid)
);

/* Creates the Track table. */
/* Contains the album id, song id, track number, and song title. */
CREATE TABLE Track(
    aid INT NOT NULL,
    sid INT,
    tnum INT NOT NULL,
    salias CHAR(30) NOT NULL,
    FOREIGN KEY(aid) REFERENCES Album(aid),
    FOREIGN KEY(sid) REFERENCES Song(sid),
    PRIMARY KEY(aid, tnum)
);

/* Creates the Series table. */
/* Contains the series name and series id. */
/* Trigger generates the series id. */
CREATE TABLE Series(
    sname CHAR(30) UNIQUE NOT NULL,
    nid INT UNIQUE NOT NULL,
    PRIMARY KEY(nid)
);

/* Creates the Part table. */
/* Contains the series id, song id, and the part order number. */
CREATE TABLE Part(
    nid INT NOT NULL,
    sid INT NOT NULL,
    pnum INT NOT NULL,
    FOREIGN KEY(sid) REFERENCES Song(sid),
    FOREIGN KEY(nid) REFERENCES Series(nid),
    PRIMARY KEY(nid, sid)
);

/* Creates the Canon table. */
/* Contains the song id, and what year it takes place in. */
CREATE TABLE Canon(
    sid INT UNIQUE NOT NULL,
    ec INT,
    FOREIGN KEY(sid) REFERENCES Song(sid)
);

/* Creates the Video table. */
/* Contains the song id, upload date, video link, and video id. */
/* Trigger generats the video id. */
CREATE TABLE Video(
    sid INT NOT NULL,
    upload DATE NOT NULL,
    vlink CHAR(30) UNIQUE NOT NULL,
    vid INT UNIQUE NOT NULL,
    FOREIGN KEY(sid) REFERENCES Song(sid),
    PRIMARY KEY(vid)
);

/* Creates the Artist table. */
/* Contains the video id, and artist name. */
CREATE TABLE Artist(
    vid INT NOT NULL,
    aname INT NOT NULL,
    FOREIGN KEY(vid) REFERENCES Video(vid)
);

/* Generates the data for each table. */
LOAD DATA LOCAL INFILE 'data/User.csv' INTO TABLE Users
    FIELDS TERMINATED BY ',';
    
LOAD DATA LOCAL INFILE 'data/Song.csv' INTO TABLE Song
    FIELDS TERMINATED BY ',';
    
LOAD DATA LOCAL INFILE 'data/Vocaloid.csv' INTO TABLE Vocaloid
    FIELDS TERMINATED BY ',';
    
LOAD DATA LOCAL INFILE 'data/Character.csv' INTO TABLE Persona
    FIELDS TERMINATED BY ',';
    
LOAD DATA LOCAL INFILE 'data/Role.csv' INTO TABLE Appear
    FIELDS TERMINATED BY ',';
    
LOAD DATA LOCAL INFILE 'data/Album.csv' INTO TABLE Album
    FIELDS TERMINATED BY ',';
    
LOAD DATA LOCAL INFILE 'data/Track.csv' INTO TABLE Track
    FIELDS TERMINATED BY ',';
    
LOAD DATA LOCAL INFILE 'data/Series.csv' INTO TABLE Series
    FIELDS TERMINATED BY ',';
    
LOAD DATA LOCAL INFILE 'data/Part.csv' INTO TABLE Part
    FIELDS TERMINATED BY ',';
    
LOAD DATA LOCAL INFILE 'data/Canon.csv' INTO TABLE Canon
    FIELDS TERMINATED BY ',';
    
LOAD DATA LOCAL INFILE 'data/Video.csv' INTO TABLE Video
    FIELDS TERMINATED BY ',';
    
LOAD DATA LOCAL INFILE 'data/Artist.csv' INTO TABLE Artist
    FIELDS TERMINATED BY ',';
