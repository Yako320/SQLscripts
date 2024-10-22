CREATE TABLE IF NOT EXISTS animals (
    nom VARCHAR(20) PRIMARY KEY,
    tipus VARCHAR(20),
    rasa VARCHAR(20),
    pes INTEGER,
    color VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS encanteris (
    data_encanteri DATE PRIMARY KEY,
    nom_mag VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS encanteri_animalencantat (
    encanteri DATE REFERENCES encanteris(data_encanteri),
    nom_animal VARCHAR (20) REFERENCES animals(nom)
);