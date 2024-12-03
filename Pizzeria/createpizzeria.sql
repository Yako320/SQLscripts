CREATE TABLE IF NOT EXISTS clients (
    dni VARCHAR(9) PRIMARY KEY,
    nom VARCHAR(30),
    adreça TEXT,
    telefon VARCHAR(9)
);

CREATE TABLE IF NOT EXISTS comandes (
    num_comanda INT PRIMARY KEY,
    preu_total DECIMAL(10, 2),
    data DATETIME,
    estat BOOLEAN,
    dni_client VARCHAR(9),
    FOREIGN KEY (dni_client) REFERENCES clients(dni)
);

CREATE TABLE IF NOT EXISTS pizzes (
    id INT PRIMARY KEY,
    nom VARCHAR(30),
    preu_base DECIMAL(10, 2)
);

CREATE TABLE IF NOT EXISTS masses (
    id INT PRIMARY KEY,
    nom VARCHAR(30),
    preu DECIMAL(10, 2)
);

CREATE TABLE IF NOT EXISTS alergogens (
    id INT PRIMARY KEY,
    nom VARCHAR(30),
    descripcio TEXT
);

CREATE TABLE IF NOT EXISTS ingredients (
    id INT PRIMARY KEY,
    nom VARCHAR(30),
    preu DECIMAL(10, 2),
    descripcio TEXT,
    id_tipus INT,
    FOREIGN KEY (id_tipus) REFERENCES tipus_ingredients(id)
);

CREATE TABLE IF NOT EXISTS tipus_ingredients (
    id INT PRIMARY KEY,
    nom VARCHAR(30),
    descripcio TEXT
);

CREATE TABLE IF NOT EXISTS pizzes_masses (
    id_pizza INT,
    id_massa INT,
    PRIMARY KEY (id_pizza, id_massa),
    FOREIGN KEY (id_pizza) REFERENCES pizzes(id),
    FOREIGN KEY (id_massa) REFERENCES masses(id)
);

CREATE TABLE IF NOT EXISTS comandes_pizzes (
    id_pizza INT,
    id_comanda INT,
    PRIMARY KEY (id_pizza, id_comanda),
    FOREIGN KEY (id_pizza) REFERENCES pizzes(id),
    FOREIGN KEY (id_comanda) REFERENCES comandes(num_comanda)
);

CREATE TABLE IF NOT EXISTS ingredients_alergogens (
    id_ingredient INT,
    id_alergogen INT,
    PRIMARY KEY (id_ingredient, id_alergogen),
    FOREIGN KEY (id_ingredient) REFERENCES ingredients(id),
    FOREIGN KEY (id_alergogen) REFERENCES alergogens(id)
);

CREATE TABLE IF NOT EXISTS pizzes_ingredients (
    id_pizza INT,
    id_ingredient INT,
    grams_per_ingredient DECIMAL(10, 2),
    PRIMARY KEY (id_pizza, id_ingredient),
    FOREIGN KEY (id_pizza) REFERENCES pizzes(id),
    FOREIGN KEY (id_ingredient) REFERENCES ingredients(id)
);
