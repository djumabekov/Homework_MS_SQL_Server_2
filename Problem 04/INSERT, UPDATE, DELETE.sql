USE Northwind;

-- INSERT

INSERT INTO Customers (CustomerID, CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Fax) VALUES ('ABCDF', 'Around the Horn1', 'Thomas Hardy1', 'Sales Representative1', '120 Hanover Sq.1', 'London1', NULL, 'WA1 1DP1','UK1', '(171) 555-7781', '(171) 555-6751');
INSERT INTO Customers (CustomerID, CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Fax) VALUES ('ABCDJ','Around the Horn2', 'Thomas Hardy2', 'Sales Representative2', '120 Hanover Sq.2', 'London2', NULL, 'WA1 1DP2','UK2', '(171) 555-7782', '(171) 555-6752');


SELECT *
  FROM Customers
  WHERE CompanyName = 'Around the Horn1' OR ContactName = 'Thomas Hardy1';
	
DELETE FROM Customers
  WHERE PostalCode = 'WA1 1DP1';

SELECT *
  FROM Customers
  WHERE Fax = '(171) 555-6751' OR Fax = '(171) 555-6752';
	

-- UPDATE
	
UPDATE Employees
  SET LastName = 'Pooh', FirstName = 'Winny'
  WHERE EmployeeID = 4;
	
UPDATE Employees
  SET LastName = N'Робин', FirstName = N'Кристофер'
  WHERE EmployeeID = 5;

SELECT *
  FROM Employees
  WHERE EmployeeID = 4 OR EmployeeID = 5;


-- DELETE
-- see above!
DELETE FROM OrderDetails
  WHERE OrderID = 10250;

DELETE FROM Orders
  WHERE OrderID = 10250;
