CREATE TABLE IF NOT EXISTS Empleat (
    nom VARCHAR (20),
    dni_e VARCHAR (9),
    ID_E VARCHAR (12) PRIMARY KEY,
    telefon VARCHAR (9),
    salari DOUBLE UNSIGNED
);

CREATE TABLE IF NOT EXISTS Localitat (
    codi VARCHAR (12) PRIMARY KEY,
    nom VARCHAR (20)
);

CREATE TABLE IF NOT EXISTS Provincia (
    codi VARCHAR (12) PRIMARY KEY,
    nom VARCHAR (20)
);

CREATE TABLE IF NOT EXISTS Regio (
    nom_regio VARCHAR (20) PRIMARY KEY
);

CREATE TABLE IF NOT EXISTS Localitzacio_naixement_empleat(
    empleat VARCHAR (12) REFERENCES Empleat(ID_E),
    localitat VARCHAR (12) REFERENCES Localitat(codi),
    provincia VARCHAR (12) REFERENCES Provincia(codi),
    regio VARCHAR (20) REFERENCES Regio(nom_regio)
);