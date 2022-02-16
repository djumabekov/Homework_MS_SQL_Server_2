USE ClubsBase;

UPDATE Persons
  SET LastName = 'Титов'
  WHERE ClubID BETWEEN 1 AND 3;

UPDATE Persons
  SET ClubID = NULL
  WHERE ClubID = 1;
	
--------------------------------------------------------------------
--SELECT - basic
--------------------------------------------------------------------
SELECT *
  FROM Cities;

SELECT IIN, LastName, FirstName
  FROM Persons;		


--ORDER BY
SELECT *
  FROM Persons
	ORDER BY LastName, FirstName;
  
	
SELECT IIN AS N'ИИН', (LastName + ' ' + FirstName) AS Name 
  FROM Persons
	ORDER BY LastName, FirstName;
  

SELECT *
  FROM Persons
	ORDER BY Birthday DESC, LastName, FirstName;
	
	
	
--DISTINCT 
SELECT DISTINCT LastName
  FROM Persons
	ORDER BY LastName;
	
	
SELECT DISTINCT Birthday
  FROM Persons
	ORDER BY Birthday;


SELECT DISTINCT LastName, FirstName
  FROM Persons
	ORDER BY LastName, FirstName;  



-- TOP
SELECT TOP (10) *
  FROM Persons
	ORDER BY LastName, FirstName;



--WHERE
SELECT *
  FROM Persons
	WHERE PersonID = 3
	ORDER BY LastName, FirstName;


SELECT *
  FROM Persons
  WHERE IIN = '811207176352' OR Birthday >= '1990-01-01'
  ORDER BY Birthday; 	


SELECT *
  FROM Persons
  WHERE ClubID = 3 AND LastName= 'Титов'
  ORDER BY LastName, FirstName;


SELECT *
  FROM Persons
	WHERE ClubID <> 10 AND LastName= 'Титов'
  ORDER BY LastName, FirstName;



--IN
SELECT *
  FROM Persons
	WHERE LastName IN ('Иванов', 'Титов', 'Сидоров')
	ORDER BY LastName, FirstName;



--LIKE
SELECT *
  FROM Persons
	WHERE LastName LIKE 'Ти%'
	ORDER BY LastName, FirstName;

SELECT *
  FROM Persons
	WHERE LastName LIKE '%Ти%'
	ORDER BY LastName, FirstName;

 
 
--NULL 
SELECT * FROM Persons
	WHERE Birthday IS NULL
	ORDER BY LastName, FirstName;

SELECT * FROM Persons
	WHERE Birthday IS NOT NULL
	ORDER BY LastName, FirstName;





