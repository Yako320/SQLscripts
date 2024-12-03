-- 1. Llista el nom, adreça i telèfon de tots els clients.
SELECT clients.nom, clients.adreça, clients.telefon
FROM clients;

-- 2. Llista totes les pizzes que tenen un preu base superior a 10 euros.
SELECT pizzes.nom
FROM pizzes
WHERE pizzes.preu_base > 10;

-- 3. Mostra la pizza amb el preu base més car
SELECT pizzes.nom, pizzes.preu_base
FROM pizzes
ORDER BY pizzes.preu_base DESC
LIMIT 1;

-- 4. Llista les 3 masses més cares ordenades per preu, de la més cara a la més barata.
SELECT masses.nom, masses.preu
FROM masses
ORDER BY masses.preu DESC
LIMIT 3;

-- 5. Llista quantes comandes ha fet cada client.
SELECT clients.nom, COUNT(comandes.num_comanda) AS total_comandes
FROM clients
LEFT JOIN comandes ON clients.dni = comandes.dni_client
GROUP BY clients.nom;

-- 6. Llista totes les comandes realitzades abans del migdia.
SELECT comandes.num_comanda, comandes.preu_total, comandes.data
FROM comandes
WHERE TIME(comandes.data) < '12:00:00';

-- 7. Llista els ingredients que contenen al·lergògens, mostrant només el nom de l'ingredient amb l’àlias “Ingredients amb al·lergògens".
SELECT DISTINCT ingredients.nom AS "Ingredients amb al·lergògens"
FROM ingredients
INNER JOIN ingredients_alergogens ON ingredients.id = ingredients_alergogens.id_ingredient;

-- 8. Mostra la mitjana de preu per ingredient.
SELECT AVG(ingredients.preu) AS mitjana_preu_ingredients
FROM ingredients;

-- 9. Mostra el total de grams d’ingredients que conté cada pizza.
SELECT pizzes.nom AS pizza, SUM(pizzes_ingredients.grams_per_ingredient) AS total_grams
FROM pizzes
INNER JOIN pizzes_ingredients ON pizzes.id = pizzes_ingredients.id_pizza
GROUP BY pizzes.nom;

-- 12. Extreu la facturació que ha tingut un client específic en tota la seva vida, indicant la base imposable, l'IVA i el total facturat.
SELECT 
    clients.nom AS client,
    SUM(comandes.preu_total / 1.21) AS base_imposable,
    SUM(comandes.preu_total - (comandes.preu_total / 1.21)) AS iva,
    SUM(comandes.preu_total) AS total_facturat
FROM clients
INNER JOIN comandes ON clients.dni = comandes.dni_client
WHERE clients.dni = '12345678A'
GROUP BY clients.nom;
