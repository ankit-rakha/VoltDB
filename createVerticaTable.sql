DROP TABLE voltdb.iostatsVoltDB cascade;
CREATE TABLE voltdb.iostatsVoltDB (
	TIMESTAMP INTEGER,
	HOST_ID INTEGER,
	HOSTNAME VARCHAR(64),
	CONNECTION_ID INTEGER,
	CONNECTION_HOSTNAME VARCHAR(64),
	BYTES_READ INTEGER,
	MESSAGES_READ INTEGER,
	BYTES_WRITTEN INTEGER,
	MESSAGES_WRITTEN INTEGER
);