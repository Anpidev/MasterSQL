CREATE TABLE CentroMedico.dbo.TurnosPaciente (
	idTurno int NOT NULL,
	idPaciente int NOT NULL,
	idMedico int NOT NULL,
	CONSTRAINT pk_idTurnoPaciente PRIMARY KEY (idTurno,idPaciente,idMedico),
	
);


