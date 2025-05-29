# FIFA World Cup dataset

## Eric Brandon García Luján

Para este tetramestre se usará una base de datos con información de los mundiales de fútbol soccer comprendidos desde 1930 hasta 2014. Se eligió debido a las múltiples relaciones que pueden existir entre las diferentes tablas y por el grado de complejididad que creo que pudieran tener los diferentes campos. 

La base de datos fue extraída del sitio web "Kaggle", directamente del siguiente [link](https://www.kaggle.com/datasets/abecklas/fifa-world-cup) en donde se menciona que la fuente de los datos original es del sitio web de la FIFA y cuenta con 3 diferentes archivos (tablas) en formato csv que contiene la siguiente información:

1. Estadística de los partidos que se jugaron en cada una de las distintas edición
2. Estadística de jugadores que participaron
3. Estadística de cada diferente edición

Lo anterior se relaciona entre sí de modo que, las 3 tablas contienen información de diferentes ediciones enfocadas a cosas distintas, en una se encontrará la información relacionada a los partidos y sus resultados, en otro se observan las estadísticas personales de cada jugador que ha participado y en la última muestra las posiciones finales y las estadísticas generales de cada edición.

La base de datos a usar cuenta con un total de 39 atributos y a continuación se describen algunos de ellos que se observan y se infiere el tipo de dato que pudieran contener:

* Year(Entero)
* Datetime(Fecha)
* Stage (Texto)
* Attendance (Entero)
* Winner (Texto)
* GoalsScored(Entero)
* Referee (Texto)
* MatchID (Entero)
* #Home team (Entero)
* City (Texto)
* Coach name (Texto)
* Line-up (Texto)
* Position (Texto)
* #MatchesPlayed (Entero)

Para lo anterior, usaremos una herramienta gratuita y que sea usada comunmente en distintas industrias como PgAdmin que es una de las plataformas más populares de código abierto para usar PosgreSQL que es considerado uno de los motores de base de datos mas avanzado que es usado en gobiernos, industrias, educación y comercio por su capacidad para las consultas complejas garantizando la integridad y consistencia en los datos a través del lenguaje SQL.
Las características más importantes de PostgreSQL son las siguiente:
 * Alta concurrencia, esto significa que cada consulta SQL es como si estuviera tomando la versión que había en el momento de ejecutar la consulta y eso facilita que haya muchos usuarios al mismo tiempo haciendo distintas consultas y modificando datos sin que se vea afectado el proceso o la conssistencia en los datos.
 * Variedad de tipos nativos, porque tiene otro tipo de datos que otros lenguajes pueden no tener como aquellos que sirven para manipular fechas, direcciones IP, datos geoespaciales lo que lo hace flexible a cualquier proyecto.
 * Seguridad avanzada al proporcionar funciones de seguridad avanzada como la autenticación  el control de acceso a nivel de columna y la encriptación por lo que seguramente tus datos sensibles no tendrán problema.

 Ahora, hablando de pgAdmin es la herramienta que proporciona una interfaz gráfica para administrar, crear y modificar bases de datos ejecutando consultas SQL, administrar usuarios y configurar la replicación. Además de pgAdmin existen otras interfaces como dBeaver o Patroni sin embargo esas no serán usadas debido a su falta de popularidad. También existen alternativas para PostgreSQL y que son también populares como MySQL, Oracle, Microsoft SQL Server.


Fuentes:

- [PgAdmin](https://www.postgresql.org/docs/current/mvcc-intro.html)
- [Enterprise DB](https://www.enterprisedb.com/postgres-tutorials/pgadmin-comparable-tool-plsql-developer-postgresql)
- [Platzi](https://www.enterprisedb.com/postgres-tutorials/pgadmin-comparable-tool-plsql-developer-postgresql)
