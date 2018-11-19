USE WINEDB;


-- 1. 
-- Find the grape(s) that grow(s) in the largest number of appellations.


-- Report grape name, color and the number of appellations it grows in.
SELECT winedb.grapes.Grape,winedb.GRAPES.COLOR,COUNT(WINEDB.WINE





-- 2. 
-- Find the most popular white grape (i.e., the grape that is used to make
-- the largest number of white wines in the database). Report the name
-- of the grape.
SELECT COUNT(winedb.wine.Grape),WINEDB.GRAPES.COLOR,WINEDB.WINE.GRAPE
FROM WINEDB.GRAPES,WINEDB.WINE
WHERE WINE.GRAPE = GRAPES.GRAPE AND
grapes.COLOR LIKE '%WHITE%'
GROUP BY WINEDB.WINE.GRAPE
ORDER BY WINEDB.WINE.GRAPE DESC LIMIT 1;



-- 3. 
-- Report the grape with the largest number of high-ranked wines (score


-- of 93 and above).
SELECT WINEDB.WINE.grape
FROM WINEDB.WINE
WHERE WINE.SCORE>=93;




-- 4. 
-- Report the appellation responsible for the largest number of highranked


-- wines (score of 93 and above). Report just the name of the
-- appellation .
SELECT WINEDB.WINE.





-- 5. 
-- Find the high-ranked wine (score of 93 or above) responsible for highest


-- Price. Report the vintage year, winery, wine name, score and


-- the Price (Chronological Order).






-- 6. 
-- Find if there are any 2008 Chardonnays that scored better than any


-- 2007 Syrah. report winery, wine name, appellation, score and price.


