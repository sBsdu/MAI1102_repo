USE AIRLINESDB;
SELECT * FROM AIRLINESDB.AIRLINES;
SELECT* FROM AIRLINESDB.FLIGHTS; 


-- insertng necessary data for join queries
-- Insert into airlines values(13, 'kingfisher','KingFs', 'india');
-- Insert into flights (flightno, sourceairport, destairport)values(2001, 'Jaipur', 'delhi');
Insert into airlinesDB.AIRLINES  values(13, 'kingfisher','KingFs', 'india');
Insert into airlinesdb.FLIGHTS (flightno, sourceairport, destairport)values(2001, 'Jaipur', 'delhi');




-- write an sql query to make the cartesian product between airline and flights 
-- i.e. each airline will appear for all flights and vice versa.
SELECT 
    AIRLINESDB.AIRLINES.AIRLINE,
    airlineSDB.FLIGHTS.AIRLINE,
    airlinesdb.FLIGHTS.FLIGHTNO,
    airlinesdb.FLIGHTS.DESTAIRPORT,
    airlinesdb.FLIGHTS.SOURCEAIRPORT
FROM
    AIRLINESDB.AIRLINES
        CROSS JOIN
    airlinesdb.FLIGHTS;





-- write an sql query to make report of country, flight no., source airport, destairport  
-- for airlines who are having flights and flights who does not associated with any of airlines.
SELECT airlineSDB.AIRLINES.COUNTRY,airlinesdb.FLIGHTS.FLIGHTNO,airlinesdb.FLIGHTS.DESTAIRPORT,
airlinesdb.FLIGHTS.SOURCEAIRPORT
FROM AIRLINESDB.AIRLINES RIGHT JOIN airlinesdb.FLIGHTS ON 
AIRLINES.ID = FLIGHTS.AIRLINE;





-- write an sql query to make report of country, flight no., source airport, destairport  
-- for flights who are having airlines and airlines who does not associated with any of flights.

SELECT airlineSDB.AIRLINES.COUNTRY,airlinesdb.FLIGHTS.FLIGHTNO,airlinesdb.FLIGHTS.DESTAIRPORT,
airlinesdb.FLIGHTS.SOURCEAIRPORT
FROM AIRLINESDB.AIRLINES RIGHT JOIN airlinesdb.FLIGHTS ON 
AIRLINES.ID = FLIGHTS.AIRLINE;





-- write an sql query to make report of country, flight no., source airport, destairport  
-- for flights who are having airlines or not associated with any airlines and flights 
-- who does not associated with any of airlines also.



