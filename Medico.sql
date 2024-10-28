CREATE TABLE CentroMedico.dbo.Medico (
    idMedico INT          IDENTITY (1, 1) NOT NULL,
    nombre   VARCHAR (50) NOT NULL,
    apellido VARCHAR (50) NOT NULL,
    CONSTRAINT pk_idMedico PRIMARY KEY  (idMedico )
);




