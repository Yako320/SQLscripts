CREATE TABLE IF NOT EXISTS Zoo (
    id VARCHAR (12) PRIMARY KEY,
    nom VARCHAR (20),
    ciutat VARCHAR (20),
    pais VARCHAR (20),
    pressupost DOUBLE UNSIGNED,
    grandaria DOUBLE UNSIGNED
);

CREATE TABLE IF NOT EXISTS Animal (
    id VARCHAR (12) PRIMARY KEY,
    num_identificacio INT UNSIGNED (12),
    sexe VARCHAR (12),
    any_naixement DATE,
    pais_origen VARCHAR (20),
    continent VARCHAR (20)
);

CREATE TABLE IF NOT EXISTS Especie (
    id VARCHAR (12) PRIMARY KEY,
    nom_vulgar VARCHAR (20),
    nom_cientific VARCHAR (20),
    familia VARCHAR (20),
    en_perill_extincio BOOLEAN
);

CREATE TABLE IF NOT EXISTS AnimalsZoo (
    id_zoo VARCHAR (12) REFERENCES Zoo(id),
    id_animal VARCHAR (12) REFERENCES Animal(id),
    num_identificacio INT UNSIGNED REFERENCES Animal(num_identificacio)
);

CREATE TABLE IF NOT EXISTS EspecieAnimals (
    id_animal VARCHAR (12) REFERENCES Animal(id),
    id_especie VARCHAR (12) REFERENCES Especie(id),
    nom_vulgar VARCHAR (20) REFERENCES Especie(nom_vulgar),
    nom_cientific VARCHAR (20) REFERENCES Especie(nom_cientific)
);