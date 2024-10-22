CREATE TABLE Alumne (
	nom VARCHAR (20),
	telefon INT UNSIGNED,
	dataNaixement DATE,
	numMatricula SMALLINT UNSIGNED PRIMARY KEY
	);
	
CREATE TABLE Assignatura (
	codi SMALLINT UNSIGNED PRIMARY KEY,
	nom VARCHAR (20),
	id_professor REFERENCES Professor(ID_P)
	);
	
CREATE TABLE Professor (
	ID_P INT UNSIGNED PRIMARY KEY,
	NIF_P CHAR (9),
	nom VARCHAR (20),
	especialitat VARCHAR (15),
	telefon INT UNSIGNED
);

CREATE TABLE Matriculacio (
	any_academic DATE,
	numMatricula MEDIUMINT UNSIGNED REFERENCES Alumne(numMatricula),
	nom VARCHAR (20) REFERENCES Alumne(nom),
	codi_assignatura REFERENCES Assignatura(codi)
	);
