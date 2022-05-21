DROP DATABASE IF EXISTS practica_2;
CREATE DATABASE IF NOT EXISTS practica_2;

USE practica_2;

CREATE TABLE provincias (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(60),
  capital VARCHAR(60),
  gobernador VARCHAR(60),
  poblacion INT,
  superficie INT,
  autonoma_desde DATE
);

CREATE TABLE ciudades (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(60),
  provincia INT,
  poblacion INT,
  superficie INT,
  fundacion DATE,
  intendente VARCHAR(60),
  altitud INT,
  FOREIGN KEY (provincia) REFERENCES provincias(id)
);

CREATE TABLE clientes (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(60),
  apellido VARCHAR(60),
  tel VARCHAR(20),
  calle VARCHAR(40),
  altura INT,
  localidad INT,
  FOREIGN KEY (localidad) REFERENCES ciudades(id)
);

CREATE TABLE productos (
  id INT PRIMARY KEY AUTO_INCREMENT,
  descripcion VARCHAR(60),
  marca VARCHAR(40),
  precio DECIMAL(7,2),
  stock INT
);

CREATE TABLE compras (
  id INT PRIMARY KEY AUTO_INCREMENT,
  fecha DATETIME DEFAULT CURRENT_TIMESTAMP,
  cliente INT NOT NULL,
  producto INT NOT NULL,
  cant INT DEFAULT 1,
  FOREIGN KEY (cliente) REFERENCES clientes(id),
  FOREIGN KEY (producto) REFERENCES productos(id)
);
