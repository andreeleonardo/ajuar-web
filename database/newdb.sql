CREATE DATABASE database_AJUAR;

USE database_AJUAR; 

CREATE TABLE coleccion(
	id_coleccion INT (10) NOT NULL AUTO_INCREMENT, 
	nom_coleccion VARCHAR (20) NOT NULL, 
	desc_coleccion VARCHAR (60), 
	PRIMARY KEY (id_coleccion)
); 
ALTER TABLE coleccion ADD UNIQUE INDEX(nom_coleccion);

CREATE TABLE tipo(
	nom_tipo VARCHAR (20) NOT NULL, 
	id_coleccion INT (10) NOT NULL, 
	PRIMARY KEY (nom_tipo),
	FOREIGN KEY (id_coleccion) REFERENCES coleccion(id_coleccion)
); 
ALTER TABLE tipo ADD UNIQUE INDEX(id_coleccion,nom_tipo);

CREATE TABLE producto(
	id_producto INT (10) NOT NULL AUTO_INCREMENT, 
	nom_producto VARCHAR (20) NOT NULL, 
	nom_tipo VARCHAR (20) NOT NULL,
	precio INT (10) NOT NULL, 
	inventario TINYINT (1) NOT NULL, 
	PRIMARY KEY (id_producto), 
	FOREIGN KEY (nom_tipo) REFERENCES tipo(nom_tipo)
); 

CREATE TABLE cliente(
	id_cliente INT (10) NOT NULL AUTO_INCREMENT, 
	nom_cliente VARCHAR (15) NOT NULL, 
    pass_cliente VARCHAR (15) NOT NULL, 
    correo_cliente VARCHAR (15) NOT NULL, 
	tel_cliente VARCHAR (13), 
PRIMARY KEY (id_cliente)
); 
ALTER TABLE cliente ADD UNIQUE INDEX(correo_cliente);

CREATE TABLE direccion(
	id_dir INT (10) NOT NULL AUTO_INCREMENT,
    id_cliente INT (10) NOT NULL, 
    num_casa INT (10) NOT NULL, 
    calle VARCHAR (20) NOT NULL, 
    colonia VARCHAR (20) NOT NULL, 
    ciudad VARCHAR (20) NOT NULL, 
    pais VARCHAR (20) NOT NULL, 
PRIMARY KEY (id_dir),
FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

CREATE TABLE compra(
	id_compra INT (10) NOT NULL AUTO_INCREMENT, 
	id_cliente INT (10) NOT NULL, 
	id_producto INT (10) NOT NULL, 
	id_dir INT (10), 
	pago INT (10) NOT NULL, 
PRIMARY KEY (id_compra), 
FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente), 
FOREIGN KEY (id_producto) REFERENCES producto(id_producto)
); 
 
--NUEVO CONTACTO-->
 CREATE TABLE contact(
    name VARCHAR (60) NOT NULL,
    email VARCHAR (60) NOT NULL,
    comments VARCHAR (200) NOT NULL
);



DELIMITER //
CREATE PROCEDURE createProducto(nomproducto_aj VARCHAR (20), desc_coleccion_aj VARCHAR (60), nomcoleccion_aj VARCHAR (20),  nomtipo_aj VARCHAR (20), precio_aj INT (10), inventario_aj TINYINT (1))

BEGIN 

DECLARE fk_id INT; 
	INSERT IGNORE INTO coleccion( nom_coleccion, desc_coleccion) VALUES (nomcoleccion_aj, desc_coleccion_aj);
	SELECT id_coleccion INTO fk_id FROM coleccion where nom_coleccion = nomcoleccion_aj;
	INSERT IGNORE INTO tipo (nom_tipo, id_coleccion) VALUES (nomtipo_aj, fk_id); 
	INSERT INTO producto(nom_producto, nom_tipo, precio, inventario) VALUES (nomproducto_aj, nomtipo_aj, precio_aj, inventario_aj); 
END
//

CALL createProducto ('Noche Estrellada', 'Nuestra primera coleccion', 'First Collection',  'camiseta', 250, 1);
CALL createProducto ('El diablo', 'Nuestra primera coleccion', 'First Collection',  'camiseta', 250, 1);
CALL createProducto ('Saquen las caguas', 'Nuestra primerca coleccion', 'First Collection',  'camiseta', 250, 1);


CALL createProducto('Noche Estrellada', 'Nuestra primera coleccion','First Collection', 'camiseta', 250, 1);
CALL createProducto('Las Meninas', 'Nuestra primera coleccion','First Collection', 'camiseta', 250, 1);
CALL createProducto('Dali Apocalypse', 'Nuestra primera coleccion','First Collection', 'camiseta', 250, 1);

CALL createProducto('Noche Estrellada', 'Nuestra primera coleccion','First Collection', 'camiseta', 250, 1);
CALL createProducto('Las Meninas', 'Nuestra primera coleccion','First Collection', 'camiseta', 250, 1);
CALL createProducto('Dali Apocalypse', 'Nuestra primera coleccion','First Collection', 'camiseta', 250, 1);


CALL createProducto('Vete al Infierno','Nuestra primera coleccion','First Collection', 'camiseta', 250, 1);
CALL createProducto('Cigarros After Chale', 'Nuestra primera coleccion','First Collection', 'camiseta', 250, 1);
CALL createProducto('Dios Bendiga Las Caguamitas', 'Nuestra primera coleccion','First Collection', 'camiseta', 250, 1);
CALL createProducto('De la Roja', 'Nuestra primera coleccion','First Collection', 'camiseta', 250, 1);
CALL createProducto('Saquen Las kawas', 'Nuestra primera coleccion','First Collection', 'camiseta', 250, 1);
CALL createProducto('Oink G', 'Nuestra primera coleccion','First Collection', 'camiseta', 250, 1);

CALL createProducto('Venus', 'Nuestra primera coleccion','First Collection', 'camiseta', 250, 1);

CALL createProducto('Cupido', 'Nuestra primera coleccion','First Collection', 'camiseta', 250, 1);