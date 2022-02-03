/*
-- ADD POKEMONS
INSERT INTO pokemon (id, name, strength, defense)
VALUES('12321','Pikachu',100, 30);
INSERT INTO pokemon (id, name, strength, defense)
VALUES('23432','Squirtle',90, 50);

SELECT * FROM pokemon

-- ADD ELEMENTS
INSERT INTO element (id, name)
VALUES ('1', 'eletric');
INSERT INTO element (id, name)
VALUES ('2', 'fire');
INSERT INTO element (id, name)
VALUES ('3', 'water');
INSERT INTO element (id, name)
VALUES ('4', 'earth');

SELECT * FROM element

-- ADD WEAKNESSESS
INSERT INTO weaknessess (id, pokemon_id_fk, element_id_fk)
VALUES ('35', '12321', '3')
INSERT INTO weaknessess (id, pokemon_id_fk, element_id_fk)
VALUES ('345', '23432', '1')

SELECT * FROM weaknessess

-- ADD ABILITIES
INSERT INTO abilities (id, name, power, pokemon_id_fk, element_id_fk)
VALUES ('21','Shot', 30, '12321','1')
INSERT INTO abilities (id, name, power, pokemon_id_fk, element_id_fk)
VALUES ('231','Shot Water', 30, '23432','3')

SELECT * FROM abilities
*/

SELECT * FROM pokemon INNER JOIN abilities ON pokemon.id = abilities.pokemon_id_fk

SELECT * FROM pokemon INNER JOIN weaknessess ON pokemon.id = weaknessess.pokemon_id_fk


