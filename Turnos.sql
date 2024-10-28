CREATE TABLE CentroMedico.dbo.Turnos (
	idTurno int IDENTITY(1,1) NOT NULL,
	fTurno datetime NULL,
	estado smallint NULL,
	observacion varchar(300)   NULL,
	CONSTRAINT pk_idTurno PRIMARY KEY (idTurno),
	
);


ALTER TABLE CentroMedico.dbo.Turnos ADD CONSTRAINT Turnos_TurnosEstado_FK FOREIGN KEY (estado) REFERENCES CentroMedico.dbo.TurnosEstado(idEstado);
