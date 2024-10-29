CREATE TABLE CentroMedico.dbo.HistoriaPaciente (
	idHistoria int NOT NULL,
	idPaciente int NOT NULL,
	idMedico int NOT NULL,
	CONSTRAINT pk_HistoriaPaciente PRIMARY KEY (idHistoria,idPaciente,idMedico),
	
);

