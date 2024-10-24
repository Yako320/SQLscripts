ALTER TABLE Procurador RENAME TO Advocats;

ALTER TABLE Casos_procurador DROP CONSTRAINT id_procurador;
ALTER TABLE Casos_procurador DROP CONSTRAINT id_client;
ALTER TABLE Casos_procurador DROP CONSTRAINT id_assumpte;

ALTER TABLE Casos_client DROP CONSTRAINT id_assumpte;
ALTER TABLE Casos_client DROP CONSTRAINT id_client;
ALTER TABLE Casos_client DROP CONSTRAINT id_procurador;

ALTER TABLE Casos_procurador ADD CONSTRAINT id_procurador;
ALTER TABLE Casos_procurador ADD CONSTRAINT id_client;
ALTER TABLE Casos_procurador ADD CONSTRAINT id_assumpte;
ALTER TABLE Casos_procurador ADD REFERENCES Client(id) ON DELETE CASCADE;
ALTER TABLE Casos_procurador ADD REFERENCES Procurador(id) ON DELETE CASCADE;
ALTER TABLE Casos_procurador ADD REFERENCES Assumpte(id) ON DELETE CASCADE;

ALTER TABLE Casos_client ADD CONSTRAINT id_procurador;
ALTER TABLE Casos_client ADD CONSTRAINT id_client;
ALTER TABLE Casos_client ADD CONSTRAINT id_assumpte;
ALTER TABLE Casos_client ADD REFERENCES Client(id) ON DELETE CASCADE;
ALTER TABLE Casos_client ADD REFERENCES Procurador(id) ON DELETE CASCADE;
ALTER TABLE Casos_client ADD REFERENCES Assumpte(id) ON DELETE CASCADE;

/*No funciona