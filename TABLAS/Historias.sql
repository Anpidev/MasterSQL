CREATE TABLE CentroMedico.dbo.Historias(
    idHistoria INT            IDENTITY (1, 1) NOT NULL,
    fHistoria  DATETIME       NULL,
    observacion VARCHAR (2000) NULL,
    CONSTRAINT pk_idHistoria PRIMARY KEY  (idHistoria)
);



