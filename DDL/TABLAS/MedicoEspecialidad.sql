CREATE TABLE CentroMedico.dbo.MedicoEspecialidad (
	idMedico int NOT NULL,
	idEspecialidad int NOT NULL,
	descripcion varchar(50)   NULL,
	CONSTRAINT pk_idMedicoEspecialidad PRIMARY KEY (idMedico,idEspecialidad),
	
);


