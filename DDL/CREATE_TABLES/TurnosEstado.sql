CREATE TABLE CentroMedico.dbo.TurnosEstado (
	idEstado smallint NOT NULL IDENTITY (1,1),
	Descripcion varchar(50)   NULL,
	CONSTRAINT pk_idTurnosEstado PRIMARY KEY (idEstado)
);
