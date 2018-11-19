-- creating zooDB database
create database zooDB;

-- changing database to zooDB	
use zooDB; 

-- import data from zoo.csv

-- SQL Functions

-- COUNT()
-- SUM()
-- AVG()
-- MAX()
-- MIN()

-- Questions :

-- 1. Display How many entries are there in zoo table ?
SELECT COUNT(*) FROM zoo;

-- 2. Display the total amount of water needed from zoo table ?
SELECT SUM(water_need) FROM ZOO;

-- 3. Display average amount of water needed from zoo table ?
SELECT AVG(water_need) FROM ZOO;

-- 4. Display the maximum amount of water needed from zoo table ?
SELECT MAX(water_need) FROM ZOO;

-- 5. Display the minimum amount of water needed from zoo table ?
SELECT MIN(water_need) FROM ZOO;


-- GROUP BY clause

-- Questions :

-- 1. Display count of every animal category from zoo table e.g. how many elephants are there, how many lions are there ?
SELECT COUNT(*),animal FROM ZOO GROUP BY animal;

-- 2. Display the total amount of water needed for each animal from zoo table  ?
SELECT SUM(water_need),animal FROM ZOO GROUP BY animal;

-- 3. Display average water needed for each animal from zoo table ?
SELECT AVG(water_need),animal FROM ZOO GROUP BY animal;

-- 4. Display the maximum amount of water needed for each animal from zoo table ?
SELECT MAX(water_need),animal FROM ZOO GROUP BY animal;

-- 5. Display the minimum amount of water needed for each animal from zoo table ?
SELECT MIN(water_need),animal FROM ZOO GROUP BY animal;



-- SQL ORDER BY to sort by column(s)

-- Questions :

-- 1. Display count of every animal category from zoo table and sort them by count ?
SELECT COUNT(*),animal FROM ZOO GROUP BY animal ORDER BY COUNT(*);

-- 2. Display the total amount of water needed for each animal from zoo table and sort them in aplhabetical order ?
SELECT SUM(water_need),animal FROM ZOO GROUP BY animal ORDER BY animal;

-- 3. Display average water needed for each animal from zoo table and sort them by average ?
SELECT AVG(water_need),animal FROM ZOO GROUP BY animal ORDER BY AVG(water_need);

-- 4. Display the maximum amount of water needed for each animal from zoo table and sort them by maximum amount ?
SELECT MAX(water_need),animal FROM ZOO GROUP BY animal ORDER BY MAX(water_need);

-- 5. Display the minimum amount of water needed for each animal from zoo table and sort them by minimum amount ?
SELECT MIN(water_need),animal FROM ZOO GROUP BY animal ORDER BY MIN(water_need);


-- DESC for descending order

-- Questions :

-- 1. Display count of every animal category from zoo table in descending order ?
SELECT COUNT(*),animal FROM ZOO GROUP BY animal ORDER BY COUNT(*) DESC;

-- 2. Display the total amount of water needed for each animal from zoo table in descending order ?
SELECT SUM(water_need),animal FROM ZOO GROUP BY animal ORDER BY SUM(water_need) DESC;

-- 3. Display average water needed for each animal from zoo table in descending order ?
SELECT AVG(water_need),animal FROM ZOO GROUP BY animal ORDER BY AVG(water_need) DESC;

-- 4. Display the amount of maximum water needed for each animal from zoo table in descending order ?
SELECT MAX(water_need),animal FROM ZOO GROUP BY animal ORDER BY MAX(water_need) DESC;

-- 5. Display the amount of minimum water needed for each animal from zoo table in descending order ?
SELECT MIN(water_need),animal FROM ZOO GROUP BY animal ORDER BY MIN(water_need) DESC;


-- SQL DISTINCT basically removes all duplicates

-- Question :

-- 1. Display animal column from zoo table without duplicates ?
SELECT DISTINCT(animal) FROM ZOO;


-- Question :

-- 1. Display count of each animal category, 
--    who have value of water needed equal to or more than 300 , 
--    also arrange animal's name in alphabetical order ?
SELECT COUNT(*), animal from ZOO WHERE water_need>=300  GROUP BY animal ORDER BY animal;


