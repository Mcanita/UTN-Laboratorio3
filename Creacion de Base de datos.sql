



--Create Database Practica_Labo3    //con esto creo la base de datos 
--Go

Use Practica_Labo3

-- //creación de una tabla
Create Table Areas(
	IdArea tinyint not null primary key,
	Nombre varchar (50) not null,
	Presupuesto money not null check (Presupuesto >0),
	Mail varchar (200) null
)
