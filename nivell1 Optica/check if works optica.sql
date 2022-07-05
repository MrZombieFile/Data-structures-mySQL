--Llista el total de factures d'un client/a en un període determinat.
SELECT COUNT(u_v.idcompres) AS numero_de_factures, c.nom, c.email, c.`data de registre` FROM ulleres_vendes u_v INNER JOIN client c ON
c.idclient = u_v.client_idclient WHERE DATE(c.`data de registre`) >= '20220701';

--Llista els diferents models d'ulleres que ha venut un empleat/da durant un any.

SELECT e.nom AS venedor, u.marca, u.`color de la muntura`, u.preu FROM empleat e RIGHT JOIN ulleres_vendes u ON e.idempleat = u.empleat_idempleat LEFT JOIN client c ON c.idclient = u.client_idclient WHERE YEAR(c.`data de registre`) = 2022;

--Llista els diferents proveïdors que han subministrat ulleres venudes amb èxit per l'òptica.

SELECT p.nom, p.NIF, p.telefon, p.fax, COUNT(u.idcompres) AS vendes FROM ulleres_vendes u LEFT JOIN proveidor p ON p.idproveidor = u.proveidor_idproveidor GROUP BY u.proveidor_idproveidor ORDER BY vendes ASC;
