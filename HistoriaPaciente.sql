CREATE TABLE CentroMedico.dbo.HistoriaPaciente (
	idHistoria int NOT NULL,
	idPaciente int NOT NULL,
	idMedico int NOT NULL,
	CONSTRAINT pk_HistoriaPaciente PRIMARY KEY (idHistoria,idPaciente,idMedico),
	
);

ALTER TABLE CentroMedico.dbo.HistoriaPaciente ADD CONSTRAINT HistoriaPaciente_Historias_FK FOREIGN KEY (idHistoria) REFERENCES CentroMedico.dbo.Historias(idHistoria);
ALTER TABLE CentroMedico.dbo.HistoriaPaciente ADD CONSTRAINT HistoriaPaciente_Paciente_FK FOREIGN KEY (idPaciente) REFERENCES CentroMedico.dbo.Paciente(idPaciente);
ALTER TABLE CentroMedico.dbo.HistoriaPaciente ADD CONSTRAINT HistoriaPaciente_Medico_FK FOREIGN KEY (idMedico) REFERENCES CentroMedico.dbo.Medico(idMedico);
