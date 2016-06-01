/* Backs up the data in the database tables. */
/* Exports table data to CSV files. */
SELECT * FROM Users INTO OUTFILE 'User.csv'
    FIELDS TERMINATED BY ','
    LINES TERMINATED BY '\r\n'
