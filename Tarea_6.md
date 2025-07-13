# Universidad Autónoma de Nuevo León
## Maestría en Ciencia de datos
### Eric Brandon García Luján
### Tarea 6

Para esta tarea tenemos el objetivo de usar funciones de agregaciones y mediante estas calcular lo siguiente:
- Conteo de frecuencias o media
- Mínimo o máximos
- Cuantil cuyo resultado sea distinto a la mediana
- Moda

Ahora, a modo de reporte identificaremos los primeros hallazgos al trabajar con mis datos por primera vez así como las dificultades que enfrente al momento de plasmar el lenguaje SQL y manipular las tablas.

    1. Dentro de mi primer hallazgo descubrí la comodidad que te da usar _"Set Active"_ o _"Establecer como activa"_ en la base de datos a trabajar sino en cada consulta que hagas tendrás que poner _USE nombre_BD_ y se vuelve más comodo si solo estamos trabajando en una sola BD como en esta ocasión, seguramente cuando se trabaje con varias BD es algo de lo que se debe tener cuidado ya que después podrían verse afectadas otras tablas.

    2. Al mimsmo tiempo noté que, al poner tu BD como predeterminada al teclear el código nuestro gestor de BD te pone opciones al escribir y es más fluido y cómodo trabajar. 

    3. Resolví una duda que no sabía que tenía respecto al lenguaje, por ejemplo en la siguiente consulta: 

    SELECT AVG(GoalsScored)
    FROM WorldCups
    WHERE Year BETWEEN 2000 and 2010

    El resultado pensado era que obtendría el promedio de goles anotado por año de los mundiales que hubo entre 2000 y 2010 y lo que realmente hace es que suma el total de datos y lo divine entre los n datos que son en la columna GoalsScored.

    4. Noté que se me facilita mucho identificar algo que esta mal, eso me hace pensar al mismo tiempo en la lógica de lo que estoy escribiendo y lo que pienso que ejecutará SQL, así que me di cuenta que conforme se me ocurrían las preguntas de lo que quería consultar iba agregando cosas a las consultas de forma natural (Como ORDER BY, GROUP BY, etc...) ya que en el pasado había visto cursos pero nunca lo había puesto en práctica por mi parte y ahora esto me hace recordar lo que vi alguna vez como el uso de LIMIT y el orden en que tienen que ser ejecutadas las sentencias de SQL
