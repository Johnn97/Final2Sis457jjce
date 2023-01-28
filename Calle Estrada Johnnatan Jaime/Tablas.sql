﻿CREATE TABLE Libro (
	id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	isbn BIGINT NOT NULL,
	edicion INT NOT NULL,
	titulo VARCHAR(250) NOT NULL,
	resumen VARCHAR(8000) NOT NULL,
	editorial VARCHAR(250) NOT NULL,
	fechaPublicacion DATE NOT NULL,
)
GO
ALTER TABLE Libro ADD usuarioRegistro VARCHAR(100) NULL DEFAULT SUSER_SNAME();
ALTER TABLE Libro ADD fechaRegistro DATETIME NULL DEFAULT GETDATE();
ALTER TABLE Libro ADD registroActivo BIT NULL DEFAULT 1;

CREATE TABLE Autor (
  id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
  nombres VARCHAR(100) NOT NULL,
  apellidos VARCHAR(100) NOT NULL,
  nacionalidad VARCHAR(100) NOT NULL,
);
GO
ALTER TABLE Autor ADD usuarioRegistro VARCHAR(100) NULL DEFAULT SUSER_SNAME();
ALTER TABLE Autor ADD fechaRegistro DATETIME NULL DEFAULT GETDATE();
ALTER TABLE Autor ADD registroActivo BIT NULL DEFAULT 1;

CREATE TABLE AutorLibro (
  id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
  idAutor INT NOT NULL,
  CONSTRAINT fk_AutorLibro_Autor FOREIGN KEY(idAutor) REFERENCES Autor(id),
  idLibro INT NOT NULL,
  CONSTRAINT fk_AutorLibro_Libro FOREIGN KEY(idLibro) REFERENCES Libro(id),
);
GO
ALTER TABLE AutorLibro ADD usuarioRegistro VARCHAR(100) NULL DEFAULT SUSER_SNAME();
ALTER TABLE AutorLibro ADD fechaRegistro DATETIME NULL DEFAULT GETDATE();
ALTER TABLE AutorLibro ADD registroActivo BIT NULL DEFAULT 1;
INSERT INTO AutorLibro (idAutor, idLibro)
VALUES ('2', '2')
INSERT INTO AutorLibro (idAutor, idLibro)
VALUES ('3', '3')

CREATE TABLE Usuario (
  id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
  usuario VARCHAR(12) NOT NULL,
  clave VARCHAR(250) NOT NULL,
  rol VARCHAR(20) NOT NULL,
  email VARCHAR(50) NOT NULL,	
);
GO
ALTER TABLE Usuario ADD usuarioRegistro VARCHAR(100) NULL DEFAULT SUSER_SNAME();
ALTER TABLE Usuario ADD fechaRegistro DATETIME NULL DEFAULT GETDATE();
ALTER TABLE Usuario ADD registroActivo BIT NULL DEFAULT 1;

INSERT INTO Usuario (usuario, clave, rol, email) 
VALUES ('admin', 'TMG83MKlK2M6qAW/ay8vTQ==', 'admin', 'admin@gmail.com')
INSERT INTO Usuario (usuario, clave, rol,email) 
VALUES ('sis457', 'TMG83MKlK2M6qAW/ay8vTQ==', 'user', 'sis457@gmail.com')
GO