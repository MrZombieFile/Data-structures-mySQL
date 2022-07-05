--Llista quants productes de categoria 'Begudes' s'han venut en una determinada localitat.

SELECT SUM(tbhc.numero) AS total_vendes_beguda, lo.nom AS lloc FROM `tipus beguda`tb INNER JOIN `tipus beguda_has_comanda` tbhc ON tb.`idtipus beguda` = tbhc.`tipus beguda_idtipus beguda` INNER JOIN comanda c ON tbhc.comanda_idcomanda = c.idcomanda INNER JOIN client cl ON cl.idclient = c.client_idclient LEFT JOIN localitat lo ON lo.idlocalitat = cl.`codi postal_localitat_idlocalitat`;

--Llista quantes comandes ha efectuat un determinat empleat/da.

SELECT e.nom AS empleat, COUNT(c.idcomanda) AS `numero de comandes` FROM empleat e RIGHT JOIN comanda c ON e.idempleat = c.empleat_idempleat GROUP BY e.nom;
 
