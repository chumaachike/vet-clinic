/* Populate database with sample data. */

 INSERT INTO animals (id, name, date_of_birth, escape_attempts, nutered, weight_kg) VALUES (1, 'Agumon', '2020-02-03', 0, true, 10.23);
 INSERT INTO animals (id, name, date_of_birth, escape_attempts, nutered, weight_kg) VALUES (2, 'Gabumon', '2018-11-15', 2, true, 8);
 INSERT INTO animals (id, name, date_of_birth, escape_attempts, nutered, weight_kg) VALUES (3, 'Pikachu', '2021-01-7', 1, false, 15.04);
 INSERT INTO animals (id, name, date_of_birth, escape_attempts, nutered, weight_kg) VALUES (4, 'Devimon', '2017-05-12', 5, true, 11);
 INSERT INTO animals (id, name, date_of_birth, escape_attempts, nutered, weight_kg) VALUES (5, 'Charmander', '2020-01-08', 0, false, 11);
 INSERT INTO animals (id, name, date_of_birth, escape_attempts, nutered, weight_kg) VALUES (6, 'Plantmon', '2021-11-15', 2, true, -5.7);
 INSERT INTO animals (id, name, date_of_birth, escape_attempts, nutered, weight_kg) VALUES (7, 'Squirtle', '1993-04-2', 3, false, -12.13);
 INSERT INTO animals (id, name, date_of_birth, escape_attempts, nutered, weight_kg) VALUES (8, 'Angemon', '2005-06-12', 1, true, -45);
 INSERT INTO animals (id, name, date_of_birth, escape_attempts, nutered, weight_kg) VALUES (9, 'Boarmon', '2005-07-01', 7, true, 20);
 INSERT INTO animals (id, name, date_of_birth, escape_attempts, nutered, weight_kg) VALUES (10, 'Blossom', '1998-10-13', 3, true, 17);
 INSERT INTO animals (id, name, date_of_birth, escape_attempts, nutered, weight_kg) VALUES (11, ' Ditto', '2005-07-01', 7, true, 20);
/* Insert into owners table */
INSERT INTO owners (full_name, age) VALUES ('Sam Smith', 34);
INSERT INTO owners (full_name, age) VALUES ('Jennifer Orwell', 19);
INSERT INTO owners (full_name, age) VALUES ('Bob', 45);
INSERT INTO owners (full_name, age) VALUES ('Melody Pond', 77);
INSERT INTO owners (full_name, age) VALUES ('Dean Winchester', 77);
INSERT INTO owners (full_name, age) VALUES ('Jodie Whittaker', 77);
INSERT INTO species (name) VALUES ('Pokemon');
INSERT INTO species (name) VALUES ('Digimon');
/* If the name ends in "mon" it will be Digimon */
UPDATE animals SET species_id = 1 WHERE name LIKE '%mon';
/* All other animals are Pokemon */
UPDATE animals SET species_id = 2 WHERE name NOT LIKE '%mon';
/* Sam Smith owns Agumon. */
UPDATE animals SET owner_id = 1 WHERE name = 'Agumon';
/* Jennifer Orwell owns Gabumon and Pikachu. */
UPDATE animals SET owner_id = 2 WHERE name = 'Gabumon' OR name = 'Pikachu';
/* Bob owns Devimon and Plantmon. */
UPDATE animals SET owner_id = 3 WHERE name = 'Devimon' OR name = 'Plantmon';
/* Dean Winchester owns Angemon and Boarmon. */
UPDATE animals SET owner_id = 5 WHERE name = 'Angemon' OR name = 'Boarmon';

INSERT INTO VETS (NAME, AGE, DATE_OF_GRADUATION) VALUES ('William Tatche' , 45 , '2020-04-23');
INSERT INTO VETS (NAME, AGE, DATE_OF_GRADUATION) VALUES ('Maisy Smith' , 26 , '2019-01-17');
INSERT INTO VETS (NAME, AGE, DATE_OF_GRADUATION) VALUES ('Stephanie Mendez' , 64 , '1981-05-04');
INSERT INTO VETS (NAME, AGE, DATE_OF_GRADUATION) VALUES ('Jack Harkness' , 38 , '2008-06-08');


