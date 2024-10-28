CREATE TABLE CentroMedico.dbo.PagoPaciente (
	idPago int NOT NULL,
	idPaciente int NOT NULL,
	idTurno int NOT NULL,
	CONSTRAINT pk_idPagoPaciente PRIMARY KEY (idPago,idPaciente,idTurno),
	
);

ALTER TABLE CentroMedico.dbo.PagoPaciente ADD CONSTRAINT PagoPaciente_Turnos_FK FOREIGN KEY (idTurno) REFERENCES CentroMedico.dbo.Turnos(idTurno);
ALTER TABLE CentroMedico.dbo.PagoPaciente ADD CONSTRAINT PagoPaciente_Pago_FK FOREIGN KEY (idPago) REFERENCES CentroMedico.dbo.Pago(idPago);
ALTER TABLE CentroMedico.dbo.PagoPaciente ADD CONSTRAINT PagoPaciente_Paciente_FK FOREIGN KEY (idPaciente) REFERENCES CentroMedico.dbo.Paciente(idPaciente);
