 SET FOREIGN_KEY_CHECKS=0;

 INSERT INTO tipus_de_muntura(`tipus de muntura`) 
 VALUES ('Pasta');
 
 INSERT INTO tipus_de_muntura(`tipus de muntura`) 
 VALUES ('Metàl·lica');
 
 INSERT INTO tipus_de_muntura(`tipus de muntura`) 
 VALUES ('Flotant');
 
 INSERT INTO empleat(nom)
 VALUES ('Roberto Espinoza');
 
 INSERT INTO adreça_proveidor(carrer, numero, pis, porta, ciutat, `codi postal`, pais, proveidor_idproveidor) 
 VALUES (null, null, null, null, 'Barcelona', '08020', 'España', '1');
 
 INSERT INTO adreça_proveidor(carrer, numero, pis, porta, ciutat, `codi postal`, pais, proveidor_idproveidor) 
 VALUES ('Carrer Valenzuela', '348', '2n 1a', '3', 'Barcelona', '08022', 'España', '2');
 
 INSERT INTO adreça_proveidor(carrer, numero, pis, porta, ciutat, `codi postal`, pais, proveidor_idproveidor) 
 VALUES (null, null, null, null, null, null, null, '3');
 
 INSERT INTO proveidor(nom, telefon, fax, NIF) 
 VALUES ('Proveidor de marques d\'ulleres A', '983252324', '+3482983849', 'E2141533');
 
 INSERT INTO proveidor(nom, telefon, fax, NIF) 
 VALUES ('Proveidor de marques d\'ulleres B', '938764754', '+3409234812', 'R-9837-23');
 
 INSERT INTO proveidor(nom, telefon, fax, NIF) 
 VALUES ('Proveidor de marques d\'ulleres C', '932424958', '+3489234783', 'E21.984.988');
 
 INSERT INTO adreça_client(carrer, numero, pis, porta, ciutat, `codi postal`, pais, client_idclient) 
 VALUES ('Carrer sant Pere', '535', '2n 1a', null, 'Barcelona', '08017', 'España', '1');
 
 INSERT INTO adreça_client(carrer, numero, pis, porta, ciutat, `codi postal`, pais, client_idclient) 
 VALUES ('Carrer Jane Goodall', '5', '7e 3a', '22', 'Barcelona', '08021', 'España', '2');
 
 INSERT INTO adreça_client(carrer, numero, pis, porta, ciutat, `codi postal`, pais, client_idclient) 
 VALUES ('Carrer Sant Patrici', '19', '3n 2a', null, 'Barcelona', '08020', 'España', '3');
 
INSERT INTO client (nom, telefon, email, `data de registre`, client_idclient, empleat_idempleat)  
 VALUES ('Luis', '938454332', 'luis_valencia153@gmail.com', '2022-07-03', null, '1');

 INSERT INTO client (nom, telefon, email, `data de registre`, client_idclient, empleat_idempleat)  
 VALUES ('Albert', '9392736', 'albert_@gmail.com', '2022-07-03', '1', '1');
 
 INSERT INTO client (nom, telefon, email, `data de registre`, client_idclient, empleat_idempleat)  
 VALUES ('Anton', '939826332', 'anton9875467@gmail.com', '2022-07-03', '1', '1');
  
 INSERT INTO ulleres_vendes(marca, preu, `color de la muntura`, 
 `graduacio vidre dret`, `graduacio vidre esquerre`,
 `color vidre dret`, `color vidre esquerre`, `tipus de muntura_idtipus de muntura`, 
 client_idclient, empleat_idempleat, proveidor_idproveidor) 
 VALUES ('Emporio Armani', '279.49', 'marró', '2.25', '2.30', 'Transparent', 'Transparent',
 '2', '1', '1', '2');
 
 INSERT INTO ulleres_vendes(marca, preu, `color de la muntura`, 
 `graduacio vidre dret`, `graduacio vidre esquerre`,
 `color vidre dret`, `color vidre esquerre`, `tipus de muntura_idtipus de muntura`, 
 client_idclient, empleat_idempleat, proveidor_idproveidor) 
 VALUES ('Dior', '149.49', 'blau', '1.15', '1.30', 'Transparent', 'Transparent',
 '1', '1', '1', '2');
 
 INSERT INTO ulleres_vendes(marca, preu, `color de la muntura`, 
 `graduacio vidre dret`, `graduacio vidre esquerre`,
 `color vidre dret`, `color vidre esquerre`, `tipus de muntura_idtipus de muntura`, 
 client_idclient, empleat_idempleat, proveidor_idproveidor) 
 VALUES ('Festo', '39.99', 'Sense color', '0.75', '0.55', 'Dark grey', 'Dark grey',
 '1', '1', '1', '2');
 
 INSERT INTO ulleres_vendes(marca, preu, `color de la muntura`, 
 `graduacio vidre dret`, `graduacio vidre esquerre`,
 `color vidre dret`, `color vidre esquerre`, `tipus de muntura_idtipus de muntura`, 
 client_idclient, empleat_idempleat, proveidor_idproveidor) 
 VALUES ('Oiko', '69.95', 'negre', '0.00', '0.00', 'Dark polarize', 'Dark polarize',
 '1', '2', '1', '1');
 
 
 
 