CREATE TABLE CentroMedico.dbo.Paciente (
	idPaciente int IDENTITY(1,1) NOT NULL,
	nombre varchar(50)  NOT NULL,
	apellido varchar(50) NOT NULL,
	fNacimiento date NULL,
	domicilio varchar(50)   NULL,
	idPais char(3)   NULL,
	telefono varchar(20)   NULL,
	email varchar(30)   NOT NULL,
	observacion varchar(1000)   NULL,
	dni varchar(20)   NOT NULL,
	CONSTRAINT PK_Paciente PRIMARY KEY (idPaciente),
	
);


ALTER TABLE CentroMedico.dbo.Paciente 
ADD CONSTRAINT Paciente_Pais_FK FOREIGN KEY (idPais) 
REFERENCES CentroMedico.dbo.Pais(idPais);
