use proje;
LOAD DATA Local INFILE "/Users/aa085/Lets begin/AllSql.csv" INTO table allsql5 FIELDS TERMINATED BY ','ENCLOSED BY '"';
select * from allsql5;
CREATE TABLE allsql5 (
    numer Int,
    links VARCHAR(255) -- Example of another column
);
select * from repairsql2;
Load data local infile "/Users/aa085/Lets begin/RepairSql.csv" Into table repairsql2 FIELDS TERMINATED BY ','ENCLOSED BY '"';
CREATE TABLE repairsql2 (
    numer Int,
    ID INT,
    linksss VARCHAR(255) -- Example of another column
);

SELECT
	allsql5.numer,
    CASE
        WHEN allsql5.numer = repairsql2.ID THEN repairsql2.linksss
        ELSE allsql5.links
    END AS linkselection
FROM allsql5
LEFT JOIN repairsql2 ON allsql5.numer = repairsql2.ID;

Create TABLE Adv (
	ID INT PRIMARY KEY,
    Name VARCHAR(255),
    Worldwide FLOAT,
    Adventure INT
);
CREATE TABLE Fantasy (
	ID INT PRIMARY KEY,
    Name VARCHAR(255),
    Worldwide FLOAT,
    Fantasy INT
);

LOAD DATA Local INFILE "/Users/aa085/Movies/Ad1.csv" INTO table Adv FIELDS TERMINATED BY ','ENCLOSED BY '"';
LOAD DATA Local INFILE "/Users/aa085/Movies/Ad2.csv" INTO table Fantasy FIELDS TERMINATED BY ','ENCLOSED BY '"';

Select A.Name,A.Worldwide,A.Adventure,Fantasy.Fantasy
from Adv as A
cross join  
Fantasy on Fantasy.Name=A.Name;