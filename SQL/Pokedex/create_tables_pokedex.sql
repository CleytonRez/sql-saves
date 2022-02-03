CREATE TABLE pokemon (
	id VARCHAR(255),
	name VARCHAR(255),
	strength DOUBLE PRECISION,
	defense DOUBLE PRECISION,
	PRIMARY KEY (id)

);

SELECT * FROM pokemon;

CREATE TABLE element (
	id VARCHAR(255),
	name VARCHAR(255),
	PRIMARY KEY(id)
	
);

SELECT * FROM element;

CREATE TABLE abilities (
	id VARCHAR(255),
	name VARCHAR(255),
	power DOUBLE PRECISION,
	pokemon_id_fk VARCHAR(255)NOT NULL,
	element_id_fk VARCHAR(255) NOT NULL,
	PRIMARY KEY(id),
	FOREIGN KEY(pokemon_id_fk) REFERENCES pokemon(id),
	FOREIGN KEY(element_id_fk) REFERENCES element(id)
	
);

SELECT * FROM abilities;

CREATE TABLE weaknessess (
	id VARCHAR(255),
	pokemon_id_fk VARCHAR(255)NOT NULL,
	element_id_fk VARCHAR(255)NOT NULL,
	PRIMARY KEY(id),
	FOREIGN KEY(pokemon_id_fk) REFERENCES pokemon(id),
	FOREIGN KEY(element_id_fk) REFERENCES element(id)

);

SELECT * FROM weaknessess;








