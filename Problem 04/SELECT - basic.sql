USE Northwind;

UPDATE Categories
  SET CategoryName = 'Milk'
  WHERE CategoryID BETWEEN 4 AND 5;

UPDATE Customers
  SET City = 'Liverpool'
  WHERE Country = 'UK';
	
--------------------------------------------------------------------
--SELECT - basic
--------------------------------------------------------------------
SELECT *
  FROM Employees;

SELECT Country, LastName, FirstName
  FROM Employees;		


--ORDER BY
SELECT *
  FROM Products
	ORDER BY UnitPrice, UnitsInStock;
  
	
SELECT Country AS N'Город', (LastName + ' ' + FirstName) AS N'ФИО' 
  FROM Employees
	ORDER BY LastName, FirstName;
  

SELECT *
  FROM Employees
	ORDER BY BirthDate DESC, LastName, FirstName;
	
	
	
--DISTINCT 
SELECT DISTINCT LastName
  FROM Employees
	ORDER BY LastName;
	
	
SELECT DISTINCT BirthDate
  FROM Employees
	ORDER BY BirthDate;


SELECT DISTINCT LastName, FirstName
  FROM Employees
	ORDER BY LastName, FirstName;  



-- TOP
SELECT TOP (10) *
  FROM Employees
	ORDER BY LastName, FirstName;



--WHERE
SELECT *
  FROM Customers
	WHERE CustomerID = 'ANTON'
	ORDER BY Country, City;


SELECT *
  FROM Customers
  WHERE PostalCode = '12210' OR Country >= 'Germany'
  ORDER BY CompanyName; 	


SELECT *
  FROM Employees
  WHERE EmployeeID = 10 AND LastName= 'Fuller'
  ORDER BY LastName, FirstName;


SELECT *
  FROM Employees
	WHERE EmployeeID <> 10 AND LastName= 'Fuller'
  ORDER BY LastName, FirstName;



--IN
SELECT *
  FROM Employees
	WHERE LastName IN ('Fuller', 'King', 'Buchanan')
	ORDER BY LastName, FirstName;



--LIKE
SELECT *
  FROM Employees
	WHERE LastName LIKE 'Buch%'
	ORDER BY LastName, FirstName;

SELECT *
  FROM Employees
	WHERE LastName LIKE '%ulle%'
	ORDER BY LastName, FirstName;

 
 
--NULL 
SELECT * FROM Employees
	WHERE BirthDate IS NULL
	ORDER BY LastName, FirstName;

SELECT * FROM Employees
	WHERE BirthDate IS NOT NULL
	ORDER BY LastName, FirstName;





