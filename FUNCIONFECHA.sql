CREATE FUNCTION `ObtenerFechaHoraPedido` ()
RETURNS VARCHAR(50) 

BEGIN
 DECLARE @fecha_hora VARCHAR(50);
    SET @fecha_hora = CONVERT(VARCHAR(20), GETDATE(), 120);

RETURN @fecha_hora;
END