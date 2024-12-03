DELETE FROM alergogens
WHERE id NOT IN (
    SELECT DISTINCT id_alergogen 
    FROM ingredients_alergogens
);

UPDATE ingredients
SET preu = preu * 1.20
WHERE id NOT IN (
    SELECT DISTINCT id_ingredient 
    FROM pizzes_ingredients
);

SET @min_preu_total = (
    SELECT MIN(preu_total)
    FROM comandes
);

DELETE FROM comandes
WHERE preu_total = @min_preu_total;
