-- Crear la base de datos
CREATE DATABASE Comercio; --Crear primero la base de datos y luego ejecutar el resto del codigo

-- Usar la base de datos creada
USE Comercio;

-- Crear la tabla 'Clientes'
CREATE TABLE Clientes (
    Id INT PRIMARY KEY AUTO_INCREMENT, --Autogenera la Key
    Nombre VARCHAR(50) NOT NULL,
    Apellido VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    Telefono VARCHAR(15) --Permite datos NULL
);

-- Crear la tabla 'Pedidos'
CREATE TABLE Pedidos (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    FechaPedido DATE NOT NULL,
    Total DECIMAL(10,2) NOT NULL,
    IdCliente INT NOT NULL,
    FOREIGN KEY (IdCliente) REFERENCES Clientes(Id)
);

-- Insertar datos en la tabla 'Clientes'
INSERT INTO Clientes (Nombre, Apellido, Email, Telefono)
VALUES 
('Juan', 'Perez', 'jperez@gmail.com', '123-456-7890'),
('Maria', 'Gonzalez', 'mgonzalez@hotmail.com', '987-654-3210'),
('Pedro', 'Rodriguez', 'prodriguez@gmail.com', NULL);

-- Insertar datos en la tabla 'Pedidos'
INSERT INTO Pedidos (FechaPedido, Total, IdCliente)
VALUES 
('2022-01-01', 50.00, 1),
('2022-01-02', 75.00, 2),
('2022-01-03', 125.00, 1),
('2022-01-04', 100.00, 3);