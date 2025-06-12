
Dando seguimiento a las tareas anteriores se desarrolló el diagrama E-R que permite visualizar de una mejor forma las entidades,el tipo de dato que tendrá cada campo. Posteriormente explicaremos algunas operaciones que se pueden usar mediante operadores de álgebra relacional como se vió en clase.

# Diagrama E-R

```mermaid
erDiagram
  Matches {
    int Year FK
    datetime Datetime
    string Stage
    string Stadium
    string City
    string Home_Team_Name 
    int Home_Team_Goals
    int Away_Team_Goals
    string Away_Team_Name
    string Win_conditions
    int Attendance
    int Half_time_Home_Goals
    int Half_time_Away_Goals
    string Referee
    string Assistant_1
    string Assistant_2
    int RoundID
    int MatchID PK
    string Home_Team_Initials
    string Away_Team_Initials
  }

  Players {
    int RoundID
    int MatchID PK
    string Team_Initials
    string Coach_Name
    string Line-up
    int Shirt_Number
    string Player_Name
    string Position
    string Event
  }

  WorldCups {
    int Year PK
    string Country
    string Winner
    string Runners_Up
    string Third
    string Fourth
    int Goals_Scored
    int Qualified_Teams
    int Matches_Played
    int Attendance
  }

  WorldCups ||--o{ Matches : Incluye
  Players ||--o{ Matches : Juegan
  WorldCups ||--o{ Players : Juegan

  
  ```

Con estas BD podemos realizar distintas operaciones de álgebra relacional que se traducen en comandos de consultas SQL, a continuación se listan algunos ejemplos

1. ### Selección
Podemos hacer un filtrado con condiciones específicas dependiendo la información por analizar, en este caso doy un ejemplo filtrando los datos de ediciones que se hayan realizado posteriormente al año 2000:

    - σ Year >2000

2. ### Proyección
Se eligen columnas específicas de modo que los recursos computacionales se optimicen y el tiempo de consulta pueda ser menor y por eso se seleccionan solamente campos que nos interese visualizar, por ejemplo:

    - π Home team Name, Home team Goals, Away team Name, Away team Goals
En el ejemplo anterior se consulta el nombre y los goles de partidos del equipo local y visitante.

3. ### Producto cartesiano
Nos servirá para combinar todas las filas de dos o más entidades, en el siguiente ejemplo unimos la entidad _Players_ con la entidad _Matches_ de tal forma que podríamos tener todos los jugadores que participaron en un partido en específico:

    - Players x Matches

4. ### Intersección
También podríamos saber cuántos y cuáles equipos quedaron campeones del mundo jugando de local (en su propio país) el siguiente ejemplo es la intersección que tendríamos que realizar:

    - Winner ∩ Home team Name
Aunque lo anterior es una forma simple de verlo, tendríamos que realizar otro tipo de operaciones antes de llegar al resultado como renombrar columnas para que estas coincidan y podamos analizar la información de mejor forma.