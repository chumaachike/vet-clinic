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
SELECT name FROM animals JOIN owners ON animals.owner_id = owners.id WHERE owners.full_name='Melody Pond';
SELECT animals.name FROM animals JOIN species ON animals.species_id = species.id WHERE species.name='Pokemon';  
SELECT COUNT (*) FROM animals JOIN species ON animals.species_id = species.id WHERE species.name = 'Pokemon';
SELECT COUNT (*) FROM animals JOIN species ON animals.species_id = species.id WHERE species.name = 'Digimon';
 SELECT animals.name from animals JOIN species ON animals.species_id = species.id JOIN owners ON animals.owner_id = owners.id WHERE owners.full_name = 'Jennifer Orwell' AND species.name = 'Digimon';
 SELECT animals.name from animals JOIN owners ON animals.owner_id = owners.id WHERE owners.full_name = 'Dean Winchester' AND animals.escape_attempts<1;
 SELECT owners.full_name FROM owners JOIN animals ON owners.id = animals.owner_id WHERE animals.escape_attempts = ( SELECT MAX(animals.escape_attempts) FROM animals);
 SELECT owners.full_name, COUNT(animals.*) FROM animals INNER JOIN owners ON animals.owner_id = owners.id GROUP BY owners.full_name ORDER BY COUNT DESC LIMIT 1;

 SELECT ANIMALS.NAME FROM ANIMALS INNER JOIN VISITS ON ANIMALS.ID = VISITS.ANIMALS_ID INNER JOIN VETS ON VETS.ID = ANIMALS.ID WHERE VETS.NAME = 'William Tatche' ORDER BY VISITS.VISIT_DATE DESC LIMIT 1;

SELECT COUNT(*) FROM VETS INNER JOIN VISITS ON VETS.ID = VISITS.VETS_ID WHERE VETS.NAME = 'Stephanie Mendez';

SELECT VETS.NAME, SPECIES.NAME FROM VETS LEFT JOIN specializations ON VETS.ID = specializations.VETS_ID LEFT JOIN SPECIES ON specializations.SPECIES_ID = SPECIES.ID;

SELECT ANIMALS.NAME FROM ANIMALS INNER JOIN VISITS ON ANIMALS.ID = VISITS.ANIMALS_ID INNER JOIN VETS ON VETS.ID = VISITS.VETS_ID WHERE VETS.NAME = 'Stephanie Mendez' AND VISIT_DATE BETWEEN '2020-04-01' AND '2020-08-30';

SELECT ANIMALS.NAME, COUNT(VISITS.*) FROM ANIMALS INNER JOIN VISITS ON ANIMALS.ID = VISITS.ANIMALS_ID GROUP BY ANIMALS.NAME ORDER BY COUNT DESC LIMIT 1;

SELECT ANIMALS.NAME, VISITS.VISIT_DATE FROM ANIMALS INNER JOIN VISITS ON VISITS.ANIMALS_ID = ANIMALS.ID INNER JOIN VETS ON VETS.ID = VISITS.VETS_ID WHERE VETS.NAME = 'Maisy Smith' ORDER BY VISITS.VISIT_DATE LIMIT 1;

SELECT ANIMALS.NAME AS ANIMAL_NAME, ANIMALS.DATE_OF_BIRTH, ANIMALS.WEIGHT_KG, VETS.NAME AS VETS_NAME, VETS.AGE, VISITS.VISIT_DATE FROM ANIMALS INNER JOIN  VISITS ON VISITS.ANIMALS_ID = ANIMALS.ID INNER JOIN VETS ON VETS.ID = VISITS.VETS_ID ORDER BY VISITS.VISIT_DATE DESC LIMIT 1;

SELECT COUNT(*) FROM ANIMALS INNER JOIN VISITS ON VISITS.ANIMALS_ID = ANIMALS.ID INNER JOIN VETS ON VETS.ID = VISITS.VETS_ID WHERE ANIMALS.SPECIES_ID NOT IN(SELECT SPECIES_ID FROM specializations WHERE VETS_ID = VETS.ID);

SELECT SPECIES.NAME FROM ANIMALS INNER JOIN VISITS ON VISITS.ANIMALS_ID = ANIMALS.ID INNER JOIN VETS ON VETS.ID = VISITS.VETS_ID INNER JOIN SPECIES ON  SPECIES.ID = ANIMALS.SPECIES_ID WHERE VETS.NAME = 'Maisy Smith' GROUP BY SPECIES.NAME ORDER BY COUNT(VISITS.*) DESC  LIMIT 1;
