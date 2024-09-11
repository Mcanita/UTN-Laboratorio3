



--INSERCIÓN DE DATOS

--Insertando un país a la tabla paises
INSERT INTO Paises (Pais) values ('Colombia')

--Inserción en tabla Ciudades
INSERt INTO Ciudades (IDCIUDAD,CIUDAD,IDPROVINCIA) VALUES (1 , 'OLIVOS' ,1)

--Se pueden insertar múltiples filas en la misma consulta INSERT
INSERT INTO Ciudades (IDCIUDAD,CIUDAD,IDPROVINCIA) VALUES (2,'MORON',2),(3,'HAEDO', 5)

--Inserción en la tabla de alumnos 
INSERT INTO Alumnos (LEGAJO,APELLIDO, NOMBRE, FECHA_NACIMIENTO, DIRECCION, IDCIUDAD, TELEFONO, SEXO) 
VALUE (9000, 'FERNANDEZ', 'JUAN', '1987/05/08' ,'URUGUAY 1234',1, NULL,'M')

-----------------------------------------------------------------------------------------------------------


--MODIFICAR DATOS

--modificar el email a NULL a todos los alumnos que hayan nacido entre 1980 y 1985
UPDATE Alumnos SET EMAIL = NULL 
WHERE YEAR (FECHA_NACIMIENTO) BETWEEN 1980 AND 1985

--modificar el nombre a 'Juan Carlos' y la direccion a 'Belgrano 4567' al alumno con legajo 9000
UPDATE Alumnos SET NOMBRE = 'Juan Carlos', DIRECCION = 'Belgrano 4567'
WHERE LEGAJO =9000

---------------------------------------------------------------------------------------------------------------

--ELIMINAR DATOS 

--Eliminar el registro del alumno con legajo 9000
DELETE FROM Alumnos 
WHERE LEGAJO= 9000

--Eliminar todos los registros de alumnos desexo masculino que no tengan telefono o mail
DELETE FROM Alumnos 
WHERE SEXO ='M' AND (EMAIL IS NULL OR TELEFONO IS NULL)

--Eliminar todos los registros de alumnos cuyo nombre comience con 'J' y su apellido termine con 'z'
DELETE FROM Alumnos 
WHERE NOMBRE LIKE 'J%' AND APELLIDO LIKE '%Z'
