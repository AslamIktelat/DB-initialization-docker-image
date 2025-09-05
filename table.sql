CREATE TABLE IF NOT EXISTS :schemaname.context (
	uuid varchar NOT NULL,
	context varchar NOT NULL,
	PRIMARY KEY (uuid)
);
CREATE TABLE IF NOT EXISTS :schemaname.log (
	uuid varchar NOT NULL,
	operation varchar NOT NULL,
	status varchar NOT NULL
);