CREATE TABLE CentroMedico.dbo.Pago (
	idPago int IDENTITY(1,1) NOT NULL,
	concepto tinyint NOT NULL,
	fPago datetime NULL,
	precio money NOT NULL,
	estado tinyint NULL,
	observacion varchar(1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT pk_idPago PRIMARY KEY (idPago),
);


ALTER TABLE CentroMedico.dbo.Pago 
ADD CONSTRAINT Pago_Concepto_FK FOREIGN KEY (concepto) 
REFERENCES CentroMedico.dbo.Concepto(idConcepto);
