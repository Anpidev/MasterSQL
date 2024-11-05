--TABLA DE RELACION HISTORIAPACIENTE --
ALTER TABLE CentroMedico.dbo.HistoriaPaciente 
ADD CONSTRAINT HistoriaPaciente_Historias_FK FOREIGN KEY (idHistoria) 
REFERENCES CentroMedico.dbo.Historias(idHistoria);


ALTER TABLE CentroMedico.dbo.HistoriaPaciente 
ADD CONSTRAINT HistoriaPaciente_Paciente_FK FOREIGN KEY (idPaciente) 
REFERENCES CentroMedico.dbo.Paciente(idPaciente);

ALTER TABLE CentroMedico.dbo.HistoriaPaciente 
ADD CONSTRAINT HistoriaPaciente_Medico_FK FOREIGN KEY (idMedico) 
REFERENCES CentroMedico.dbo.Medico(idMedico);

--TABLA RELACION MEDICOESPECIALIDAD--
ALTER TABLE CentroMedico.dbo.MedicoEspecialidad 
ADD CONSTRAINT MedicoEspecialidad_Especialidad_FK FOREIGN KEY (idEspecialidad) 
REFERENCES CentroMedico.dbo.Especialidad(idEspecialidad);

ALTER TABLE CentroMedico.dbo.MedicoEspecialidad 
ADD CONSTRAINT MedicoEspecialidad_Medico_FK FOREIGN KEY (idMedico)
 REFERENCES CentroMedico.dbo.Medico(idMedico);

--TABLA ENTIDAD PACIENTE--
ALTER TABLE CentroMedico.dbo.Paciente 
ADD CONSTRAINT Paciente_Pais_FK FOREIGN KEY (idPais) 
REFERENCES CentroMedico.dbo.Pais(idPais);

--TABLA ENTIDAD PAGO--
ALTER TABLE CentroMedico.dbo.Pago 
ADD CONSTRAINT Pago_Concepto_FK FOREIGN KEY (concepto) 
REFERENCES CentroMedico.dbo.Concepto(idConcepto);

--TABLA RELACION PAGOPACIENTE--
ALTER TABLE CentroMedico.dbo.PagoPaciente 
ADD CONSTRAINT PagoPaciente_Turnos_FK FOREIGN KEY (idTurno) 
REFERENCES CentroMedico.dbo.Turnos(idTurno);

ALTER TABLE CentroMedico.dbo.PagoPaciente 
ADD CONSTRAINT PagoPaciente_Pago_FK FOREIGN KEY (idPago) 
REFERENCES CentroMedico.dbo.Pago(idPago);

ALTER TABLE CentroMedico.dbo.PagoPaciente 
ADD CONSTRAINT PagoPaciente_Paciente_FK FOREIGN KEY (idPaciente) 
REFERENCES CentroMedico.dbo.Paciente(idPaciente);

--TABLA ENTIDAD TURNOS--
ALTER TABLE CentroMedico.dbo.Turnos 
ADD CONSTRAINT Turnos_TurnosEstado_FK FOREIGN KEY (estado) 
REFERENCES CentroMedico.dbo.TurnosEstado(idEstado);

--TABLA RELACION TURNOSPACIENTES--
ALTER TABLE CentroMedico.dbo.TurnosPaciente 
ADD CONSTRAINT TurnosPaciente_Turnos_FK FOREIGN KEY (idTurno) 
REFERENCES CentroMedico.dbo.Turnos(idTurno);

ALTER TABLE CentroMedico.dbo.TurnosPaciente 
ADD CONSTRAINT TurnosPaciente_Paciente_FK FOREIGN KEY (idPaciente) 
REFERENCES CentroMedico.dbo.Paciente(idPaciente);

ALTER TABLE CentroMedico.dbo.TurnosPaciente 
ADD CONSTRAINT TurnosPaciente_Medico_FK FOREIGN KEY (idMedico) 
REFERENCES CentroMedico.dbo.Medico(idMedico);