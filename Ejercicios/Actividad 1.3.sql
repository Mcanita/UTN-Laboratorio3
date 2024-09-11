




/*
Create Database AsociacionPatologos
Use AsociacionPatologos
*/

Create Table Torneos(
	IDTorneo int primary key not null identity (1,1),
	Nombre varchar (50) not null
)

Create Table Locacion(
	IDPais smallint not null primary key,
	Nombre varchar (50) not null
)

Create Table Datos_Torneo(
	IDTorneo int not null foreign key references Torneos(IDTorneo),
	FechaTorneo date  not null,
	Pais smallint not null foreign key references Locacion(IDPais),
	Premio money not null constraint CHK_Premio check (Premio>0),
	CostoInscripcion money not null constraint CHK_CostoInscripcion check (CostoInscripcion >0)
)

Create Table Participantes (
	IDParticipante smallint not null primary key identity (100,1),
	Nombre varchar (50) not null,
	Apellido varchar (50) not null,
	FechaNacimiento date not null,
	Pais smallint not null foreign key references Locacion(IDPais)
)

Create Table Participantes_X_Torneo (
	IDTorneo int not null foreign key references Torneos(IDTorneo),
	IDParticipantes smallint not null foreign key references Participantes(IDParticipante),
	primary key (IDTorneo, IDParticipantes)
)

Create Table Especie(
	IDEspecie int not null primary key,
	Descripcion varchar (50) not null
)


Create Table Captura(
	IDCaptura bigint not null primary key ,
	Especie int not null foreign key references Especie (IDEspecie),
	Peso Float not null,
	HoraCaptura time not null,
	IdTag int not null unique

)

Create Table Capturas_X_Participante(	
	IDCaptura bigint foreign key references Captura(IDCaptura),
	IDParticipante smallint not null foreign key references Participantes(IDParticipante),
	primary key (IDCaptura, IDParticipante)

)
