


--Práctica de comandos 

SELECT * FROM Provincias  --trae la tabla compreta de Ciudades

INSERT INTO Paises(Pais) VALUES ('ARGENTINA'),('COLOMBIA'), ('BRASIL')   -- INSERTO VALORES AL CAMPO PAIS (EL ID ES AUTONUMÉRICO)

INSERT INTO Provincias(Provincia, IDpais) VALUES ( 'BUENOS AIRES',1),( 'FORMOSA',1),( 'CORDOBA',1),( 'CHACO',2),( 'LA PAMPA ',3) -- INSERTO VALORES AL CAMPO PROVINCIA (EL ID ES AUTONUMÉRICO)

INSERT INTO Ciudades(Ciudad, IDprovincia) VALUES ( 'BUENOS AIRES',1),( 'MAR DEL PLATA',1),( 'ENTRE RIOS',1),( 'BARILOCHE',2),( 'LA TABLADA ',3)

INSERt INTO Alumnos (Legajo,Apellido, Nombre, Fecha_Nacimiento, IDciudad_Nacimiento, Telefono, Email, Sexo)
Values (6000,'GUTIERREZ', 'MARIA', 28/10/1989,1, NULL,'maria@gmail.com', 'f' ),(6018,'GUTIERREZ', 'JUAN', 8/12/1989,2,'1234',NULL, 'f' ), (8000,'GOMEZ', 'MARCO', 2/1/1990,1, '4567','GOMEZa@gmail.com', 'M' )
