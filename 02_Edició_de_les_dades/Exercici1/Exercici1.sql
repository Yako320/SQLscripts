CREATE TABLE IF NOT EXISTS clients (
    dni CHAR(9) PRIMARY KEY,
    nom VARCHAR(50),
    direccio VARCHAR (50)
);

CREATE TABLE IF NOT EXISTS pagaments_pendents (
    codi INTEGER PRIMARY KEY AUTO_INCREMENT,
    dni CHAR(9),
    import DOUBLE,
    FOREIGN KEY (dni) REFERENCES clients(dni)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
);