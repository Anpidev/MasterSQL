CREATE TABLE CentroMedico.dbo.PagoPaciente (
	idPago int NOT NULL,
	idPaciente int NOT NULL,
	idTurno int NOT NULL,
	CONSTRAINT pk_idPagoPaciente PRIMARY KEY (idPago,idPaciente,idTurno),
	
);


