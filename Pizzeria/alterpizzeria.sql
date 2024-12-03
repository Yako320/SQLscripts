ALTER TABLE comandes MODIFY num_comanda INT AUTO_INCREMENT;
ALTER TABLE pizzes MODIFY id INT AUTO_INCREMENT;
ALTER TABLE masses MODIFY id INT AUTO_INCREMENT;
ALTER TABLE alergogens MODIFY id INT AUTO_INCREMENT;
ALTER TABLE ingredients MODIFY id INT AUTO_INCREMENT;
ALTER TABLE tipus_ingredients MODIFY id INT AUTO_INCREMENT;

ALTER TABLE comandes MODIFY estat ENUM('en preparació', 'entregada', 'cancel·lada');

ALTER TABLE pizzes_ingredients MODIFY grams_per_ingredient DECIMAL(10, 2) CHECK (grams_per_ingredient BETWEEN 10 AND 30);
