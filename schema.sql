CREATE TABLE googlers
(
        googlerID integer UNIQUE NOT NULL,
        googlerSearchKeyWord varchar(50) NOT NULL,
		googlerCorKeyWord varchar(50) NOT NULL,
        PRIMARY KEY(googlerID)
);

CREATE TABLE googlersExport
(
        googlerID integer NOT NULL,
        googlerSearchKeyWord varchar(50) NOT NULL,
);

CREATE PROCEDURE VoltDBLoader AS
        INSERT INTO googlers (googlerID, googlerSearchKeyWord)
                VALUES (?,?);

EXPORT TABLE googlersExport;

CREATE PROCEDURE VoltDBExportLoader AS
        INSERT INTO googlersExport SELECT googlerID,googlerSearchKeyWord FROM googlers WHERE googlerID<5000;
