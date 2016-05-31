# Evillious Chronicles Library (EC Web)
## Note:
This is a web version of the Evillious Chronicles library project, (abbreviated as EC Web), created through a web development tools. Besides allowing for information about Evillious Chronicles to be displayed, it will also allow for more visual information to be presented.

Although PHP will be used to display the information, the information itself will be stored in a MySQL database.

## Table of Contents
* [Evillious Chronicles Library (Web) Overview](#sec1)
  * [Project Objectives](#sec1-1)
  * [Required Information](#sec1-2)
* [EC Web Directory Structure](#sec2)

## <a name="sec1">Evillious Chronicles Library (Web) Overview</a>
### <a name="sec1-1">Project Objectives</a>
The following are some objectives for the program for its usability.

* Create a LAMP-based program that allows access to information.
  * Displays the information using PHP.
  * SQL databases is used to store the information.
* Can use PHP interface to modify data.
  * Will be able to add, remove, or update data in database using this method.
* Only allows certain users to do modification.
  * Have a database of users and their information (username, password, privilege).
* Save database information to export to another database/system.
  * The database backup should be easy for the machine to read from and write to.
* Scripts should be written to call commands needed to set up the program.
  * Need a way to open program on to the browser.
  
### <a name="sec1-2">Required Information
The following is the groundwork for the types of data that will be stored in the SQL database. This will eventually be displayed on the PHP interface.

* _Users_ are able to login to do adding, updating, and deleting various types of information.
  * There are different privilege levels:
    * 0 = guest user.
      * Default user.
      * Can only view things.
    * 1 = basic user.
      * _Needs_ to sign up.
      * Can make suggested changes to information (that do not apply to other users' information) via a log request that is sent to an administrative user.
    * 2 = administrator
      * Can make _actual_ changes to information by interacting with the database directly via over the interface.
      * Can look over the basic user's requests.
      * Can change other users' information.
* _Songs_ are the basis of this progrmam and need to be _uniquely_ _id_entified.
  * All songs _need_:
    * _Title_
    * Release _date_
    * Vocalist (_vocaloid_ and _character_)
    * _Lyrics_
  * Songs _may_ have:
    * _Albums_
      * May have different versions
    * _Videos_
    * Part of a _series_
    * Be part of the EC _canon_
* _Albums_ are a collection of songs.
  * Songs may have different versions on the album as different tracks.
  * Albums _must_ have:
    * A _unique id_entifier
    * An album title
    * A release _date_
    * _Tracks_
      * Consists of a title and possibly the id of a song.
* _Series_ are another type of collection of songs.
  * Songs may appear in multiple series
  * A series _must_ have a:
    * _Unique id_
    * Series _title_
    * Certain _order_ of songs
* An official _video_ may exist for a song
  * The video _must_ have:
    * _Upload_ date
    * List of _illustrator_(s)
    * An indication of which _song_ it belongs to
* Most of the sogns are part of a _canon_ of sorts.
  * This _can_ consist of 
    * Which _canon_ it is part of
    * Additional information
      * Depends on the canon
* Each song has at least one _role_ who contributes vocally.
  * In this case,
    * Which _vocaloid_ is used
      * Important for determining certain displays
    * Which _character_ they portray

## <a name="sec2">EC Web Directory</a>
To keep the program organized, there will be directories based on the source files.
