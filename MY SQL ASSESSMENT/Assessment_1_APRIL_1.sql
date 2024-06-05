CREATE DATABASE ASSESSMENT ;

USE ASSESSMENT ;

--  SINGLE LINE COMMENT
-- 	IN THIS PAGE WE GOING TO CREATE WORKER TABLE AND CREATE WORKER_ID , FIRST_NAME,LAST_NAME ETC.

CREATE TABLE WORKER
(
WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
FIRST_NAME VARCHAR(25),
LAST_NAME VARCHAR(25),
SALARY INT,
JOINING_DATE DATETIME,
DEPEARMENT VARCHAR(25)
) ;

-- QUES1) Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME 
          Ascending and DEPARTMENT Descending?
          
-- ANS)  SELECT * FROM Worker 
         ORDER BY FIRST_NAME ASC, DEPARTMENT DESC;

-- QUES2)  Write an SQL query to print details for Workers with the first names “Vipul” and “Satish” 
           from the Worker table? 

-- ANS) SELECT * FROM Worker
		WHERE FIRST_NAME IN ('Vipul', 'Satish');
        
-- QUES3)  Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and 
           contains six alphabets?
           
-- ANS)  SELECT * FROM Worker
         WHERE FIRST_NAME LIKE '_____h';
         
-- QUES4) Write an SQL query to print details of the Workers whose SALARY lies between 1.

-- ANS) SELECT * FROM Worker
        WHERE SALARY BETWEEN 30000 AND 50000;

-- QUES5) Write an SQL query to fetch duplicate records having matching 
		data in some fields of a table?

-- ANS) SELECT first_name, last_name, COUNT(*)
        FROM Employee
        GROUP BY first_name, last_name
        HAVING COUNT(*) > 1;

-- QUES6) Write an SQL query to show the top 6 records of a table?

-- ANS) SELECT *
        FROM table_name
		LIMIT 6;

-- QUES7) Write an SQL query to fetch the departments that have less than 
		  five people in them?

-- ANS) SELECT DEPARTMENT
        FROM Worker
        GROUP BY DEPARTMENT
		HAVING COUNT(*) < 5;

-- QUES8) Write an SQL query to show all departments along with the number of 
		  people in there?

-- ANS) SELECT DEPARTMENT, COUNT(*) AS NumberOfPeople
		FROM Worker
        GROUP BY DEPARTMENT;

-- QUES9) Write an SQL query to print the name of employees having the highest  
          salary in each department?

-- ANS) SELECT w1.FIRST_NAME, w1.LAST_NAME, w1.DEPARTMENT, w1.SALARY
        FROM Worker w1
        JOIN (
        SELECT DEPARTMENT, MAX(SALARY) AS max_salary
        FROM Worker
        GROUP BY DEPARTMENT
        ) w2 ON w1.DEPARTMENT = w2.DEPARTMENT AND w1.SALARY = w2.max_salary;


                               # ASSESSMENT 2 PAGE 2
                               
-- SINGLE LINE COMMENT
-- IN THIS PAGE THEY ALREADY GIVE US SCHOOL DATABASE SO WE HAVE TO USE THAT DATABASE TO SOLVE
-- THE ALL QUERY


USE ASSESSMENT_2 ;

CREATE TABLE STUDENT 
(
STD_ID INT PRIMARY KEY ,
STD_NAME VARCHAR (30),
SEX VARCHAR(30),
PERCENTAGE INT ,
CLASS INT ,
SECTION VARCHAR(30),
STREAM VARCHAR(30),
DOB DATETIME
) ;

-- QUES1) To display all the records form STUDENT table. SELECT * FROM student?

-- ANS) SELECT * FROM STUDENT;

-- QUES2) To display any name and date of birth from the table STUDENT. SELECT StdName, DOB 
          FROM student ?

-- ANS) SELECT StdName, DOB
		FROM STUDENT
		ORDER BY DOB;

-- QUES3) To display all students record where percentage is greater of equal to 80 FROM student table. 
          SELECT * FROM student WHERE percentage >= 80 ?
          
-- ANS)  SELECT * FROM STUDENT WHERE percentage >= 80 ORDER BY percentage DESC;

-- QUES4) To display student name, stream and percentage where percentage of student is more than 80 
		  SELECT StdName, Stream, Percentage WHERE percentage > 80 ?
          
-- ANS) SELECT StdName, Stream, Percentage  
		FROM STUDENT 
        WHERE Percentage > 80 
        ORDER BY Percentage DESC;

-- QUES5)  To display all records of science students whose percentage is more than 75 form student table. 
           SELECT * FORM student WHERE stream = ‘Science’ AND percentage > 75 ?
           
-- ANS)  SELECT * FROM STUDENT 
		 WHERE stream = 'Science' AND percentage > 75;




          



















