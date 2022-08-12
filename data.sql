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