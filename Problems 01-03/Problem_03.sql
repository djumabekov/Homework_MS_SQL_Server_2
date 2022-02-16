USE StudentsBaseSmall;

-- INSERT
BEGIN TRANSACTION;

INSERT INTO Courses (CourseName) VALUES ('PHP4');

SELECT * FROM Courses
  WHERE CourseName = 'PHP4';
	
ROLLBACK TRANSACTION;
--COMMIT TRANSACTION;

SELECT * FROM Courses
  WHERE CourseName = 'PHP4' OR CourseName = 'Java';



-- UPDATE

INSERT INTO Courses (CourseName) VALUES ('JavaScript');

SELECT * FROM Courses
  WHERE CourseName = 'JavaScript' OR CourseName = 'Java';
	
BEGIN TRANSACTION;

UPDATE Courses
  SET CourseName = 'JavaScript'
  WHERE CourseName = 'Java';

SELECT * FROM Courses
  WHERE CourseName = 'JavaScript' OR CourseName = 'Java';

ROLLBACK TRANSACTION;
--COMMIT TRANSACTION;

SELECT * FROM Courses
  WHERE CourseName = 'JavaScript' OR CourseName = 'Java';


-- DELETE
INSERT INTO Courses (CourseName) VALUES ('C++');
INSERT INTO Courses (CourseName) VALUES ('SQL');

SELECT * FROM Courses
   WHERE CourseName = 'C++' OR CourseName = 'SQL';
	
BEGIN TRANSACTION;

DELETE FROM Courses
	 WHERE CourseName = 'SQL' OR CourseName = 'C++';
 
SELECT * FROM Courses
  WHERE CourseName = 'C++' OR CourseName = 'SQL';

ROLLBACK TRANSACTION;		
--COMMIT TRANSACTION;
SELECT * FROM Courses
  WHERE CourseName = 'C++' OR CourseName = 'SQL';
  
-- Clear
DELETE FROM Courses
  WHERE CourseName = 'C++' OR CourseName = 'SQL';
	

