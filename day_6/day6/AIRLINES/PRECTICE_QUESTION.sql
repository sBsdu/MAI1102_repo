CREATE DATABASE studentsdb;

USE studentdb;

SELECT * FROM STUDENTDB.list;

-- Given a student’s last name, find the student’s grade, classroom .

SELECT list.Grade FROM studentdb.list WHERE list.LastName LIKE "%CAR%";

-- Find all students at a specified grade level

SELECT list.Grade FROM studentdb.list; 

-- For each entry found, print the last name, first name, grade, classroom 

SELECT list.LastName,list.FirstName,list.Grade,list.classroom FROM studentdb.list; 

-- Display the total number of students for each bus routes

SELECT students.BUS,COUNT(students.stFirstName) as all_student FROM studentdb.students ORDER BY BUS;

-- Display the total number of students for each grades

SELECT list.Grade,COUNT(list.FirstName) as all_student FROM studentdb.list ORDER BY Grade;



USE cardb;
-- Find all cars produced by Volvo between 1977 and 1981 (inclusive)

SELECT CARS_DATA.YEAR, CAR_NAMES.MODEL,CAR_NAMES.MAKE  FROM CAR_NAMES,CARS_DATA WHERE CAR_DATA.ID = CAR_NAMES.ID AND CARS_DATA.YEAR BETWEEN  1977 AND 1981 AND CAR_NAMES.MODEL = 'Volvo'; 

-- Display all columns data of all the rows from the flights table ?


CREATE DATABASE flightsdb;

USE flightsdb;

-- Display all columns data of all the rows from the flights table ?

SELECT * FROM FLIGHTDB.FLIGHTS;


-- Display source and destination airport  from flights table ?

SELECT FLIGHTS.SOURCEAIRPORT, FLIGHTS.DESTAIRPORT 
FROM FLIGHTDB.FLIGHTS;



-- Select all flights whose airline number is 3 or 5 from flights table ?

SELECT FLIGHTS.AIRLINE,AIRLINES.ID FROM FLIGHTDB.FLIGHTS,AIRLINES WHERE FLIGHTS.AIRLINE= AIRLINES.ID AND FLIGHTS.FLIGHTNO IN (3, 5);
 
-- Display  all airline code  from flights table ?

SELECT FLIGHTS.AIRLINE FROM FLIGHTDB.FLIGHTS;




-- Select all flights whose airline number is 3 from flights table ?

SELECT AIRLINES.AIRLINE  FROM FLIGHTDB.AIRLINES WHERE AIRLINES.ID = 3; 


