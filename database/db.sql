CREATE DATABASE database_AJUAR;

USE database_AJUAR; 

CREATE TABLE producto(
	id_producto INT (10) NOT NULL, 
	nom_producto VARCHAR (20) NOT NULL, 
	id_coleccion INT (10) NOT NULL,
	nom_tipo VARCHAR (20) NOT NULL,
	precio INT (10) NOT NULL, 
	inventario BOOLEAN (1) NOT NULL, 
PRIMARY KEY (id_producto), 
FOREIGN KEY (id_coleccion) REFERENCES coleccion(id_coleccion),
FOREIGN KEY (nom_tipo) REFERENCES tipo(nom_tipo)
); 

CREATE TABLE coleccion(
	id_coleccion INT (10) NOT NULL, 
	nom_coleccion VARCHAR (20) NOT NULL, 
	desc_coleccion VARCHAR (60), 
PRIMARY KEY (id_coleccion)
); 

CREATE TABLE tipo(
	nom_tipo VARCHAR (20) NOT NULL, 
id_coleccion INT (10) NOT NULL, 
PRIMARY KEY (nom_tipo),
FOREIGN KEY (id_coleccion) REFERENCES coleccion(id_coleccion)
); 

CREATE TABLE cliente(
	id_cliente INT (10) NOT NULL, 
	nom_cliente VARCHAR (15) NOT NULL, 
pass_cliente VARCHAR (15) NOT NULL, 
correo_cliente VARCHAR (15) NOT NULL, 
	tel_cliente VARCHAR (13), 
PRIMARY KEY (id_cliente)
); 

CREATE TABLE direccion(
	id_dir INT (10) NOT NULL,
id_cliente INT (10) NOT NULL, 
num_casa INT (10) NOT NULL, 
calle VARCHAR (20) NOT NULL, 
colonia VARCHAR (20) NOT NULL, 
ciudad VARCHAR (20) NOT NULL, 
pais VARCHAR (20) NOT NULL, 
PRIMARY KEY (id_dir),
FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

CREATE TABLE carrito(
	id_cliente INT (10) NOT NULL, 
	pago INT (10) NOT NULL, 
id_producto INT (10) NOT NULL, 
PRIMARY KEY (id_cliente, id_producto),
FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
FOREIGN KEY (id_producto) REFERENCES producto(id_producto)
); 

CREATE TABLE compra(
	id_compra INT (10) NOT NULL, 
	id_cliente INT (10) NOT NULL, 
	id_producto INT (10) NOT NULL, 
PRIMARY KEY (id_compra), 
FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente), 
FOREIGN KEY (id_producto) REFERENCES producto(id_producto)
); 

CREATE TABLE contacto(
	c_nombre VARCHAR (20) NOT NULL, 
c_email VARCHAR (20) NOT NULL, 
c_comentario VARCHAR (600) NOT NULL,
PRIMARY KEY (c_nombre, c_email)
); 
