USE LearningSQL;

UPDATE CUSTOMER
  SET CITY = 'Astana'
  WHERE CUST_ID BETWEEN 1 AND 3;

UPDATE EMPLOYEE
  SET LAST_NAME = 'Ivanov'
  WHERE EMP_ID = 1;
	
--------------------------------------------------------------------
--SELECT - basic
--------------------------------------------------------------------
SELECT *
  FROM CUSTOMER;

SELECT FED_ID, CITY, STATE
  FROM CUSTOMER;		


--ORDER BY
SELECT *
  FROM EMPLOYEE
	ORDER BY LAST_NAME, FIRST_NAME;
  
	
SELECT FED_ID AS N'Федеральный номер', (CITY + ' ' + STATE) AS N'Место проживания' 
  FROM CUSTOMER
	ORDER BY CITY, STATE;
  

SELECT *
  FROM EMPLOYEE
	ORDER BY START_DATE DESC, LAST_NAME, FIRST_NAME;
	
	
	
--DISTINCT 
SELECT DISTINCT LAST_NAME
  FROM EMPLOYEE
	ORDER BY LAST_NAME;
	
	
SELECT DISTINCT START_DATE
  FROM EMPLOYEE
	ORDER BY START_DATE;


SELECT DISTINCT LAST_NAME, FIRST_NAME
  FROM EMPLOYEE
	ORDER BY LAST_NAME, FIRST_NAME;  



-- TOP
SELECT TOP (10) *
  FROM EMPLOYEE
	ORDER BY LAST_NAME, FIRST_NAME;



--WHERE
SELECT *
  FROM EMPLOYEE
	WHERE EMP_ID = 1
	ORDER BY LAST_NAME, FIRST_NAME;


SELECT *
  FROM CUSTOMER
  WHERE FED_ID = '444-44-4444' OR CITY >= 'Newton'
  ORDER BY CUST_ID; 	


SELECT *
  FROM EMPLOYEE
  WHERE EMP_ID = 10 AND LAST_NAME= 'Robert'
  ORDER BY LAST_NAME, FIRST_NAME;


SELECT *
  FROM EMPLOYEE
	WHERE EMP_ID <> 10 AND LAST_NAME= 'Robert'
  ORDER BY LAST_NAME, FIRST_NAME;



--IN
SELECT *
  FROM EMPLOYEE
	WHERE LAST_NAME IN ('Robert', 'Susan', 'John')
	ORDER BY LAST_NAME, FIRST_NAME;



--LIKE
SELECT *
  FROM EMPLOYEE
	WHERE LAST_NAME LIKE 'Ro%'
	ORDER BY LAST_NAME, FIRST_NAME;

SELECT *
  FROM EMPLOYEE
	WHERE LAST_NAME LIKE '%be%'
	ORDER BY LAST_NAME, FIRST_NAME;

 
 
--NULL 
SELECT * FROM EMPLOYEE
	WHERE START_DATE IS NULL
	ORDER BY LAST_NAME, FIRST_NAME;

SELECT * FROM EMPLOYEE
	WHERE START_DATE IS NOT NULL
	ORDER BY LAST_NAME, FIRST_NAME;





