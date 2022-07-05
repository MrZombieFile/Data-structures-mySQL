 SET FOREIGN_KEY_CHECKS=0;


 INSERT INTO `diametre pizza` (diametre) 
 VALUES ('32 cm');

 INSERT INTO `diametre pizza`(diametre)
 VALUES ('36 cm');

 INSERT INTO `diametre pizza`(diametre)
 VALUES ('42 cm');



  INSERT INTO `categoria pizza`(`nom categoria`)
 VALUES ('Promoció A');

  INSERT INTO `categoria pizza`(`nom categoria`)
 VALUES ('Promoció B');

  INSERT INTO `categoria pizza`(`nom categoria`)
 VALUES ('Promoció C');



  INSERT INTO `categoria pizza_has_tipus pizza`(`categoria pizza_idcategoria pizza`, `tipus pizza_idtipus pizza`)
 VALUES ('1', '1');

  INSERT INTO `categoria pizza_has_tipus pizza`(`categoria pizza_idcategoria pizza`, `tipus pizza_idtipus pizza`)
 VALUES ('1', '3');

  INSERT INTO `categoria pizza_has_tipus pizza`(`categoria pizza_idcategoria pizza`, `tipus pizza_idtipus pizza`)
 VALUES ('1', '4');

  INSERT INTO `categoria pizza_has_tipus pizza`(`categoria pizza_idcategoria pizza`, `tipus pizza_idtipus pizza`)
 VALUES ('1', '6');

  INSERT INTO `categoria pizza_has_tipus pizza`(`categoria pizza_idcategoria pizza`, `tipus pizza_idtipus pizza`)
 VALUES ('2', '2');

  INSERT INTO `categoria pizza_has_tipus pizza`(`categoria pizza_idcategoria pizza`, `tipus pizza_idtipus pizza`)
 VALUES ('2', '5');

  INSERT INTO `categoria pizza_has_tipus pizza`(`categoria pizza_idcategoria pizza`, `tipus pizza_idtipus pizza`)
 VALUES ('3', '7');



 INSERT INTO `tipus pizza` (nom, descripcio, imatge, preu, `diametre pizza_iddiametre`)
 VALUES ('Margarita', 'Gran pizza amb un sortit de formatges bonissims', null, '22.98', '1');
 
  INSERT INTO `tipus pizza` (nom, descripcio, imatge, preu, `diametre pizza_iddiametre`)
 VALUES ('Margarita', 'Gran pizza amb un sortit de formatges bonissims', null, '22.98', '2');
 
  INSERT INTO `tipus pizza` (nom, descripcio, imatge, preu, `diametre pizza_iddiametre`)
 VALUES ('Margarita', 'Gran pizza amb un sortit de formatges bonissims', null, '22.98', '3');

 INSERT INTO `tipus pizza` (nom, descripcio, imatge, preu, `diametre pizza_iddiametre`)
 VALUES ('Margarita al oglio', 'Gran pizza amb un sortit de formatges bonissims', null, '12.98', '1');

 INSERT INTO `tipus pizza` (nom, descripcio, imatge, preu, `diametre pizza_iddiametre`)
 VALUES ('Bolognesa', 'Gran pizza amb un sortit de formatges bonissims', null, '25.85', '1');
 
  INSERT INTO `tipus pizza` (nom, descripcio, imatge, preu, `diametre pizza_iddiametre`)
 VALUES ('Bolognesa', 'Gran pizza amb un sortit de formatges bonissims', null, '25.85', '2');

 INSERT INTO `tipus pizza` (nom, descripcio, imatge, preu, `diametre pizza_iddiametre`)
 VALUES ('Bolognesa', 'Gran pizza amb un sortit de formatges bonissims', null, '25.85', '3');

 INSERT INTO `tipus pizza` (nom, descripcio, imatge, preu, `diametre pizza_iddiametre`)
 VALUES ('4 quesos', 'Gran pizza amb un sortit de formatges bonissims', null, '28.90', '1');
 
  INSERT INTO `tipus pizza` (nom, descripcio, imatge, preu, `diametre pizza_iddiametre`)
 VALUES ('4 quesos', 'Gran pizza amb un sortit de formatges bonissims', null, '28.90', '2');
 
  INSERT INTO `tipus pizza` (nom, descripcio, imatge, preu, `diametre pizza_iddiametre`)
 VALUES ('4 quesos', 'Gran pizza amb un sortit de formatges bonissims', null, '28.90', '3');

 INSERT INTO `tipus pizza` (nom, descripcio, imatge, preu, `diametre pizza_iddiametre`)
 VALUES ('Chicago', 'Gran pizza amb un sortit de formatges bonissims', null, '29.90', '1');

 INSERT INTO `tipus pizza` (nom, descripcio, imatge, preu, `diametre pizza_iddiametre`)
 VALUES ('Pesto', 'Gran pizza amb un sortit de formatges bonissims', null, '15.70', '1');

 INSERT INTO `tipus pizza` (nom, descripcio, imatge, preu, `diametre pizza_iddiametre`)
 VALUES ('Carbonara', 'Gran pizza amb un sortit de formatges bonissims', null, '17.90', '1');



  INSERT INTO `tipus hamburguesa`(nom, descripcio, imatge, preu)
 VALUES ('Hamburguesa 300g', 'Hamburguesa de 300 g', null, 12.45);

  INSERT INTO `tipus hamburguesa`(nom, descripcio, imatge, preu)
 VALUES ('Hamburguesa 400g', 'Hamburguesa de 400 g', null, 13.45);

  INSERT INTO `tipus hamburguesa`(nom, descripcio, imatge, preu)
 VALUES ('Hamburguesa Vegetal', 'Hamburguesa Vegetal', null, 15.45);

  INSERT INTO `tipus hamburguesa`(nom, descripcio, imatge, preu)
 VALUES ('Hamburguesa de porc', 'Hamburguesa de porc', null, 15.50);




  INSERT INTO `tipus beguda`(nom, descripcio, imatge, preu)
 VALUES ('Coca-cola', 'XL', null, '3.60');

  INSERT INTO `tipus beguda`(nom, descripcio, imatge, preu)
 VALUES ('Coca-cola', 'L', null, '2.50');

  INSERT INTO `tipus beguda`(nom, descripcio, imatge, preu)
 VALUES ('Pepsi', 'XL', null, '3.35');

  INSERT INTO `tipus beguda`(nom, descripcio, imatge, preu)
 VALUES ('Pepsi', 'L', null, '2.35');



  INSERT INTO `tipus hamburguesa_has_comanda` (`tipus hamburguesa_idtipus hamburguesa`, comanda_idcomanda, comanda_client_idclient, numero)
 VALUES ('1', '1', '1', '2');

  INSERT INTO `tipus hamburguesa_has_comanda` (`tipus hamburguesa_idtipus hamburguesa`, comanda_idcomanda, comanda_client_idclient, numero)
 VALUES ('2', '1', '1', '5');

 INSERT INTO `tipus hamburguesa_has_comanda` (`tipus hamburguesa_idtipus hamburguesa`, comanda_idcomanda, comanda_client_idclient, numero)
 VALUES ('4', '1', '1', '1');

  INSERT INTO `tipus hamburguesa_has_comanda` (`tipus hamburguesa_idtipus hamburguesa`, comanda_idcomanda, comanda_client_idclient, numero)
 VALUES ('1', '2', '1', '1');

  INSERT INTO `tipus hamburguesa_has_comanda` (`tipus hamburguesa_idtipus hamburguesa`, comanda_idcomanda, comanda_client_idclient, numero)
 VALUES ('2', '2', '1', '1');

  INSERT INTO `tipus hamburguesa_has_comanda` (`tipus hamburguesa_idtipus hamburguesa`, comanda_idcomanda, comanda_client_idclient, numero)
 VALUES ('3', '3', '1', '2');

  INSERT INTO `tipus hamburguesa_has_comanda` (`tipus hamburguesa_idtipus hamburguesa`, comanda_idcomanda, comanda_client_idclient, numero)
 VALUES ('1', '3', '1', '1');



  INSERT INTO `tipus pizza_has_comanda` (`tipus pizza_idtipus pizza`, comanda_idcomanda, comanda_client_idclient, numero)
 VALUES ('3', '2', '1', '1');

  INSERT INTO `tipus pizza_has_comanda` (`tipus pizza_idtipus pizza`, comanda_idcomanda, comanda_client_idclient, numero)
 VALUES ('4', '2', '1', '1');

  INSERT INTO `tipus pizza_has_comanda` (`tipus pizza_idtipus pizza`, comanda_idcomanda, comanda_client_idclient, numero)
 VALUES ('5', '4', '1', '6');



  INSERT INTO `tipus beguda_has_comanda` (`tipus beguda_idtipus beguda`, comanda_idcomanda, comanda_client_idclient, numero)
 VALUES ('1', '1', '1', '8');

  INSERT INTO `tipus beguda_has_comanda` (`tipus beguda_idtipus beguda`, comanda_idcomanda, comanda_client_idclient, numero)
 VALUES ('3', '2', '1', '2');

  INSERT INTO `tipus beguda_has_comanda` (`tipus beguda_idtipus beguda`, comanda_idcomanda, comanda_client_idclient, numero)
 VALUES ('4', '2', '1', '1');

  INSERT INTO `tipus beguda_has_comanda` (`tipus beguda_idtipus beguda`, comanda_idcomanda, comanda_client_idclient, numero)
 VALUES ('1', '3', '1', '1');

  INSERT INTO `tipus beguda_has_comanda` (`tipus beguda_idtipus beguda`, comanda_idcomanda, comanda_client_idclient, numero)
 VALUES ('2', '3', '1', '2');

  INSERT INTO `tipus beguda_has_comanda` (`tipus beguda_idtipus beguda`, comanda_idcomanda, comanda_client_idclient, numero)
 VALUES ('4', '4', '1', '6');




  INSERT INTO `format comanda`(`recollir o emportar`)
 VALUES ('recollir');

  INSERT INTO `format comanda`(`recollir o emportar`)
 VALUES ('emportar');



 INSERT INTO empleat(nom)
 VALUES ('Gerard Martínez');

  INSERT INTO empleat(nom)
 VALUES ('Guillem Llop');

  INSERT INTO empleat(nom)
 VALUES ('Cristina Gutierrez');


  INSERT INTO comanda (`dia i hora`, client_idclient, `format comanda_idformat comanda`, empleat_idempleat)
 VALUES ('20220703101034', '1', '1', '1');

  INSERT INTO comanda (`dia i hora`, client_idclient, `format comanda_idformat comanda`, empleat_idempleat)
 VALUES ('20220703101151', '2', '2', '1');

  INSERT INTO comanda (`dia i hora`, client_idclient, `format comanda_idformat comanda`, empleat_idempleat)
 VALUES ('20220703101259', '3', '2', '3');

  INSERT INTO comanda (`dia i hora`, client_idclient, `format comanda_idformat comanda`, empleat_idempleat)
 VALUES ('20220703101512', '4', '2', '2');




  INSERT INTO provincia(nom) 
 VALUES ('Barcelona');

  INSERT INTO provincia(nom) 
 VALUES ('Tarragona');

  INSERT INTO provincia(nom) 
 VALUES ('Girona');


  INSERT INTO localitat(nom, provincia_idprovincia) 
 VALUES ('Barcelona', '1');

  INSERT INTO localitat(nom, provincia_idprovincia) 
 VALUES ('Valldoreix', '1');

  INSERT INTO localitat(nom, provincia_idprovincia) 
 VALUES ('Badalona', '1');

  INSERT INTO localitat(nom, provincia_idprovincia) 
 VALUES ('El Prat de Llobregat', '1');

  INSERT INTO localitat(nom, provincia_idprovincia) 
 VALUES ('Hospitalet de Llobregat', '1');



  INSERT INTO `codi postal`(codi, localitat_idlocalitat) 
 VALUES ('08017', '1');

  INSERT INTO `codi postal`(codi, localitat_idlocalitat) 
 VALUES ('08020', '1');

  INSERT INTO `codi postal`(codi, localitat_idlocalitat) 
 VALUES ('08021', '1');

  INSERT INTO `codi postal`(codi, localitat_idlocalitat) 
 VALUES ('08040', '4');

  INSERT INTO `codi postal`(codi, localitat_idlocalitat) 
 VALUES ('08041', '4');

  INSERT INTO `codi postal`(codi, localitat_idlocalitat) 
 VALUES ('08026', '5');




  INSERT INTO client (nom, cognom, adreça, telefon, `codi postal_idcodi postal`,`codi postal_localitat_idlocalitat`) 
 VALUES ('Antonio', 'Hernandez', 'castillejos 234', '938728384', '1', '1');

  INSERT INTO client (nom, cognom, adreça, telefon, `codi postal_idcodi postal`,`codi postal_localitat_idlocalitat`) 
 VALUES ('Isabel', 'Perez', 'castillejos 287', '645324567', '1', '1');

  INSERT INTO client (nom, cognom, adreça, telefon, `codi postal_idcodi postal`,`codi postal_localitat_idlocalitat`) 
 VALUES ('Ana', 'Dominguez', 'valencia 113', '0034654332334', '1', '1');

  INSERT INTO client (nom, cognom, adreça, telefon, `codi postal_idcodi postal`,`codi postal_localitat_idlocalitat`) 
 VALUES ('Clara', 'Jimenez', 'arago 344', '936545454', '1', '1');

  INSERT INTO client (nom, cognom, adreça, telefon, `codi postal_idcodi postal`,`codi postal_localitat_idlocalitat`) 
 VALUES ('Jorge', 'Esteban', 'castillejos 276', '938774454', '1', '1');
