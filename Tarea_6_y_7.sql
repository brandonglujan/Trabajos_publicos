ALTER TABLE FIFA.Matches
MODIFY COLUMN Datetime VARCHAR(50);
---------------------------------------------------
USE FIFA;
ALTER TABLE players
	DROP PRIMARY KEY
	DESCRIBE players;
---------------------------------------------------
ALTER TABLE players 
	ADD COLUMN id INT NOT NULL AUTO_INCREMENT,
	ADD PRIMARY KEY (id)
	
---------------------------------------------------
	USE FIFA;
	SHOW TABLES
#----------Promedio de goles anotados entre 2000 y 2010---------------------	
SELECT AVG(GoalsScored)
FROM WorldCups
WHERE Year BETWEEN 2000 and 2010
--------Las diez ediciones que más goles ha habido-------------------
SELECT Year, GoalsScored
FROM WorldCups
ORDER BY GoalsScored DESC
LIMIT 10;
#---------------Años ordenados conforme a la cantidad de goles de forma ascendente--------------
SELECT Year, GoalsScored
FROM WorldCups
ORDER BY GoalsScored ASC
#-------------#moda---------
#Aquí vemos que la moda es BRAZIL y fuimos más allá acomodando en orden de copas ganadas
SELECT COUNT(Winner) as ganadas, Winner
FROM  Worldcups
GROUP BY Winner
ORDER BY ganadas DESC


##--------------------------TAREA 7 -------------------------
#revisar si hay duplicados en las FK

SELECT MatchID, COUNT(*)
FROM Matches
GROUP BY MatchID 
HAVING COUNT(*) >1;

SELECT *
FROM Matches
WHERE MatchID IS NULL;

SELECT MAX(Year)
FROM Matches

#Revisar datos por encima del promedio
SELECT Attendance, Stadium
FROM Matches
WHERE attendance > (SELECT AVG(attendance) FROM Matches);

SELECT Attendance, Stadium
FROM (
  SELECT Stadium, Attendance, COUNT(*) AS total_asistencia
  FROM Matches
  GROUP BY Stadium
) AS sub
WHERE total_asistencia > 1000

SELECT Stadium, partidos_total
FROM (
  SELECT Stadium, COUNT(*) AS partidos_total
  FROM Matches
  GROUP BY Stadium
) AS sub
WHERE partidos_total > 10;

