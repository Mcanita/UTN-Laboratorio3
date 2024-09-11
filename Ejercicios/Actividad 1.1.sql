



-- Create database AcademiaMusica
-- Use AcademiaMusica 

--Create Table TipoInstrumento(
--IDInstrumento smallint primary key not null identity (1,1),
--ClasificacionIns varchar (50) not null,
--)

--Create Table Instrumentos(

--IDinstrumento varchar(5) primary key not null,
--Nombre_Instrumento VARCHAR (20) not null,
--Tipo_Instrumento smallint not null foreign key references TipoInstrumento(IDInstrumento),
--)


--Create Table Musicos(
--IDmusico tinyint primary key not null identity (1, 1),
--Nombre varchar (50) not null,
--Apellido  varchar(50) not null,
--FIngreso date not null,
--FNac date not null,
--)


Create Table Instrumentos_X_Musicos(
IDmusico tinyint not null foreign key references Musicos(IDmusico),
IDinstrumento varchar(5) not null foreign key references Instrumentos (IDinstrumento),
Primary key (IDmusico, IDinstrumento),

)

