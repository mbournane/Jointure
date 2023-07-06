Create DATABASE MarsTalk;
use MarsTalk
CREATE TABLE Martien
(	id INT NOT NULL IDENTITY PRIMARY KEY,
    nom varchar(50),
    idterrien int,
    seperieur int,
    baseReference varchar(50)
)


CREATE TABLE Terrien
(
	id INT NOT NULL IDENTITY PRIMARY KEY,
    nom varchar(50),
    continentReference varchar(50)
)

INSERT INTO Terrien (nom, continentReference) VALUES('martin','Europe')
INSERT INTO Terrien VALUES('david','Europe')
INSERT INTO Terrien VALUES('Camara','Afrique')
INSERT INTO Terrien VALUES('Yasser','Asie')
INSERT INTO Terrien VALUES('George','Amerique')

INSERT INTO Martien VALUES('martin', 3,2, 'centarale')
INSERT INTO Martien VALUES('philipe', 1,4, 'BA166')
INSERT INTO Martien VALUES('martin', 3,2, 'BG213')
INSERT INTO Martien VALUES('martin', 3,2, 'BG56')
INSERT INTO Martien VALUES('martin', 3,2, 'DT112')



SELECT m.nom AS [Martien], t.nom AS [Terrien Réferent] ,t.continentReference AS [continent de Référece], m.baseReference
FROM Martien m
INNER JOIN Terrien t ON m.idterrien = t.id

