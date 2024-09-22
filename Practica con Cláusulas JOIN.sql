


Create Database Practica_Join
GO
Use Practica_Join


Create table Paises(
isPais int not null Primary Key Identity (1,1),
Pais nvarchar(50) not null
)
GO

Create table Provincias(
idProvincia int not null Primary Key identity (1,1),
Provincia nvarchar(50) not null,
idPais int not null foreign key references Paises(isPais)
)
GO

Create Table Ciudades(
idCiudad int not null primary key identity(1,1),
Ciudad nvarchar(50) not null,
idProvincia int not null foreign key references Provincias(idProvincia)
)
GO

Create Table Alumnos(
Legajo int not null primary key identity(1,1),
Apellido nvarchar(100) not null,
Nombre nvarchar(100) not null,
Fecha_nacimiento smalldatetime not null,
Direccion nvarchar(100) not null,
idCiudad_nacimiento int not null foreign key references Ciudades(idCiudad),
Telefono varchar(20) null,
Email varchar(20) null,
Sexo char (1) null
)
