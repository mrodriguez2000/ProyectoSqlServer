CREATE DATABASE ProyectoUsuarios;

USE ProyectoUsuarios;

CREATE TABLE Empresa(
	IdEmpresa INT IDENTITY(1,1) PRIMARY KEY,
	NombreEmpresa VARCHAR(30) NOT NULL,
	CategoriaEmpresa VARCHAR(30) NOT NULL
);

CREATE TABLE Trabajadores(
	IdTrabajador INT IDENTITY(1,1) PRIMARY KEY,
	Nombre VARCHAR(30) NOT NULL,
	Cargo VARCHAR(30),
	Ciudad VARCHAR(30),
	SueldoDevengado FLOAT,
	ModalidadTrabajo VARCHAR(30),
	Empresa INT NOT NULL,
	CONSTRAINT FKEMPRESA FOREIGN KEY (Empresa) REFERENCES Empresa(IdEmpresa)
);

-- Insertando valores en la tabla Empresa
INSERT INTO Empresa
VALUES
('Pragma', 'Tecnologico'),
('Bancolombia', 'Financiero'),
('BBVA', 'Financiero'),
('Sonda', 'Tecnologico'),
('Sistecredito', 'Credito'),
('Banco AV Villas', 'Financiero'),
('Mercado Libre', 'Comercio electronico'),
('Davivienda', 'Financiero'),
('Didi', 'Transporte'),
('Banco de Bogota', 'Financiero'),
('Viva 1A IPS', 'Salud'),
('Nueva EPS', 'Salud'),
('Banco de Occidente', 'Financiero'),
('Puntos Colombia', 'Credito'),
('Puntored', 'Comercio'),
('Microsoft', 'Tecnologico'),
('Bavaria', 'Bebidas'),
('Banco Itau', 'Financiero'),
('Postobon', 'Bebidas'),
('Grupo Nutresa', 'Alimentos');

-- Insertando valores en la tabla Trabajadores

