CREATE USER myuser;
CREATE DATABASE mydb;
GRANT ALL PRIVILEGES ON DATABASE mydb TO myuser;
ALTER DATABASE mydb OWNER TO myuser;

\connect mydb
CREATE TABLE pejemplo
(
	clave integer NOT NULL,
	nombre character varying,
	direccion character varying,
	CONSTRAINT pk_clave PRIMARY KEY (clave)
);

ALTER TABLE pejemplo OWNER TO myuser;
