

/*
Create Database ConsultasAccion
GO
Use ConsultasAccion
*/

Create Table Paises(
	IDPAIS int not null primary key identity (1,1),
	PAIS nvarchar(50) not null
)

GO

Create Table Provincias(
	IDPROVINCIA int not null primary key,
	PROVINCIA nvarchar(50) not null,
	IDPAIS int not null foreign key references Paises(IDPAIS)
)

GO

Create Table Ciudades(
	IDCIUDAD int not null primary key,
	CIUDAD nvarchar(50) not null,
	IDPROVINCIA int not null foreign key references Provincias(IDPROVINCIA)
	) 

GO

	Create Table Alumnos(
		LEGAJO int not null primary key,
		APELLIDO nvarchar(100) not null,
		NOMBRE nvarchar(100) not null,
		FECHA_NACIMIENTO smalldatetime not null,
		DIRECCION nvarchar (100) not null,
		IDCIUDAD int not null,
		TELEFONO varchar(20) null,
		EMAIL varchar(50) null,
		SEXO char(1) null
		)