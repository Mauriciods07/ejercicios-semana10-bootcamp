CREATE SCHEMA tiendagamejoy;
USE tiendagamejoy;

CREATE TABLE Usuarios(
	id_usuario INT NOT NULL AUTO_INCREMENT,
	nombre VARCHAR(255) NOT NULL,
    apellido VARCHAR(255) NOT NULL,
    correo varchar(255) NOT NULL,
    contrasenia VARCHAR(255) NOT NULL,
    telefono VARCHAR(255) NOT NULL,
    direccion VARCHAR(255) NOT NULL,
    fecha_ingreso DATE NOT NULL,
    numero_tarjeta VARCHAR(16) NULL,
    fecha_expiracion VARCHAR(5) NULL,
    cvv VARCHAR(3) NULL,
    foto VARCHAR(252) NULL,
    es_vendedor BOOLEAN NOT NULL DEFAULT 0,
    comercio VARCHAR(255) NULL,
    nombre_legal VARCHAR(255) NULL,
    correo_empresa VARCHAR(255) NULL,
    telefono_empresa VARCHAR(255) NULL,
    direccion_empresa VARCHAR(255) NULL,
    PRIMARY KEY(id_usuario)
);

CREATE TABLE Productos(
	id_producto INT NOT NULL AUTO_INCREMENT,
    id_usuario INT NOT NULL,
    nombre_producto VARCHAR(255) NOT NULL,
    descripcion text NULL,
    imagen VARCHAR(255) NOT NULL,
    costo FLOAT NOT NULL,
    cantidad INT NOT NULL,
    categoria VARCHAR(255) NOT NULL,
    fecha_producto DATE NOT NULL,
    PRIMARY KEY (id_producto),
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario)
);

CREATE TABLE Compras(
	id_compra INT NOT NULL AUTO_INCREMENT,
	id_usuario INT NOT NULL,
    id_producto INT NOT NULL,
    cantidad INT NOT NULL,
    costo FLOAT NOT NULL,
    fecha_compra DATE NOT NULL,
    PRIMARY KEY (id_compra),
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario),
    FOREIGN KEY (id_producto) REFERENCES Productos(id_producto)
);

-- Vendedores
INSERT INTO Usuarios
(nombre, apellido, correo, contrasenia, telefono, direccion, fecha_ingreso,
numero_tarjeta, fecha_expiracion, cvv, foto, es_vendedor, comercio, nombre_legal, 
correo_empresa, telefono_empresa, direccion_empresa)
VALUES
('Mauricio', 'Díaz', 'mauricio@gorgonitas.com', 'noesunacontrasenia1234', 5522334455, 'Mixcoac, 03910 Mexico City, CDMX', '2021-11-29',
'1234 5678 8765 4321', '03/24', '123', 'src/assets/img/usuarios/mauricio_diaz_001.png', 1, 'GameJoy', 'Mauricio Díaz Segura',
'mauricio@gamejoy.com', 5525255533, 'C. Dinamarca 60, Juárez, Cuauhtémoc, 06600 Ciudad de México, CDMX'),
('Yair', 'Uriostegui', 'yair@gmail.com', 'contraseniaseria4321', 5544321254, 'Balderas, Colonia Centro, Centro, 06000 Ciudad de México, CDMX', '2021-12-14',
'5678 1234 8765 4321', '01/24', '236', 'src/assets/img/usuarios/yair_uriostegui_001.png', 0, 'Siafi', 'Yair Uriostegui Vázquez',
'yair@siafi.com', 5554652575, 'Copilco, Eje 10 Sur (Copilco), Copilco Universidad, 04310 Ciudad de México, CDMX');

-- No vendedores
INSERT INTO Usuarios
(nombre, apellido, correo, contrasenia, telefono, direccion, 
fecha_ingreso, foto, es_vendedor)
VALUES
('Karina', 'Hernández', 'karina@gmail.com', 'otracontrasenia2222', 5545436525, 'La Raza, Mexico City, CDMX',
'2022-02-01', 'src/assets/img/usuarios/karina_henandez_001.png', 0);

INSERT INTO Productos
(nombre_producto, descripcion, imagen, costo, cantidad, categoria, fecha_producto)
VALUES
('Mario Kart 8',
'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Repellat nisi saepe optio vero animi assumenda non quas corporis corrupti eius eum facere quod sunt repellendus, recusandae quo veritatis dolorem? Molestias.',
'src/img/productos/mario_kart8_deluxe.jpg', 1400.50, 'Carreras', '2020-05-11'),
("Luigi's Mansion",
'Lorem ipsum dolor sit amet consectetur adipisicing elit. Praesentium fugiat voluptatum ullam quis recusandae rem id excepturi tempore magni! Doloremque laudantium vero assumenda illum, reprehenderit atque sunt necessitatibus expedita ipsum?',
'src/img/productos/luigis_mansion3.jpg', 1500.00, 'Aventura', '2019-09-22'),
('Pokémon Diamante',
'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dicta cupiditate, repellat nihil quisquam minima enim expedita cum molestiae natus accusantium fugiat voluptates laboriosam, quas modi perspiciatis laudantium temporibus nemo accusamus.',
'src/img/productos/pokemon_brilliant_diamond.jpg', 1300.25, '2021-03-14');

INSERT INTO Compras
(cantidad, costo, fecha_compra)
VALUES
(1, 1400.50, '2021-01-01'),
(4, 1300.25, '2022-01-02'),
(2, 1500.00, '2020-12-23');