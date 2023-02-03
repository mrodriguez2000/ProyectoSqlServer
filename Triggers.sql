USE ProyectoUsuarios;

CREATE TABLE Historial(
	Id INT IDENTITY(1,1),
	Nombre VARCHAR(30),
	AnteriorCargo VARCHAR(30),
	AnteriorCiudad VARCHAR(30),
	AnteriorSueldo FLOAT,
	AnteriorModalidad VARCHAR(30),
	AnteriorEmpresa INT,
	FechaActualizacion DATETIME
);

CREATE TRIGGER HistorialActualizacion ON Trabajadores
FOR UPDATE
AS
BEGIN
	INSERT INTO Historial
	(Nombre, AnteriorCargo, AnteriorCiudad, AnteriorSueldo, AnteriorModalidad, AnteriorEmpresa, FechaActualizacion)
	SELECT Nombre, Cargo, Ciudad, SueldoDevengado, ModalidadTrabajo, Empresa, GETDATE() FROM deleted;
END;
SELECT *FROM Trabajadores;

UPDATE Trabajadores SET Cargo = 'Ingeniero de datos', SueldoDevengado = 3956000 WHERE IdTrabajador = 1;

SELECT *FROM Historial;