INSERT INTO Trabajadores
VALUES
('Usuario 01', 'Analista de datos', 'Bogota D.C', 3500000, 'Remoto', 3),
('Usuario 02', 'Ingeniero Devops', 'Bogota D.C', 4500000, 'Hibrido', 1),
('Usuario 03', 'Ingeniero de datos', 'Medellin', 4000000, 'Remoto', 9),
('Usuario 04', 'Ingeniero Devops', 'Medellin', 5000000, 'Presencial', 2),
('Usuario 05', 'Ingeniero de proyectos TI', 'Bucaramanga', 7000000, 'Presencial', 19),
('Usuario 06', 'Ingeniero de datos', 'Barranquilla', 3000000, 'Remoto', 15),
('Usuario 07', 'Ingeniero de datos', 'Barranquilla', 2500000, 'Remoto', 19),
('Usuario 08', 'Desarrollador web Frontend', 'Bogota D.C', 3000000, 'Presencial', 1),
('Usuario 09', 'Desarrollador web Backend', 'Medellin', 4000000, 'Remoto', 7),
('Usuario 10', 'Ingeniero de datos', 'Medellin', 6000000, 'Hibrido', 5),
('Usuario 11', 'Ingeniero de ciberseguridad', 'Bogota D.C', 5000000, 'Presencial', 10),
('Usuario 12', 'Ingeniero Devops', 'Bogota D.C', 5000000, 'Remoto', 8),
('Usuario 13', 'Cientifico de datos', 'Bogota D.C', 6500000, 'Presencial', 6),
('Usuario 14', 'Ingeniero de ciberseguridad', 'Bogota D.C', 6000000, 'Hibrido', 3),
('Usuario 15', 'Ingeniero de proyectos TI', 'Barranquilla', 3000000, 'Remoto', 6),
('Usuario 16', 'Cientifico de datos', 'Cali', 5500000, 'Hibrido', 16),
('Usuario 17', 'Ingeniero de ciberseguridad', 'Bogota D.C', 5500000, 'Presencial', 18),
('Usuario 18', 'Analista de datos', 'Bogota D.C', 4500000, 'Remoto', 20),
('Usuario 19', 'Analista de datos', 'Cali', 3200000, 'Remoto', 20),
('Usuario 20', 'Ingeniero de ciberseguridad', 'Bogota D.C', 6500000, 'Hibrido', 4),
('Usuario 21', 'Desarrollador web fullstack', 'Bogota D.C', 5500000, 'Remoto', 18),
('Usuario 22', 'Ingeniero de datos', 'Bogota D.C', 5600000, 'Remoto', 3),
('Usuario 23', 'Desarrollador movil', 'Bucaramanga', 4600000, 'Remoto', 5),
('Usuario 24', 'Ingeniero Devops', 'Medellin', 6600000, 'Remoto', 5),
('Usuario 25', 'Cientifico de datos', 'Barranquilla', 3600000, 'Presencial', 11),
('Usuario 26', 'Ingeniero de proyectos TI', 'Bogota D.C', 7600000, 'Presencial', 6),
('Usuario 27', 'Desarrollador movil', 'Cali', 4200000, 'Remoto', 13),
('Usuario 28', 'Ingeniero de ciberseguridad', 'Medellin', 5600000, 'Remoto', 13),
('Usuario 29', 'Ingeniero de datos', 'Medellin', 5750000, 'Hibrido', 2),
('Usuario 30', 'Analista de datos', 'Bogota D.C', 5690000, 'Remoto', 1),
('Usuario 31', 'Dir. Bussiness Intelligence', 'Bogota D.C', 7900000, 'Presencial', 9),
('Usuario 32', 'Coord. Bussiness Intelligence', 'Medellin', 7500000, 'Presencial', 2),
('Usuario 33', 'Desarrollador web Frontend', 'Barranquilla', 3500000, 'Remoto', 10),
('Usuario 34', 'Coord. Bussiness Intelligence', 'Bogota D.C', 7300000, 'Presencial', 14),
('Usuario 35', 'Cientifico de datos', 'Bogota D.C', 5600000, 'Remoto', 13),
('Usuario 36', 'Cientifico de datos', 'Medellin', 6600000, 'Remoto', 17),
('Usuario 37', 'Desarrollador movil', 'Bogota D.C', 3600000, 'Presencial', 18),
('Usuario 38', 'Desarrollador movil', 'Bogota D.C', 3000000, 'Presencial', 9),
('Usuario 39', 'Analista de datos', 'Bogota D.C', 4000000, 'Remoto', 13),
('Usuario 40', 'Ingeniero de datos', 'Barranquilla', 3500000, 'Remoto', 18),
('Usuario 41', 'Desarrollador movil', 'Cali', 4500000, 'Remoto', 13),
('Usuario 42', 'Cientifico de datos', 'Bogota D.C', 5000000, 'Remoto', 14),
('Usuario 43', 'Lider Bussinness Intelligence', 'Bucaramanga', 6000000, 'Remoto', 16),
('Usuario 44', 'Coord. Bussiness Intelligence', 'Bogota D.C', 6500000, 'Presencial', 13),
('Usuario 45', 'Lider Bussinness Intelligence', 'Medellin', 5000000, 'Remoto', 11),
('Usuario 46', 'Ingeniero de datos', 'Bogota D.C', 5500000, 'Hibrido', 20),
('Usuario 47', 'Desarrollador web Frontend', 'Bucaramanga', 4500000, 'Remoto', 16),
('Usuario 48', 'Ingeniero Devops', 'Medellin', 7450000, 'Hibrido', 4),
('Usuario 49', 'Ingeniero de ciberseguridad', 'Bogota D.C', 7500000, 'Hibrido', 4),
('Usuario 50', 'Analista de datos', 'Bogota D.C', 6300000, 'Remoto', 9),
('Usuario 51', 'Ingeniero de proyectos TI', 'Bogota D.C', 6500000, 'Presencial', 3),
('Usuario 52', 'Lider Bussinness Intelligence', 'Bucaramanga', 3600000, 'Remoto', 8),
('Usuario 53', 'Dir. Bussiness Intelligence', 'Medellin', 7000000, 'Presencial', 2),
('Usuario 54', 'Desarrollador web Frontend', 'Barranquilla', 3750000, 'Remoto', 7),
('Usuario 55', 'Analista de datos', 'Barranquilla', 2650000, 'Presencial', 6),
('Usuario 56', 'Cientifico de datos', 'Barranquilla', 7500000, 'Remoto', 13),
('Usuario 57', 'Desarrollador web fullstack', 'Medellin', 4500000, 'Hibrido', 4),
('Usuario 58', 'Desarrollador movil', 'Barranquilla', 3900000, 'Remoto', 7),
('Usuario 59', 'Ingeniero de ciberseguridad', 'Bogota D.C', 4600000, 'Remoto', 5),
('Usuario 60', 'Ingeniero de datos', 'Barranquilla', 4350000, 'Remoto', 14),
('Usuario 61', 'Ingeniero de datos', 'Bogota D.C', 4650000, 'Remoto', 5),
('Usuario 62', 'Especialista en servidores', 'Bucaramanga', 4200000, 'Remoto', 4),
('Usuario 63', 'Ingeniero de datos', 'Medellin', 4600000, 'Remoto', 7),
('Usuario 64', 'Especialista en servidores', 'Bogota D.C', 4650000, 'Presencial', 6),
('Usuario 65', 'Analista de datos', 'Cali', 3600000, 'Remoto', 16),
('Usuario 66', 'Ingeniero de datos', 'Bogota D.C', 4656000, 'Remoto', 3),
('Usuario 67', 'Ingeniero de ciberseguridad', 'Medellin', 3650000, 'Remoto', 6),
('Usuario 68', 'Especialista en servidores', 'Bucaramanga', 3360000, 'Remoto', 8),
('Usuario 69', 'Analista de datos', 'Bogota D.C', 2900000, 'Presencial', 13),
('Usuario 70', 'Ingeniero Devops', 'Barranquilla', 5600000, 'Remoto', 16),
('Usuario 71', 'Desarrollador web Frontend', 'Cali', 4500000, 'Remoto', 20),
('Usuario 72', 'Desarrollador web Backend', 'Barranquilla', 3350000, 'Presencial', 11),
('Usuario 73', 'Desarrollador ETL', 'Barranquilla', 2450000, 'Presencial', 11),
('Usuario 74', 'Desarrollador Fullstack', 'Bucaramanga', 4560000, 'Remoto', 17),
('Usuario 75', 'Desarrollador ETL', 'Bogota D.C', 3695000, 'Hibrido', 6),
('Usuario 76', 'Ingeniero Devops', 'Bogota D.C', 5600000, 'Hibrido', 10),
('Usuario 77', 'Analista de datos', 'Bogota D.C', 3600000, 'Presencial', 12),
('Usuario 78', 'Desarrollador ETL', 'Bogota D.C', 3700000, 'Presencial', 12),
('Usuario 79', 'Desarrollador web Frontend', 'Bogota D.C', 3900000, 'Presencial', 8),
('Usuario 80', 'Ingeniero de datos', 'Bogota D.C', 4500000, 'Hibrido', 6),
('Usuario 81', 'Desarrollador ETL', 'Bogota D.C', 3500000, 'Presencial', 20),
('Usuario 82', 'Desarrollador IOS', 'Bogota D.C', 2649000, 'Hibrido', 7),
('Usuario 83', 'Ingeniero de datos', 'Medellin', 4250000, 'Presencial', 5),
('Usuario 84', 'Desarrollador IOS', 'Bucaramanga', 3600000, 'Remoto', 7),
('Usuario 85', 'Ingeniero de ciberseguridad', 'Bogota D.C', 6500000, 'Presencial', 3),
('Usuario 86', 'Ingeniero Devops', 'Medellin', 7500000, 'Remoto', 1),
('Usuario 87', 'Ingeniero Devops', 'Bogota D.C', 6655000, 'Remoto', 2),
('Usuario 88', 'Ingeniero de datos', 'Bogota D.C', 4500000, 'Presencial', 10),
('Usuario 89', 'Desarrollador web Frontend', 'Bucaramanga', 4000000, 'Remoto', 2),
('Usuario 90', 'Ingeniero de datos', 'Bogota D.C', 5650000, 'Hibrido', 3),
('Usuario 91', 'Ingenierode ciberseguridad', 'Bogota D.C', 6500000, 'Presencial', 13),
('Usuario 92', 'Desarrollador web Fullstack', 'Barranquilla', 4560000, 'Remoto', 4),
('Usuario 93', 'Ingeniero de datos', 'Bogota D.C', 6950000, 'Hibrido', 17),
('Usuario 94', 'Analista de datos', 'Bogota D.C', 3563000, 'Hibrido', 20),
('Usuario 95', 'Desarrollador ETL', 'Bucaramanga', 6900000, 'Remoto', 14),
('Usuario 96', 'Ingeniero Devops', 'Cali', 7500000, 'Remoto', 5),
('Usuario 97', 'Especialista en servidores', 'Medellin', 3690000, 'Presencial', 2),
('Usuario 98', 'Desarrollador web Backend', 'Cali', 4630000, 'Presencial', 13),
('Usuario 99', 'Desarrollador web Frontend', 'Bogota D.C', 4625000, 'Presencial', 9),
('Usuario 100', 'Ingeniero de datos', 'Bogota D.C', 4650000, 'Remoto', 2);

