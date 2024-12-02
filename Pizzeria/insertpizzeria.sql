INSERT INTO clients (dni, nom, adreça, telefon) VALUES
('12345678A', 'Anna Puig', 'Carrer Major, 15', '123456789'),
('87654321B', 'Joan Riera', 'Plaça Catalunya, 3', '987654321'),
('11223344C', 'Laura Costa', 'Carrer de la Pau, 25', '654321987'),
('55667788D', 'Pere Torres', 'Avinguda del Mar, 45', '321987654'),
('99887766E', 'Marta Vives', 'Carrer Nou, 12', '456789123');

INSERT INTO comandes (preu_total, data, estat, dni_client) VALUES
(25.50, '2024-12-01 12:30:00', 'en preparació', '12345678A'),
(15.75, '2024-12-01 13:00:00', 'lliurada', '87654321B'),
(30.00, '2024-12-02 14:00:00', 'cancel·lada', '11223344C'),
(20.00, '2024-12-02 15:00:00', 'lliurada', '55667788D'),
(18.25, '2024-12-03 16:00:00', 'en preparació', '99887766E');

INSERT INTO pizzes (nom, preu_base) VALUES
('Margarita', 8.50),
('Pepperoni', 10.00),
('Vegetal', 9.75),
('4 Formatges', 11.50),
('Carbonara', 12.00);

INSERT INTO masses (nom, preu) VALUES
('Fina', 1.50),
('Gruixuda', 2.00),
('Integral', 1.75),
('Amb llavors', 2.25),
('Sense gluten', 2.50);

INSERT INTO alergogens (nom, descripcio) VALUES
('Gluten', 'Present a cereals com el blat.'),
('Lactosa', 'Present en productes lactis.'),
('Ou', 'Al·lèrgia als ous i derivats.'),
('Fruits secs', 'Ametlles, avellanes, etc.'),
('Marisc', 'Al·lèrgia al marisc.');

INSERT INTO tipus_ingredients (nom, descripcio) VALUES
('Verdura', 'Productes vegetals.'),
('Carn', 'Ingredients d’origen animal.'),
('Peix', 'Productes del mar.'),
('Formatge', 'Varietats de formatges.'),
('Altres', 'Altres tipus d’ingredients.');

INSERT INTO ingredients (nom, preu, descripcio, id_tipus) VALUES
('Tomàquet', 0.50, 'Base de la pizza', 1),
('Formatge mozzarella', 1.00, 'Formatge suau', 4),
('Pepperoni', 1.50, 'Embotit picant', 2),
('Xampinyons', 0.75, 'Fong comestible', 1),
('Tonyina', 2.00, 'Peix en conserva', 3);

INSERT INTO pizzes_masses (id_pizza, id_massa) VALUES
(1, 1), (1, 2), (2, 3), (3, 4), (4, 5);

INSERT INTO comandes_pizzes (id_pizza, id_comanda) VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5);

INSERT INTO ingredients_alergogens (id_ingredient, id_alergogen) VALUES
(1, 1), (2, 2), (3, 1), (4, 1), (5, 5);

INSERT INTO pizzes_ingredients (id_pizza, id_ingredient, grams_per_ingredient) VALUES
(1, 1, 25), (1, 2, 20), (2, 3, 30), (3, 4, 15), (4, 5, 10);

SELECT * FROM clients;
SELECT * FROM comandes;
SELECT * FROM pizzes;
SELECT * FROM masses;
SELECT * FROM alergogens;
SELECT * FROM tipus_ingredients;
SELECT * FROM ingredients;
SELECT * FROM pizzes_masses;
SELECT * FROM comandes_pizzes;
SELECT * FROM ingredients_alergogens;
SELECT * FROM pizzes_ingredients;