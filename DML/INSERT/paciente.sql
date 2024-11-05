INSERT INTO CentroMedico.dbo.Paciente
( dni, nombre, apellido, fNacimiento, domicilio, idPais, telefono, email, observacion)
VALUES( '45754554', 'Jorge', 'Ramirez', '2019-01-18', 'Calle 23, 15-12', 'COL', NULL, 'mail@mail.com', 'sin observacion');


--Múltiple INSERT
INSERT INTO CentroMedico.dbo.Paciente
(idPaciente, dni, nombre, apellido, fNacimiento, domicilio, idPais, telefono, email, observacion)
VALUES ('27854236','Claudio','Lopez','2019-02-18','Piedras 2056','ARG',NULL,'clopez@gmail.com',NULL );
('30251236','Carlos','Ramirez','1982-07-02','Cerro negro 452','COL',NULL,'cramirez@gmail.com',NULL );

