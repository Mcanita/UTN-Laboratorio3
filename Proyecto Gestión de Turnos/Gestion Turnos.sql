Create Database GestionTurnos
GO
Use GestionTurnos
GO

Create Table Especialidad(
idEspecialidad int not null Primary Key Identity,
Nombre varchar(30) not null unique
)
GO

Create Table Pais(
idPais int not null Primary Key Identity,
Nombre varchar(30) not null unique 
)
GO

Create Table Provincia(
idProvincia int not null Primary Key Identity,
Nombre varchar(30) not null,
idPais int not null Foreign Key references Pais(idPais)
)
GO

Create Table Ciudad(
idCiudad int not null Primary Key Identity,
Nombre varchar(30) not null,
idProvincia int not null Foreign Key references Provincia(idProvincia)
)
GO

Create Table Direccion(
idDireccion int not null Primary Key Identity,
Calle varchar(30) not null,
idCiudad int not null Foreign Key references Ciudad(idCiudad)
)
GO

Create Table Consultorio(
idConsultorio int not null Primary Key Identity,
NombreConsultorio varchar(30) not null,
NroConsultorio int not null
)
GO

Create Table DatosPersonales(
DNI int not null Primary Key,
Nombre varchar(30) not null,
Apellido varchar(30) not null,
FechaNacimiento date not null,
idDireccion int not null Foreign Key references Direccion(idDireccion),
Email varchar(100) not null unique,
Telefono varchar(15) not null
)
GO

Create Table Profesional(
Matricula int not null Primary Key,
idEspecialidad int not null Foreign Key references Especialidad(idEspecialidad),
idConsultorio int not null Foreign Key references Consultorio(idConsultorio),
Honorario money not null constraint CHK_HonorarioProfesional check (Honorario >0),
DuracionTurno int not null constraint CHK_DuracionTurno check(DuracionTurno>0),
DNI int not null  Foreign Key references DatosPersonales(DNI)
)
GO

Create Table Cobertura(
idCobertura int not null Primary Key,
Nombre varchar(30) not null,
PorcentajeCobertura int not null constraint CHK_PorcentajeCobertura check (PorcentajeCobertura between 1 and 100)
)
GO

Create Table Paciente(
idPaciente int not null Primary Key,
idCobertura int not null Foreign Key references Cobertura(idCobertura),
DNI int not null Foreign Key references DatosPersonales(DNI)
)
GO

Create Table EstadoTurno(
    idEstadoTurno int not null Primary Key Identity,
    Descripcion varchar(20) not null
)
GO

Create Table Turno(
    idTurno int not null Primary Key Identity,
    Matricula int not null Foreign Key references Profesional(Matricula),
    idPaciente int not null Foreign Key references Paciente(idPaciente),
    FechaTurno datetime not null,
    idEstadoTurno int not null Foreign Key references EstadoTurno(idEstadoTurno)
)
GO

Create Table Profesional_Paciente(
    Matricula int not null Foreign Key references Profesional(Matricula),
    idPaciente int not null Foreign Key references Paciente(idPaciente),
    Primary Key (Matricula, idPaciente)
)