
/* 
-- TALLER MYSQL
-- 1.Crear la base de datos concesionario con las siguientes tablas:
-- marcas:


-- idMarca     nombre
-- 1           Lamborghini
-- 2           Audi
-- 3           Chevrolet
-- 4           Ford
-- 5           Renault
-- 6           Volkswagen


-- autos
-- idAuto      nombre                    precio  idMarca
-- 1           RS6                       100     2
-- 2           Sport Clio R.S.'11        80      5
-- 3           Corvette Stingray L46 350 500     3
-- 4           Mustang GT                290     4
-- 5           Scirocco GT24             140     6
-- 6           RS200                     640     4
-- 7           TT ABT Touring Car        279     2
-- 8           Diablo GT '00             1000    1
-- 9           Camaro Z28 Coupe          550     3
-- 10          Reventon '08              800     1


-- -- a) Consultar todos los autos que contengan la cadena GT
-- -- b) Consultar todos los autos cuya marca finalice con la letra t
-- -- c) Consultar referencia del auto, precio y nombre de la marca de los autos cuyo precio esté
-- -- en un rango delimitado entre 100 y 550
-- -- d) Consultar referencia del auto y marca de los autos cuyas marcas sean igual a Chevrolet
-- -- y Ford, organizarlos alfabéticamente de acuerdo a la referencia del auto.
*/

CREATE DATABASE concesionario CHARACTER SET utf8 COLLATE  utf8_unicode_ci;

USE concesionario;

CREATE TABLE marcas (
idMarca INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(255)
);

CREATE TABLE  autos (
idAuto INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(255),
precio INT,
idMarca INT NOT NULL
);

INSERT INTO marcas (nombre) VALUES ('Lamborghini'),('Audi'),('Chevrolet'),('Ford'),('Renault'),('Volkswagen');

INSERT INTO autos (nombre, precio, idMarca ) VALUES ('RS6','100 ', 2),('Sport Clio R.S. 11','80', 5),('Corvette Stingray L46 350','500', 3),('Mustang GT ','290 ', 4),('Scirocco GT24 ','140 ', 6);

INSERT INTO autos (nombre, precio, idMarca ) VALUES ('RS200','640', 4),('TT ABT Touring Car','279', 2),(' Diablo GT 00','1000', 1),('Camaro Z28 Coupe','550', 3),('Reventon 08','800 ', 1);



ALTER TABLE autos ADD CONSTRAINT fk_autos FOREIGN KEY (idMarca) REFERENCES marcas (idMarca)  ON DELETE CASCADE ON UPDATE CASCADE;