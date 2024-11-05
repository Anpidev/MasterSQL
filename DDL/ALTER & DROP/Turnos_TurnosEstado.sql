
--Quitar FK de TurnosEstados
ALTER TABLE CentroMedico.dbo.Turnos
DROP CONSTRAINT Turnos_TurnosEstado_FK;


--Entidad temporal
ALTER TABLE CentroMedico.dbo.TurnosEstado
ADD idEstadoTemp tinyINT IDENTITY(1,1);

-- Eliminar la clave primaria en TurnosEstado
ALTER TABLE CentroMedico.dbo.TurnosEstado
DROP CONSTRAINT pk_idTurnosEstado;

-- Eliminar la columna idEstado original
ALTER TABLE CentroMedico.dbo.TurnosEstado
DROP COLUMN idEstado;

--Renombrar la columna temporal a idEstado
EXEC sp_rename 'CentroMedico.dbo.TurnosEstado.idEstadoTemp', 'idEstado', 'COLUMN';

--  Volver a agregar la clave primaria en TurnosEstado
ALTER TABLE CentroMedico.dbo.TurnosEstado
ADD CONSTRAINT pk_idTurnosEstado PRIMARY KEY (idEstado);

-- Restaurar la clave foránea en Turno
ALTER TABLE CentroMedico.dbo.Turnos
ADD CONSTRAINT Turnos_TurnosEstado_FK
FOREIGN KEY (estado) REFERENCES CentroMedico.dbo.TurnosEstado(idEstado);