/* Database schema to keep the structure of entire database. */
/* table animals schema */
CREATE TABLE animals (
    id INT PRIMARY KEY NOT NULL,
    name VARCHAR(100) NOT NULL,
    date_of_birth DATE NOT NULL,
    escape_attempts INT  NOT NULL,
    nutered BOOLEAN NOT NULL,
    weight_kg FLOAT NOT NULL);
/* add species column to table animals */
ALTER TABLE animals ADD species VARCHAR(100);
/* table owners schema */
CREATE TABLE owners (
     id SERIAL,
    full_name VARCHAR(255) NOT NULL,
    age INT NOT NULL,
    PRIMARY KEY(id));
/* table species schema */
CREATE TABLE species (
    id SERIAL,
    name VARCHAR(255) NOT NULL);
/* Modify animals table */
CREATE SEQUENCE animals_animal_id_seq OWNED BY animals.id;
 ALTER TABLE animals ALTER COLUMN id SET DEFAULT NEXTVAL('animals_animal_id_seq');

 ALTER TABLE animals DROP COLUMN species;
 /* Add column species_id which is a foreign key referencing species table */
  ALTER TABLE species ADD CONSTRAINT unique_id UNIQUE(id);
  ALTER TABLE animals ADD COLUMN species_id INT references species(id);
/* Add column owner_id which is a foreign key referencing the owners table */
ALTER TABLE owners ADD CONSTRAINT unique_owner_id UNIQUE(id);
 ALTER TABLE animals ADD COLUMN owner_id INT references owners(id);

 CREATE TABLE specializations(
    ID INT GENERATED ALWAYS AS IDENTITY,
    species_id INT , 
    vets_id INT, 

    CONSTRAINT SPECIES_FOREIGN
    FOREIGN KEY (species_id)
    REFERENCES SPECIES(ID), 

    CONSTRAINT VETS_FOREIGN
    FOREIGN KEY (vets_id)
    REFERENCES VETS(ID)

);

CREATE TABLE VISITS (
    ID INT GENERATED ALWAYS AS IDENTITY, 
    ANIMALS_ID INT, 
    VETS_ID INT, 
    VISIT_DATE DATE, 

    CONSTRAINT ANIMALS_FOREIGN 
    FOREIGN KEY (ANIMALS_ID)
    REFERENCES ANIMALS(ID), 

    CONSTRAINT VETS_FOREIGN 
    FOREIGN KEY (VETS_ID)
    REFERENCES VETS(ID)
); 