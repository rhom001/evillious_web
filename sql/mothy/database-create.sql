/* Creates a database for mothy's work */
/* Creates the database if it doesn not exist */
CREATE DATABASE IF NOT EXISTS mothy;

/* Selects database */
USE mothy;

/* Creates the tables. */
/* Creates the Users table. */
CREATE TABLE Users(
    uname CHAR(20) UNIQUE NOT NULL,
    passwd CHAR(20) NOT NULL,
    ulevel INT NOT NULL,
    PRIMARY KEY(uname)
);

/* Creates the Song table. */
CREATE TABLE Song(
    title CHAR(30) UNIQUE NOT NULL,
    alt CHAR(30) UNIQUE,
    sdate DATE NOT NULL,
    sid INT UNIQUE NOT NULL,
    lyrics CHAR(40) UNIQUE NOT NULL,
    PRIMARY KEY(sid)
);

/* Creates the Vocaloid table. */
CREATE TABLE Vocaloid(
    vname CHAR(30) UNIQUE NOT NULL,
    color1 CHAR(7) UNIQUE NOT NULL,
    color2 char(7) UNIQUE,
    PRIMARY KEY(vname)
);

/* Creates the Persona table. */
CREATE TABLE Persona(
    cname CHAR(30) UNIQUE NOT NULL,
    vname CHAR(30) NOT NULL,
    cid INT UNIQUE NOT NULL,
    FOREIGN KEY(vname) REFERENCES(Voca loid),
    PRIMARY KEY(cid)
);

/* Creates the Appear table. */
CREATE TABLE Appear(
    cid INT NOT NULL,
    sid INT NOT NULL,
    appears CHAR(10),
    FOREIGN KEY(cid) REFERENCES(Persona),
    FOREIGN KEY(sid) REFERENCES(Song),
    PRIMARY KEY(sid, cid)
);

/* Creates the Album table. */
CREATE TABLE Album(
    atitle CHAR(30) UNIQUE NOT NULL,
    rdate DATE NOT NULL,
    aid INT UNIQUE NOT NULL,
    PRIMARY KEY(aid)
);

/* Creates the Track table. */
CREATE TABLE Track(
    aid INT NOT NULL,
    sid INT,
    tnum INT NOT NULL,
    salias CHAR(30) NOT NULL,
    FOREIGN KEY(aid) REFERENCES(Album),
    FOREIGN KEY(sid) REFERENCES(Song),
    PRIMARY KEY(aid, tnum)
);

/* Creates the Series table. */
CREATE TABLE Series(
    sname CHAR(30) UNIQUE NOT NULL,
    nid INT UNIQUE NOT NULL,
    PRIMARY KEY(nid)
);

/* Creates the Part table. */
CREATE TABLE Part(
    nid INT NOT NULL,
    sid INT NOT NULL,
    pnum INT NOT NULL,
    PRIMARY KEY(nid, sid)
);

/* Creates the Canon table. */
CREATE TABLE Canon(
    sid INT UNIQUE NOT NULL,
    ec INT,
    FOREIGN KEY(sid) REFERENCES(Song)
);

/* Creates the Video table. */
CREATE TABLE Video(
    sid INT NOT NULL,
    upload DATE NOT NULL,
    vlink CHAR(30) UNIQUE NOT NULL,
    vid INT UNIQUE NOT NULL,
    FOREIGN KEY(sid) REFERENCES(Song)
    PRIMARY KEY(vid)
);

/* Creates the Artist table. */
CREATE TABLE Artist(
    vid INT NOT NULL,
    aname INT NOT NULL,
    FOREIGN KEY(vid) REFERENCES(Video)
);
