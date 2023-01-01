USE ProyectoUsuarios;

-- Función que trae el salario promedio por cargos
CREATE FUNCTION MediaSalarial ()
RETURNS TABLE
AS
RETURN (
		SELECT Cargo, ROUND(AVG(SueldoDevengado), 2) AS MediaSalarial FROM Trabajadores GROUP BY Cargo
)

SELECT *FROM MediaSalarial();

SELECT *FROM Trabajadores;
SELECT *FROM Empresa;

CREATE OR ALTER FUNCTION SalarioPromedioCategoria (
	@CategoriaEmpresa VARCHAR(30)
)
RETURNS TABLE
AS
RETURN (
		SELECT Empresa.CategoriaEmpresa, Trabajadores.Cargo, ROUND(AVG(Trabajadores.SueldoDevengado), 2) AS SalarioPromedio FROM Empresa 
		INNER JOIN Trabajadores ON Empresa.IdEmpresa = Trabajadores.IdTrabajador AND CategoriaEmpresa LIKE CONCAT('%', @CategoriaEmpresa, '%') 
		GROUP BY Empresa.CategoriaEmpresa, Trabajadores.Cargo
)

SELECT *FROM SalarioPromedioCategoria('Finan');