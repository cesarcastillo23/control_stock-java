CREATE DATABASE control_de_stock;
use control_de_stock;

CREATE TABLE producto(
ID INT NOT NULL AUTO_INCREMENT,
NOMBRE VARCHAR (50) NOT NULL,
DESCRIPCION VARCHAR (255) ,
CANTIDAD INT NOT NULL,
CATEGORIA_ID INT NOT NULL,
PRIMARY KEY (ID)
);

CREATE TABLE categoria(
ID INT NOT NULL AUTO_INCREMENT,
NOMBRE VARCHAR (50) NOT NULL,
PRIMARY KEY (ID)

);
-- INSERTAMOS EL  NOMBRE DE LAS CATEGORIAS 
INSERT INTO categoria (NOMBRE) VALUES('Muebles'),('Tecnologia'),('Cocina'),('Zapatillas');
-- LAS ENLASAMOS
alter table producto add foreign key(categoria_id) references categoria (id);