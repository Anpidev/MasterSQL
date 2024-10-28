CREATE TABLE CentroMedico.dbo.TurnosPaciente (
	idTurno int NOT NULL,
	idPaciente int NOT NULL,
	idMedico int NOT NULL,
	CONSTRAINT pk_idTurnoPaciente PRIMARY KEY (idTurno,idPaciente,idMedico),
	
);

ALTER TABLE CentroMedico.dbo.TurnosPaciente ADD CONSTRAINT TurnosPaciente_Turnos_FK FOREIGN KEY (idTurno) REFERENCES CentroMedico.dbo.Turnos(idTurno);
ALTER TABLE CentroMedico.dbo.TurnosPaciente ADD CONSTRAINT TurnosPaciente_Paciente_FK FOREIGN KEY (idPaciente) REFERENCES CentroMedico.dbo.Paciente(idPaciente);
ALTER TABLE CentroMedico.dbo.TurnosPaciente ADD CONSTRAINT TurnosPaciente_Medico_FK FOREIGN KEY (idMedico) REFERENCES CentroMedico.dbo.Medico(idMedico);
