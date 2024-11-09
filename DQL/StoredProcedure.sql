CREATE PROC S_Paciente (
    @idPaciente int 
)
AS

SELECT * FROM Paciente WHERE idPaciente =@idPaciente

GO


--Para ejecutar el Store Procedure 
EXEC S_Paciente 2
--Buscaría el idPaciente 2S