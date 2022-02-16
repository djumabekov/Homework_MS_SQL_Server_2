USE LearningSQL;

-- INSERT

INSERT INTO CUSTOMER (ADDRESS, CITY, CUST_TYPE_CD, FED_ID, POSTAL_CODE, STATE) VALUES ('47 Mockingbird Ln1', 'Waltham1', 'J', '444-44-44441', '024511', 'MA1');
INSERT INTO CUSTOMER (ADDRESS, CITY, CUST_TYPE_CD, FED_ID, POSTAL_CODE, STATE) VALUES ('47 Mockingbird Ln2', 'Waltham2', 'J', '444-44-44442', '024512', 'MA2');


SELECT *
  FROM CUSTOMER
  WHERE FED_ID = '888-88-8888' OR FED_ID = '999-99-9999';
	

SELECT *
  FROM CUSTOMER
  WHERE FED_ID = '666-66-6666' OR FED_ID = '777-77-7777';
	

-- UPDATE
	
UPDATE EMPLOYEE
  SET LAST_NAME = 'Pooh', FIRST_NAME = 'Winny'
  WHERE EMP_ID = '1';
	
UPDATE EMPLOYEE
  SET LAST_NAME = N'Робин', FIRST_NAME = N'Кристофер'
  WHERE EMP_ID = '2';

SELECT *
  FROM EMPLOYEE
  WHERE EMP_ID = '1' OR EMP_ID = '2';


-- DELETE
-- see above!

DELETE FROM ACC_TRANSACTION
  WHERE ACCOUNT_ID = 2;


	