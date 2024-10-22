CREATE TABLE Client (
    id VARCHAR (12) PRIMARY KEY,
    dni VARCHAR (9),
    nom VARCHAR (20),
    adreça VARCHAR (20)
);

CREATE TABLE Assumpte (
    id VARCHAR (12) PRIMARY KEY,
    periode TIMESTAMP,
    estat VARCHAR (15)
);

CREATE TABLE Procurador (
    id VARCHAR (12) PRIMARY KEY,
    nom VARCHAR (20),
    adreça VARCHAR (20),
    DNI VARCHAR (9)
);

CREATE TABLE Casos_procurador (
    id_procurador VARCHAR (12) REFERENCES Procurador(id),
    id_assumpte VARCHAR (12) REFERENCES Assumpte(id),
    id_client VARCHAR (12) REFERENCES Client(id)
);

CREATE TABLE Casos_client (
    id_client VARCHAR (12) REFERENCES Client(id),
    id_assumpte VARCHAR (12) REFERENCES Assumpte(id),
    id_procurador VARCHAR (12) REFERENCES Procurador(id)
);