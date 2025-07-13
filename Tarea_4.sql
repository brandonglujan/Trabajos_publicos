CREATE TABLE players (
RoundID INT NOT NULL,
MatchID INT PRIMARY KEY NOT NULL,
Team_Initials VARCHAR(10),
Coach_Name VARCHAR(50),
Line_up VARCHAR(50),
Shirt_Number INT,
Player_Name VARCHAR(50),
Position VARCHAR(30),
Event VARCHAR(30)
);

CREATE TABLE WorldCups (
Year INT PRIMARY KEY,
Country VARCHAR(50),
Winner VARCHAR(50),
Runners_Up VARCHAR(50),
Third VARCHAR(50),
Fourth VARCHAR(50),
Goals_Scored INT,
Qualified_Teams INT,
Matches_Played INT,
Attendance INT
);

DROP TABLE IF EXISTS matche;
CREATE TABLE Matches (
Year INT,
Datetime DATETIME,
Stage VARCHAR(50),
Stadium VARCHAR(50),
City VARCHAR(50),
Home_Team_Name VARCHAR(50),
Home_Team_Goals INT,
Away_Team_Goals INT,
Away_Team_Name VARCHAR(50),
Win_Conditions VARCHAR(50),
Attendance INT,
Half_time_Home_Goals INT,
Half_time_Away_Goals INT,
Referee VARCHAR(50),
Assistant_1 VARCHAR(50),
Assistant_2 VARCHAR(50),
RoundID INT,
MatchID INT PRIMARY KEY,
Home_Team_Initials VARCHAR(10),
Away_Team_Initials VARCHAR(10),
FOREIGN KEY (Year) REFERENCES WorldCups(Year)
);