SELECT *FROM Trabajadores;
SELECT *FROM Empresa;
SELECT Trabajadores.ModalidadTrabajo, ROUND(AVG(Trabajadores.SueldoDevengado), 2) AS SalarioPromedio FROM Trabajadores 
GROUP BY Trabajadores.ModalidadTrabajo ORDER BY AVG(Trabajadores.SueldoDevengado) DESC;

-- Consultas de unión entre tablas
SELECT Trabajadores.Nombre, Trabajadores.Cargo, Trabajadores.SueldoDevengado, Empresa.NombreEmpresa, Empresa.CategoriaEmpresa, 
Trabajadores.ModalidadTrabajo, Trabajadores.Ciudad FROM Trabajadores INNER JOIN Empresa ON Trabajadores.Empresa = Empresa.IdEmpresa;

SELECT Trabajadores.Nombre, Trabajadores.Cargo, Trabajadores.SueldoDevengado, Empresa.NombreEmpresa, Trabajadores.Ciudad FROM Trabajadores 
INNER JOIN Empresa ON Trabajadores.Empresa = Empresa.IdEmpresa;

-- Consultas para calcular el sueldo promedio por Cargo
SELECT Trabajadores.Cargo, ROUND(AVG(Trabajadores.SueldoDevengado), 2) AS SueldoPromedio FROM Trabajadores 
GROUP BY Trabajadores.Cargo ORDER BY AVG(Trabajadores.SueldoDevengado) DESC;

