
use zoodb;

SELECT *FROM zoodb.zoo;

SELECT count(*)
FROM zoo;

SELECT SUM(water_need)
FROM zoo;

SELECT SUM(water_need) as sum_of_water_needed
FROM zoo;

SELECT AVG(water_need)
FROM zoo;

SELECT AVG(water_need) as avg_of_water_needed
FROM zoo;

SELECT MAX(water_need) as max_of_water_needed
FROM zoo;

SELECT MAX(water_need) as min_of_water_needed
FROM zoo;

SELECT COUNT(*),animal
FROM zoo
group by animal;

SELECT SUM(water_need),animal
FROM zoo
group by animal;

SELECT MAX(water_need),animal
FROM zoo
group by animal;

SELECT MIN(water_need),animal
FROM zoo
group by animal;

SELECT COUNT(*),animal
FROM zoo
GROUP BY animal
ORDER BY animal;

SELECT AVG(water_need),animal
FROM zoo
GROUP BY animal 
ORDER BY animal;

SELECT SUM(water_need),animal
FROM zoo
GROUP BY animal 
ORDER BY water_need;

SELECT MIN(water_need),animal
FROM zoo
GROUP BY animal 
ORDER BY water_need;


SELECT COUNT(water_need),animal
FROM zoo
GROUP BY animal
ORDER BY water_need DESC;


SELECT SUM(water_need),animal
FROM zoo
GROUP BY animal
ORDER BY water_need DESC;


SELECT AVG(water_need),animal
FROM zoo
GROUP BY animal 
ORDER BY water_need DESC;

SELECT AVG(water_need),animal
FROM zoo
GROUP BY animal
ORDER BY AVG (water_need);

SELECT AVG(water_need),animal
FROM zoo
GROUP BY animal
ORDER BY AVG (water_need);

SELECT COUNT(*),animal
FROM zoo
WHERE water_need>=300
GROUP BY animal
ORDER BY animal;

SELECT SUM(water_need),animal
FROM zoo
GROUP BY animal
ORDER BY SUM (water_need) DESC;

