CREATE DATABASE flightdb;

USE flightdb;

SELECT*
FROM flights;

SELECT sourceairport AND DESTAIRPORT
FROM flights;

SELECT flightno
FROM flights;

SELECT*
FROM flights
WHERE flightno=3;

SELECT* 
FROM flights
WHERE flightno=3 or
flightno=5;

SELECT*
FROM flights
WHERE flightno=3;

SELECT *
FROM flights
WHERE flightno>3;

SELECT *
FROM flights
WHERE sourceairport LIKE"A%";

SELECT *
FROM flights
WHERE sourceairport LIKE"___";

SELECT *
FROM flights
WHERE airline>3 AND
sourceairport like