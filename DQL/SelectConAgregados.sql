--MAX y MIN
SELECT MAX(fPago) FROM PAGO;
SELECT MIN(precio) FROM PAGO;

--SUM
SELECT SUM(precio) FROM PAGO;
SELECT SUM(precio) AS CosteTotal FROM PAGO;--Suma 20 a cada precio 

SELECT SUM(precio)+20 AS CosteTotal FROM PAGO;--Hace una suma de 20 al total
--AVG
SELECT AVG(precio) AS CostePromedio FROM Pago;
SELECT AVG(precio+20) AS CostePromedio FROM Pago; 
SELECT AVG(precio)+20 AS CostePromedio FROM Pago;  
--En AVG da igual donde pongas la suma si dentro o fuera de ()

--COUNT
SELECT COUNT (idPaciente) FROM Paciente ;
SELECT COUNT (idPaciente) FROM Paciente WHERE apellido ='Perez';

--HAVING (ASOCIADO A GROUP BY)
SELECT estado FROM Turnos GROUP BY estado HAVING estado=2;