CREATE TABLE Team
(
 teamNumber INTEGER NOT NULL,
 teamName VARCHAR(50) NOT NULL,
 CONSTRAINT PK_Team PRIMARY KEY(teamNumber),

)

CREATE TABLE Cyclist
(
 cyclistNumber INTEGER NOT NULL,
 familyName VARCHAR(50),
 givenName VARCHAR(50),
 teamNumber INTEGER  NOT NULL,
 CONSTRAINT PK_Cyclist PRIMARY KEY(cyclistNumber),
 CONSTRAINT FK_Team_Cyclist FOREIGN KEY(teamNumber) REFERENCES Team(teamNumber)
)

INSERT INTO team (teamName, teamNumber) VALUES 
('Pink', 1),
('Lady', 2)

INSERT INTO Cyclist(cyclistNumber, familyName, givenName, teamNumber) VALUES 
(111, 'John', 'Lennon', 1),
(222, 'Mike', 'Wick', 2),
(333, 'Sam', 'Smith', 2)

SELECT teamName FROM Team ORDER BY teamName ASC
SELECT familyName, givenName FROM Cyclist 
SELECT familyName, givenName, teamName FROM Cyclist, Team