-- Consultas para calcular el sueldo promedio por Categoria de empresa
SELECT Empresa.CategoriaEmpresa, ROUND(AVG(Trabajadores.SueldoDevengado), 2) AS SueldoPromedio FROM Empresa INNER JOIN Trabajadores ON
Empresa.IdEmpresa = Trabajadores.Empresa GROUP BY Empresa.CategoriaEmpresa ORDER BY AVG(Trabajadores.SueldoDevengado) DESC;

-- Creación de una vista usando CASE
-- La vista consiste en realizar una clasificación por cargos, por ejemplo, si en el cargo contiene la palabra clave web
-- será considerado desarrollador web

GO
CREATE VIEW ClasificacionCargos AS SELECT *, CASE
WHEN [Cargo] LIKE '%web%' THEN 'Desarrollador web'
WHEN [Cargo] LIKE '%datos%' OR [Cargo] LIKE '%ETL%' THEN 'Especialistas en datos'
WHEN [Cargo] LIKE '%movil%' OR [Cargo] LIKE '%IOS%' THEN 'Desarrollador movil'
WHEN [Cargo] LIKE 'dir%' OR [Cargo] LIKE '%proyectos%' OR [Cargo] LIKE '%coord%' OR [Cargo] LIKE '%Lid%' THEN 'Admin. Proyectos TI'
ELSE 'Ramas especializadas'
END AS 'Clasificacion' FROM [dbo].[Trabajadores];

SELECT * FROM [dbo].[ClasificacionCargos] WHERE [Clasificacion] LIKE '%especializada%';

-- Eliminar la vista, posteriormente se volverá a crear
DROP VIEW ClasificacionCargos;

-- Actualizado algunos registros
UPDATE Trabajadores SET Cargo = 'Desarrollador web Fullstack' WHERE Cargo = 'Desarrollador Fullstack';