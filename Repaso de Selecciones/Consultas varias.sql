

--Con esta consulta logro ver la edad del alumno en base a su fecha de nacimiento
SELECT Legajo, Apellido, Nombre, DATEDIFF(YEAR, 0, GETDATE()-Fecha_Nacimiento) AS Edad FROM Alumnos 

SELECT Apellido, 1 AS Uno, 'Hola mundo' AS Hola , MONTH (Fecha_Nacimiento) AS Mes, YEAR(Fecha_Nacimiento) AS Anio FROM Alumnos

--con SELECT ALL traemos TODOS los años de nacimiento a traves de la Fecha de nacimiento
SELECT ALL YEAR (Fecha_Nacimiento) AS ANIO_Nas FRoM Alumnos 

--con SELECT DISTINCT traemos los años SIN DUPLICADOS 
SELECT DISTINCT YEAR(Fecha_Nacimiento) AS ANIO_Nac FROM Alumnos

--con SELECT TOP indicamos la cantidad de informacion que queremos 
SELECT TOP (3) YEAR(Fecha_Nacimiento) AS Fecha_Nac FROM Alumnos 

--ordenamos el IDciudad de forma Ascendente
SELECT Legajo,Apellido,Nombre ,IDciudad_Nacimiento FROM Alumnos ORDER BY IDciudad_Nacimiento ASC

--se ordena por IDciudad y por Nombre como segundo ordenamiento
SELECT Legajo,Apellido, Nombre, IDciudad_Nacimiento FROM Alumnos ORDER BY IDciudad_Nacimiento ASC, Apellido DESC

--el operador BETWEEN se utiliza para traer datos entre rangos (legajos entre 6000 y 6020)
SELECT * FROM Alumnos Where Legajo BETWEEN 6000 AND 6020

--SE PUEDE CONCATENAR CADENAS CON EL '+' EN ESTE CASO SE UNIÓ EL NOMBRE Y EL APELLIDO
SELECT Legajo, Apellido +','+ Nombre AS APE_NOM, Fecha_Nacimiento FROM Alumnos WHERE Fecha_Nacimiento BETWEEN 1/10/1990 AND 24/12/1990

--con el OPERADOR in PODEMOS SABER SI UN VALOR SE ENCUENTRA DENTRO DE UNA LISTA DE VALORES, EN ESTE CASO EL LEGAJO 6018
SELECT Legajo, Apellido, Nombre FROM Alumnos WHERE Legajo IN (6018, 6019, 6090)

--TRAE LOS DATOS DE TODOS LOS ALUMNOS QUE NO COINCIDAN CON ESOS LEGAJOS 
SELECT Legajo, Apellido, Nombre FROM Alumnos WHERE Legajo NOT IN (6018, 6019, 6090)

