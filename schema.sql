CREATE TABLE googlers
(
        googlerID integer UNIQUE NOT NULL,
        googlerName varchar(50) NOT NULL,
        PRIMARY KEY(googlerID)
);

CREATE TABLE googlersExport
(
        googlerID integer NOT NULL,
        googlerName varchar(50) NOT NULL,
);

EXPORT TABLE googlersExport;

CREATE PROCEDURE teeLoader AS
        INSERT INTO googlersExport (googlerID, googlerName)
                VALUES (?,?);
