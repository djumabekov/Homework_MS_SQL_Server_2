USE StudentsBaseSmall;

-- INSERT

INSERT INTO Courses (CourseName) VALUES ('PHP3');
INSERT INTO Courses (CourseName) VALUES ('Java3');


SELECT *
  FROM Courses
  WHERE CourseID = '1' OR CourseName = 'Java3';
	
DELETE FROM Courses
   WHERE CourseName = 'Java3';

DELETE FROM Courses
  WHERE CourseID = '1';

SELECT *
  FROM Courses
  WHERE CourseName = 'Java3' OR CourseName = 'Python';
	

-- UPDATE
	
INSERT INTO Courses (CourseName) VALUES ('C++');

SELECT *
  FROM Courses
  WHERE CourseName = 'C++' OR CourseName = 'Python';
	
UPDATE Courses
  SET CourseName = 'C++'
  WHERE CourseID = '2';

SELECT *
  FROM Courses
  WHERE CourseName = 'C++' OR CourseName = 'Python';


DELETE FROM Courses
  WHERE CourseName = 'C++' OR CourseName = 'Python';
  

-- DELETE
-- see above!
DELETE FROM Courses
   WHERE CourseName = 'Java';

DELETE FROM Courses
   WHERE CourseName = 'Python';
	