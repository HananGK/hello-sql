SELECT name, init_date AS 'Fecha de inicio en programación' FROM users WHERE age BETWEEN 20 AND 30;

--CONCAT
SELECT CONCAT(name, ' ',surname) AS 'Nombre Completo' FROM users
SELECT CONCAT('Nombre: ',name, ' Apellidos: ',surname) AS 'Nombre completo' FROM users