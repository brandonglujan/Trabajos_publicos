# Universidad Autónoma de Nuevo León
## Maestría en Ciencia de datos
### Eric Brandon García Luján
### Tarea 8

Para esta tarea tenemos el objetivo de crear un VIEW sobre una consulta significativa o recurrente que pudiera tener mi base de datos, además incluir lo siguiente:
 - Join
 - Left Join
 - Right-Join

Además, crearemos un "Trigger" ya sea de inserción, actualización o eliminación.

Para lo primero he realizado el siguiente código en dónde extraigo el jugador que más copas del mundo ha jugado, dado que al momento de estar trabajando el código mi primer resultado fue "Ronaldo" con un total de 6 copas. Por mi (poco) conocimiento en fútbol sé que hay 2 Ronaldo's muy famosos, Cristiano Ronaldo y Ronaldo Nazario, como también fui yo quien eligió la BD sé que es información hasta el 2014 y para aquel año el único posible que tuviera 6 copas es Ronaldo Nazario, sobre todo por la edad de Cristiano así que lo quise confirmar, por lo que después de haber hecho el primer código agregué finalmente el país de origen del jugador.
Hago la aclaración de que me gusta el fútbol y que yo seleccioné la BD porque viéndolo desde un punto de vista de un entorno laboral es probable que te encuentres con bases de las cuáles no sabrás cierta información y no será posible hacer este tipo de decucciones por lo que concluyo que quitar columnas puede ser tan malo como agregar las que no necesitas por lo que siempre hay que pensar en codificar cosas que "no obvien".

Primer código: 

DROP VIEW Jugador_Mas_Copas
CREATE VIEW Jugador_Mas_Copas AS
SELECT
  p.Player_Name,
  p.Team_Initials,
  COUNT(DISTINCT m.Year) AS Total_Copas,
  GROUP_CONCAT(DISTINCT m.Stadium) AS Estadios_Jugados
FROM players p
JOIN matches m ON p.MatchID = m.MatchID
WHERE m.Year IN (SELECT Year FROM WorldCups)
GROUP BY p.Player_Name, p.Team_Initials;

El código anterior es el que arroja a Ronaldo con 6 copas del mundo jugadas como resultado, al querer agregar el país ahora la consulta es la siguiente:

CREATE VIEW Jugador_Mas_Copas AS
SELECT 
  p.Player_Name,
  p.Team_Initials,
  COUNT(DISTINCT m.Year) AS Total_Copas,
  GROUP_CONCAT(DISTINCT m.Stadium) AS Estadios_Jugados
FROM players p
JOIN matches m ON p.MatchID = m.MatchID
WHERE m.Year IN (SELECT Year FROM WorldCups)
GROUP BY p.Player_Name, p.Team_Initials;

SELECT *
FROM Jugador_Mas_Copas
ORDER BY Total_Copas DESC
LIMIT 1;

Este otro código me arroja un resultado distinto, el de Antonio Carbajal. con 5 copas del mundo.

Ahora, haremos 2 Triggers, el primero es para revisar que al momento de registrar goles no los registren con valores negativos:

DELIMITER //

CREATE TRIGGER validar_goles
BEFORE INSERT ON Matches
FOR EACH ROW
BEGIN
  IF NEW.Home_Team_Goals < 0 OR NEW.Away_Team_Goals < 0 THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Los goles no pueden ser negativos';
  END IF;
END;
//

DELIMITER ;

Se me ocurrió también un Trigger que guarde en una tabla todos los elementos eliminados:

DELIMITER //

CREATE TRIGGER auditar_eliminacion_jugador
AFTER DELETE ON players
FOR EACH ROW
BEGIN
  INSERT INTO players_deleted (player_name, team_initials, deleted_at)
  VALUES (OLD.Player_Name, OLD.Team_Initials, NOW());
END;
//

DELIMITER ;



