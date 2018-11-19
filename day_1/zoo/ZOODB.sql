SELECT * FROM zoodb.zoo;

USE zooDB;
SELECT * FROM ZOO;

SELECT  animal
FROM ZOO;

SELECT Uniq_Id
FROM ZOO;

SELECT animal ,water_need
FROM ZOO;

SELECT *
FROM ZOO
WHERE animal ="elephant";

SELECT *
FROM zoo
WHERE animal =tiger;

SELECT *
FROM zoo
WHERE animal LIKE "_____" AND
       tiger<>300;
       
       
       
SELECT *
FROM ZOO
WHERE UNIQ_ID=1001 OR
 UNIQ_ID=1008 OR
 UNIQ_ID=1012 OR
 UNIQ_ID=1015 OR
 UNIQ_ID=1018;
       
SELECT *
FROM zoo
WHERE water_need>200 AND
water_need<500;

SELECT *
FROM zoo
ORDER BY water_need desc;


