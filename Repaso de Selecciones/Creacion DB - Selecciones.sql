

/*
CREATE DATABASE PracticaSeleccion

USE  PracticaSeleccion

CREATE TABLE Paises(
	IDpais int not null identity primary key,
	Pais nvarchar(50) not null
)

GO

CREATE TABLE Provincias(
	IDprovincia int not null primary key identity,
	Provincia nvarchar(50) not null,
	IDpais int not null foreign key references Paises(IDpais)
)
GO

CREATE TABLE Ciudades(
	IDciudad int not null identity primary key,
	Ciudad nvarchar(50) not null,
	IDprovincia int not null foreign key references Provincias(IDprovincia)
)
GO

CREATE TABLE Alumnos(
	Legajo int not null primary key,
	Apellido nvarchar(100) not null,
	Nombre nvarchar(100) not null,
	Fecha_Nacimiento smalldatetime not null,
	IDciudad_Nacimiento int not null foreign key references Ciudades(IDciudad),
	Telefono varchar(50) null, 
	Email varchar(50) null,
	Sexo char(1) null
)
GO
*/
