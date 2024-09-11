



/*
Create Database Libreria
Use Libreria
*/


Create table Clientes(
	IDcliente bigint primary key not null identity (1,1),
	EMAIL varchar (50) not null unique,
)


Create Table Datos_Cliente(
	IDcliente bigint not null foreign key references Clientes (IDcliente),
	Nombre varchar (50) not null,
	Apellido varchar(50) not null,
	Telefono varchar (20) not null,
	Direccion varchar (50) not null
)


Create Table Categorias(
	IDcategoria int primary key not null,
	Descripcion varchar (30) not null,

)



Create Table Autor(
	IDautor bigint not null primary key identity (1,1),
	Nombre varchar (50) not null,
	Apellido varchar (50) not null,
	Paisnacimiento varchar (50) not null,
)


Create Table Libros(
	IDlibro bigint not null primary key identity (100,1),
	Titulo varchar (100) not null,
	FechaPuclicacion date not null,
	Genero int not null foreign key references Categorias(IDcategoria),
	Autor bigint not null foreign key references Autor(IDautor),
)

Create Table Libros_Por_Autor(
	IDlibro bigint not null foreign key references libros(IDlibro),
	IDautor bigint not null foreign key references Autor(IDautor),
	primary key (IDlibro, IDautor),
	
)

Create Table Libros_Por_Clientes (
	IDcliente bigint not null foreign key references Clientes(IDcliente),
	IDlibro bigint not null foreign key references Libros(IDlibro),
	Primary key(IDcliente, IDlibro),
	PuntajeLibro smallint null,
	FechaAdquisicion date not null,
)

