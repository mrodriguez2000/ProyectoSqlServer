USE [ProyectoUsuarios];

-- Procedimiento almacenado que retorne todos los datos de los trabajadores que laboren en una determinada ciudad
CREATE PROCEDURE UbicacionTrabajo(
	@Ubicacion VARCHAR(30)
)
AS
BEGIN
	SELECT *FROM [dbo].[Trabajadores] WHERE Ciudad LIKE CONCAT('%', @Ubicacion, '%');
END

EXECUTE UbicacionTrabajo 'Bogota'

-- Procedimiento almacenado que contenga parametros opcionales
CREATE PROC CargoModTrabajo(
	@Ocupacion VARCHAR(30) = NULL,
	@ModTrabajo VARCHAR(30) = NULL
)
AS
BEGIN
	SELECT *FROM [dbo].[Trabajadores] WHERE [Cargo] LIKE CONCAT('%', ISNULL(@Ocupacion, Cargo), '%') 
	AND [ModalidadTrabajo] LIKE CONCAT('%', ISNULL(@ModTrabajo, ModalidadTrabajo), '%');
END

-- Codigos para eliminar procedimientos
DROP PROCEDURE UbicacionTrabajo;
DROP PROCEDURE CargoModTrabajo;

-- Formas de llamar el procedimiento CargoModTrabajo
EXEC CargoModTrabajo 'Datos', 'Remoto' -- Trae todos los datos de aquellos trabajadores que tengan la palabra clave 
-- datos en el cargo y remoto en la modalidad de trabajo
EXEC CargoModTrabajo NULL, 'Hib' -- Trae los resultados de los trabajadores que trabajan bajo modalidad hibrida, sin importar el cargo
EXEC CargoModTrabajo 'ciberseguridad', NULL -- Trae los resultados de los trabajadores que trabajen en ciberseguridad, no importa ModTrabajo
EXEC CargoModTrabajo NULL, NULL -- Trae los resultados de la consulta SELECT *FROM Trabajadores
