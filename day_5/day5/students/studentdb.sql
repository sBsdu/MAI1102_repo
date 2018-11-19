USE studentdb;

SELECT*
FROM students;

SELECT StFirstname,Grade,Classroom,TFirstname
FROM students
WHERE StLastname = "COOKUS";

SELECT BUS
FROM students
WHERE StLastname = "OBREIN";

SELECT StFirstname,StLastname
FROM students
WHERE TLastname = "JALE"AND
     Tfirstname = "STEIB";
     
SELECT StFirstname, StLastname
FROM students
WHERE BUS ="55";

SELECT StFirstname, StLastname
FROM students
WHERE Grade ="55"; 

SELECT StFirstname, StLastname,Grade,Classroom,TFirstname
FROM students
WHERE StLastname ="GUICE";


SELECT TFirstname,TLastname,BUS
FROM students
GROUP BY TLastname;

SELECT StFirstname,StLastname
FROM students
GROUP BY TLastname ="HANTZ";

SELECT StFirstname,StLastname
FROM students
WHERE TLastname ="HANTZ";


SELECT StFirstname,StLastname
FROM students
WHERE Classroom ="110";  


SELECT StFirstname,StLastname,GRADE,Classroom
FROM students
WHERE BUS = "51";

SELECT DISTINCT(BUS)
FROM students;

SELECT COUNT(*),BUS
FROM students
GROUP BY BUS;

SELECT DISTINCT(Grade)
FROM students;


SELECT DISTINCT(Grade)
FROM students
GROUP BY Grade;

SELECT DISTINCT(Classroom),TFirstname
FROM students
GROUP BY Classroom;


SELECT DISTINCT(Classroom),TFirstname
FROM students
GROUP BY Classroom;





