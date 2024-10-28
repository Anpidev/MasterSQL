CREATE TABLE CentroMedico.dbo.Concepto (
    idConcepto TINYINT       IDENTITY (1, 1) NOT NULL,
    descripcion VARCHAR (100) NULL,
    CONSTRAINT pk_idConcepto PRIMARY KEY  (idConcepto)
);




