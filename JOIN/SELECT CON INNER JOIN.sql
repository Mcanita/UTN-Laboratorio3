
/*
 INSERT INTO Paises(Pais) VALUES ('ARGENTINA'),('MAXICO'),('BRASIL'),('URUGUAY'),('COLOMBIA'),('ESPAÑA'),('PERÚ'),('CHILE'),('PANAMÁ')
 INSERT INTO Provincias(Provincia,idPais) VALUES ('BUENOS AIRES',1),('CÓRDOBA',1),('SANTA FE ',1),('MEXICO DC',2),('YUCATÁN',2),('BAHIA',3),('MONTEVIDEO',4),('COLON',4),('BOYACÁ',5),('BOLÍVAR',5)
 INSERT INTO Ciudades(Ciudad,idProvincia) VALUES ('MORÓN',1),('RAMOS MEJIA',1),('CASTELAR',1),('HAEDO',1),('DEAN FUNES',2),('VILLA CARLOS PAZ',2),('VILLA DOLORES',2),('COLON',7),('COLONIA',7),('CANCÚN',4)
 INSERT INTO ALUMNOS(Apellido,Nombre,Fecha_nacimiento,Direccion,idCiudad_nacimiento,Telefono,Email,Sexo)VALUES ('GOMEZ','NADIA',9/1/1994,'DIRECTORIO 98',1,NULL,NULL,'F')
 */


SELECT ALUMNOS.Apellido, ALUMNOS.Nombre, CIUDADES.Ciudad 
FROM ALUMNOS, CIUDADES -- OBTENEMOS EL PRODUCTO DE LOS REGISTROS DE AMBAS TABLAS , POR CADA ALUMNO OBTENEMOS SU COMBINACION CON TODOS LOS REGISTROS DE LA TABLA CIUDADES


SELECT A.Apellido,A.Nombre,C.Ciudad FROM ALUMNOS AS A, CIUDADES AS C 
WHERE A.idCiudad_nacimiento = C.idCiudad


SELECT A.Apellido, A.Nombre, C.Ciudad FROM ALUMNOS AS A
INNER JOIN CIUDADES AS C ON A.idCiudad_nacimiento =C.idCiudad


SELECT A.Apellido, A.Nombre, A.Email, C.Ciudad
FROM Alumnos AS A INNER JOIN Ciudades AS C
ON A.idCiudad_nacimiento = C.idCiudad


--ANIDAMIENTO DE JOINS
SELECT A.apellido, A.Nombre, PA.Pais FROM Alumnos AS A
INNER JOIN Ciudades AS C
ON C.idCiudad = A.idCiudad_nacimiento

INNER JOIN Provincias AS PR
ON PR.idProvincia = C.idProvincia

INNER JOIN Paises AS PA
ON PA.isPais = PR.idPais


