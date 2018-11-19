-- CREATE DATABASE airlinesDB;


CREATE DATABASE airlinesDB;
 


USE airlinesdb;

-- 1. 
-- Find all airlines that have at least one flight out of AXX airport.Report
SELECT airlines.Airline FROM airlines,flights WHERE flights.DestAirport Like "AXX"; 

-- the full name and the abbreviation of each airline.
SELECT airlines.Airline,airlines.Abbreviation,flights.Airline
FROM airlines,flights;

-- Report each name only once. Sort the airlines in alphabetical order.
SELECT airlines.Airline
 FROM airlines
 GROUP BY airlines.Airline 
 ORDER BY airlines.Airline;
 

-- 2. 
-- Find all destinations served from the AXX airport by Northwest. Report

SELECT flights.DestAirport ,airlines.Abbreviation 
FROM airlines,flights
 WHERE flights.DestAirport LIKE "AXX" AND 
 airlines.Abbreviation  LIKE "Northwest";
 
 -- flight number and the full name of the airlne. Sort
-- in ascending order by flight number

SELECT flights.FlightNo,airlines.Airline 
FROM airlines,flights 
WHERE flights.Airline=airlines.Id 
ORDER BY flights.FlightNo; 

-- 3. 
-- Find all other destinations that are accessible from AHT

SELECT  flights.DestAirport,flights.SourceAirport 
FROM flights 
WHERE  flights.DestAirport LIKE "AHT";

-- flights with exactly one change-over. Report pairs of flight numbers
-- airport codes for the final destinations, and full names of the airlines
-- sorted in alphabetical order by the airport code.

SELECT  flights.DestAirport,flights.SourceAirport,flights.Airline 
FROM flights,airlines 
WHERE flights.DestAirport LIKE "AHT" 
ORDER BY flights.Airline ASC;

-- 4. 
-- Report all pairs of flightNo served by both Frontier and JetBlue.
-- Each pair must be reported exactly once. 

SELECT flights.flightNO,airlines,Abbreviation
FROM  airlines,flights 
WHERE airlines.id=flights.airline AND
airlines.Abbreviation="jetBlue" OR Airlines.Abbreviation="Frontier"; 




 -- 5. 
-- Find ALL five of the airlines listed below: Delta,
-- Frontier, USAir, UAL and Southwest. From To

SELECT airlines.airline,flights.sourceAirport,flights.DestAirport
FROM  airlines,flights
WHERE airlines.Id=flights.airline AND airlines.abbreviation="Delta"
OR airlines.abbreviation="Frontier" 
OR airlines.abbreviation="UAL" OR airlines.abbreviation="UsAir"
OR airlines.abbreviation="southwest";
 