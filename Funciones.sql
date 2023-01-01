USE ProyectoUsuarios;

CREATE FUNCTION MediaSalarial ()
RETURNS TABLE
AS
RETURN (
		SELECT Cargo, ROUND(AVG(SueldoDevengado), 2) AS MediaSalarial FROM Trabajadores GROUP BY Cargo
)

SELECT *FROM MediaSalarial();