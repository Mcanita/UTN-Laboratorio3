

 Use Master                  -- esto borra la base de datos de Universidad
Drop Database Universidad 

--Create Database Universidad   --crea la base de datos
--Use Universidad               -- hace que se asigne esta DB para usar


/*Create table Carreras(
	IDCarrera smallint not null primary key identity (10, 1), --identity es autoincremental
	Nombre varchar (50) not null,
	DuracionAños tinyint not null check (DuracionAños >=1)

)*/


 -- Alter Table Carreras   --Alter Table es para modificar una tabla
 -- Add CantidadHoras smallint not null default(1000)   --en este caso queremos agregar ADD. DEFAUL pone un valor por defecto

  -- Alter Table Carreras
  -- Add Constraint CHK_CantidadHoras Check (CantidadHoras >=100)  --Constraint se usa para agregar una restricción, en este caso que la cantidad de horas no sea menor a 100


  /*Create Table Alumnos(
	Legajo int primary key not null check (Legajo >=1),
	Apellidos varchar (50) not null,
	Nombres varchar (50) not null,
	IDCarrera smallint not null foreign key references Carreras (IDCarrera)

  )*/


  -- Clave única alternativa
  --Alter Table Alumnos
  --Add Email varchar(258) not null  unique --Unique lo hace único
