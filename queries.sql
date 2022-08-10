/*Queries that provide answers to the questions from all projects.*/

/* Find all animals whose name ends in "mon". */
SELECT * FROM animals WHERE name LIKE '%mon';
/* List the name of all animals born between 2016 and 2019. */
SELECT * FROM animals WHERE date_of_birth BETWEEN '2016-01-01' AND '2019-12-31';
/* List the name of all animals that are neutered and have less than 3 escape attempts.*/
SELECT * FROM animals WHERE nutered = TRUE AND escape_attempts < 3;
/* List the date of birth of all animals named either "Agumon" or "Pikachu" */
SELECT date_of_birth FROM animals WHERE name = 'Agumon' OR name = 'Pikachu';
/* List name and escape attempts of animals that weigh more than 10.5kg */
SELECT name, escape_attempts FROM animals WHERE weight_kg >10.5;
/* Find all animals that are neutered. */
SELECT * FROM animals WHERE nutered = TRUE;
/* Find all animals not named Gabumon. */
 SELECT * FROM animals WHERE name <> 'Gabumon';
/* Find all animals with a weight between 10.4kg and 17.3kg (including the animals with the weights that equals precisely 10.4kg or 17.3kg) */
 SELECT * FROM animals WHERE weight_kg BETWEEN 10.4 AND 17.3;
/* How many animals are there? */
SELECT COUNT(*) as num_animals FROM animals;
/* How many animals have never tried to escape? */
SELECT COUNT(*) as num_escaped FROM animals WHERE escape_attempts > 0;
/* What is the average weight of animals? */
SELECT AVG(weight_kg) FROM animals;
/* Who escapes the most, neutered or not neutered animals? */
 SELECT SUM(escape_attempts) FROM animals WHERE nutered = true;
 SELECT SUM(escape_attempts) FROM animals WHERE nutered = false;
/* What is the minimum and maximum weight of each type of animal? */
SELECT MIN(weight_kg) FROM animals WHERE species = 'digimon';
 SELECT MAX(weight_kg) FROM animals WHERE species = 'digimon';
 SELECT MAX(weight_kg) FROM animals WHERE species = 'pokemon';
 SELECT MIN(weight_kg) FROM animals WHERE species = 'pokemon';
/* What is the average number of escape attempts per animal type of those born between 1990 and 2000? */
 SELECT AVG(escape_attempts) FROM animals WHERE species = 'pokemon' AND date_of_birth BETWEEN '1990-01-01' AND '2000-12-31';
  SELECT AVG(escape_attempts) FROM animals WHERE species = 'digimon' AND date_of_birth BETWEEN '1990-01-01' AND '2000-12-31';
  