INSERT INTO VISITS (ANIMALS_ID, VETS_ID, VISIT_DATE) SELECT ANIMALS.ID, VETS.ID , '2020-05-24' FROM ANIMALS INNER JOIN VETS ON ANIMALS.NAME = 'Agumon' AND VETS.NAME = 'William Tatche';
INSERT INTO VISITS (ANIMALS_ID, VETS_ID, VISIT_DATE) SELECT ANIMALS.ID, VETS.ID , '2020-07-22' FROM ANIMALS INNER JOIN VETS ON ANIMALS.NAME = 'Agumon' AND VETS.NAME = 'Stephanie Mendez';
INSERT INTO VISITS (ANIMALS_ID, VETS_ID, VISIT_DATE) SELECT ANIMALS.ID, VETS.ID , '2021-02-02' FROM ANIMALS INNER JOIN VETS ON ANIMALS.NAME = 'Gabumon' AND VETS.NAME = 'Jack Harkness';
INSERT INTO VISITS (ANIMALS_ID, VETS_ID, VISIT_DATE) SELECT ANIMALS.ID, VETS.ID , '2020-01-05' FROM ANIMALS INNER JOIN VETS ON ANIMALS.NAME = 'Pikachu' AND VETS.NAME = 'Maisy Smith';
INSERT INTO VISITS (ANIMALS_ID, VETS_ID, VISIT_DATE) SELECT ANIMALS.ID, VETS.ID , '2020-03-08' FROM ANIMALS INNER JOIN VETS ON ANIMALS.NAME = 'Pikachu' AND VETS.NAME = 'Maisy Smith';
INSERT INTO VISITS (ANIMALS_ID, VETS_ID, VISIT_DATE) SELECT ANIMALS.ID, VETS.ID , '2020-05-14' FROM ANIMALS INNER JOIN VETS ON ANIMALS.NAME = 'Pikachu' AND VETS.NAME = 'Maisy Smith';
INSERT INTO VISITS (ANIMALS_ID, VETS_ID, VISIT_DATE) SELECT ANIMALS.ID, VETS.ID , '2021-05-04' FROM ANIMALS INNER JOIN VETS ON ANIMALS.NAME = 'Devimon' AND VETS.NAME = 'Stephanie Mendez';
INSERT INTO VISITS (ANIMALS_ID, VETS_ID, VISIT_DATE) SELECT ANIMALS.ID, VETS.ID , '2021-02-24' FROM ANIMALS INNER JOIN VETS ON ANIMALS.NAME = 'Charmander' AND VETS.NAME = 'Jack Harkness';
INSERT INTO VISITS (ANIMALS_ID, VETS_ID, VISIT_DATE) SELECT ANIMALS.ID, VETS.ID , '2019-12-21' FROM ANIMALS INNER JOIN VETS ON ANIMALS.NAME = 'Plantmon' AND VETS.NAME = 'Maisy Smith';
INSERT INTO VISITS (ANIMALS_ID, VETS_ID, VISIT_DATE) SELECT ANIMALS.ID, VETS.ID , '2020-08-10' FROM ANIMALS INNER JOIN VETS ON ANIMALS.NAME = 'Plantmon' AND VETS.NAME = 'William Tatche';
INSERT INTO VISITS (ANIMALS_ID, VETS_ID, VISIT_DATE) SELECT ANIMALS.ID, VETS.ID , '2021-04-07' FROM ANIMALS INNER JOIN VETS ON ANIMALS.NAME = 'Plantmon' AND VETS.NAME = 'Maisy Smith';
INSERT INTO VISITS (ANIMALS_ID, VETS_ID, VISIT_DATE) SELECT ANIMALS.ID, VETS.ID , '2019-09-29' FROM ANIMALS INNER JOIN VETS ON ANIMALS.NAME = 'Squirtle' AND VETS.NAME = 'Stephanie Mendez';
INSERT INTO VISITS (ANIMALS_ID, VETS_ID, VISIT_DATE) SELECT ANIMALS.ID, VETS.ID , '2020-10-03' FROM ANIMALS INNER JOIN VETS ON ANIMALS.NAME = 'Angemon' AND VETS.NAME = 'Jack Harkness';
INSERT INTO VISITS (ANIMALS_ID, VETS_ID, VISIT_DATE) SELECT ANIMALS.ID, VETS.ID , '2020-11-04' FROM ANIMALS INNER JOIN VETS ON ANIMALS.NAME = 'Angemon' AND VETS.NAME = 'Jack Harkness';
INSERT INTO VISITS (ANIMALS_ID, VETS_ID, VISIT_DATE) SELECT ANIMALS.ID, VETS.ID , '2019-01-24' FROM ANIMALS INNER JOIN VETS ON ANIMALS.NAME = 'Boarmon' AND VETS.NAME = 'Maisy Smith';
INSERT INTO VISITS (ANIMALS_ID, VETS_ID, VISIT_DATE) SELECT ANIMALS.ID, VETS.ID , '2019-05-15' FROM ANIMALS INNER JOIN VETS ON ANIMALS.NAME = 'Boarmon' AND VETS.NAME = 'Maisy Smith';
INSERT INTO VISITS (ANIMALS_ID, VETS_ID, VISIT_DATE) SELECT ANIMALS.ID, VETS.ID , '2020-02-27' FROM ANIMALS INNER JOIN VETS ON ANIMALS.NAME = 'Boarmon' AND VETS.NAME = 'Maisy Smith';
INSERT INTO VISITS (ANIMALS_ID, VETS_ID, VISIT_DATE) SELECT ANIMALS.ID, VETS.ID , '2020-08-03' FROM ANIMALS INNER JOIN VETS ON ANIMALS.NAME = 'Boarmon' AND VETS.NAME = 'Maisy Smith';
INSERT INTO VISITS (ANIMALS_ID, VETS_ID, VISIT_DATE) SELECT ANIMALS.ID, VETS.ID , '2020-05-24' FROM ANIMALS INNER JOIN VETS ON ANIMALS.NAME = 'Blossom' AND VETS.NAME = 'Stephanie Mendez';
INSERT INTO VISITS (ANIMALS_ID, VETS_ID, VISIT_DATE) SELECT ANIMALS.ID, VETS.ID , '2021-01-11' FROM ANIMALS INNER JOIN VETS ON ANIMALS.NAME = 'Blossom' AND VETS.NAME = 'William Tatche';
