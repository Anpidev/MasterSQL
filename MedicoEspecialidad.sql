CREATE TABLE CentroMedico.dbo.MedicoEspecialidad (
	idMedico int NOT NULL,
	idEspecialidad int NOT NULL,
	descripcion varchar(50)   NULL,
	CONSTRAINT pk_idMedicoEspecialidad PRIMARY KEY (idMedico,idEspecialidad),
	
);

ALTER TABLE CentroMedico.dbo.MedicoEspecialidad ADD CONSTRAINT MedicoEspecialidad_Especialidad_FK FOREIGN KEY (idEspecialidad) REFERENCES CentroMedico.dbo.Especialidad(idEspecialidad);
ALTER TABLE CentroMedico.dbo.MedicoEspecialidad ADD CONSTRAINT MedicoEspecialidad_Medico_FK FOREIGN KEY (idMedico) REFERENCES CentroMedico.dbo.Medico(idMedico);
