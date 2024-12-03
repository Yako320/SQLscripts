INSERT INTO clients (dni, nom, adreça, telefon) VALUES
('12345678A', 'Anna Puig', 'Carrer Major, 15', '123456789'),
('87654321B', 'Joan Riera', 'Plaça Catalunya, 3', '987654321'),
('11223344C', 'Laura Costa', 'Carrer de la Pau, 25', '654321987'),
('55667788D', 'Pere Torres', 'Avinguda del Mar, 45', '321987654'),
('99887766E', 'Marta Vives', 'Carrer Nou, 12', '456789123');

INSERT INTO comandes (num_comanda, preu_total, data, estat) VALUES
(1, 25.50, '2024-12-01 12:30:00', 'en preparació'),
(2, 15.75, '2024-12-01 13:00:00', 'lliurada'),
(3, 30.00, '2024-12-02 14:00:00', 'cancel·lada'),
(4, 20.00, '2024-12-02 15:00:00', 'lliurada'),
(5, 18.25, '2024-12-03 16:00:00', 'en preparació');

INSERT INTO pizzes (id, nom, preu_base) VALUES
(1, 'Margarita', 8.50),
(2, 'Pepperoni', 10.00),
(3, 'Vegetal', 9.75),
(4, '4 Formatges', 11.50),
(5, 'Carbonara', 12.00);

INSERT INTO masses (id, nom, preu) VALUES
(1, 'Fina', 1.50),
(2, 'Gruixuda', 2.00),
(3, 'Integral', 1.75),
(4, 'Amb llavors', 2.25),
(5, 'Sense gluten', 2.50);

INSERT INTO alergogens (id, nom, descripcio) VALUES
(1, 'Gluten', 'Present a cereals com el blat.'),
(2, 'Lactosa', 'Present en productes lactis.'),
(3, 'Ou', 'Al·lèrgia als ous i derivats.'),
(4, 'Fruits secs', 'Ametlles, avellanes, etc.'),
(5, 'Marisc', 'Al·lèrgia al marisc.');

INSERT INTO tipus_ingredients (id, nom, descripcio) VALUES
(1, 'Verdura', 'Productes vegetals.'),
(2, 'Carn', 'Ingredients d’origen animal.'),
(3, 'Peix', 'Productes del mar.'),
(4, 'Formatge', 'Varietats de formatges.'),
(5, 'Altres', 'Altres tipus d’ingredients.');

INSERT INTO ingredients (id, nom, preu, descripcio, id_tipus) VALUES
(1, 'Tomàquet', 0.50, 'Base de la pizza', 1),
(2, 'Formatge mozzarella', 1.00, 'Formatge suau', 4),
(3, 'Pepperoni', 1.50, 'Embotit picant', 2),
(4, 'Xampinyons', 0.75, 'Fong comestible', 1),
(5, 'Tonyina', 2.00, 'Peix en conserva', 3);

INSERT INTO pizzes_masses (id_pizza, id_massa) VALUES
(1, 1),
(1, 2),
(2, 3),
(3, 4),
(4, 5);

INSERT INTO comandes_pizzes (id_pizza, id_comanda) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

INSERT INTO ingredients_alergogens (id_ingredient, id_alergogen) VALUES
(1, 1),
(2, 2),
(3, 1),
(4, 1),
(5, 5);

INSERT INTO pizzes_ingredients (id_pizza, id_ingredient, grams_per_ingredient) VALUES
(1, 1, 25),
(1, 2, 20),
(2, 3, 30),
(3, 4, 15),
(4, 5, 10);

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
