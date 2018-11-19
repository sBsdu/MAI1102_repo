CREATE DATABASE customersdb;
USE customersdb;


-- 1. Display the first name, last name, city and state for all customers who live in the same state
-- as customer number 177 (Customers table).
SELECT CUSTOMERSDB.CUSTOMERS.FIRST_NAME,
CUSTOMERSDB.CUSTOMERS.LAST_NAME,CUSTOMERSDB.CUSTOMERS.city,
CUSTOMERSDB.CUSTOMERS.state
FROM CUSTOMERSDB.CUSTOMERS
WHERE STATE = (SELECT STATE from  CUSTOMERSDB.CUSTOMERS WHERE CUSTOMERS.CUSTOMER_ID = "177");

    
-- 2. Display the package number, internet speed and sector number for all packages whose sector number equals to the sector number of 
-- package number 10 (Packages table).
SELECT customersdb.packages.PACK_ID,customersdb.packages.speed,
customersdb.packages.sector_id
FROM CUSTOMERSDB.CUSTOMERS 
WHERE SECTOR_ID = (SELECT customersdb.SECTOR_ID FROM customersdb.packages WHERE customersdb.packages.PACK_ID = 10); 

	
-- 3. Display the first name, last name and join date for all customers who joined the company after customer number 200 (Customers table).

SELECT CUSTOMERSDB.CUSTOMERS.FIRST_NAME,
CUSTOMERSDB.CUSTOMERS.LAST_NAME,
CUSTOMERSDB.CUSTOMERS.join_date
FROM CUSTOMERSDB.CUSTOMERS
WHERE customersdb.CUSTOMERS.CUSTOMER_ID =  200;


      
-- 4. Display the first name, last name and join date for all customers who joined the company on the same month and on the same year 
-- as customer number 372 (Customers table).
SELECT 
    CUSTOMERSDB.CUSTOMERS.FIRST_NAME,
    CUSTOMERSDB.CUSTOMERS.LAST_NAME,
    DATE_FORMAT(`JOIN_DATE`, '%b %y') AS DATE
FROM
    CUSTOMERSDB.CUSTOMERS
WHERE
    DATE_FORMAT(`JOIN_DATE`, '%b %y') = (SELECT 
            DATE_FORMAT(`JOIN_DATE`, '%b %y')
        FROM
            CUSTOMERSDB.CUSTOMERS WHERE CUSTOMERSDB.CUSTOMERS.CUSTOMER_ID=194); 
	
-- 5. Display the first name, last name, city, state and package number for all customers whose internet speed is 
-- “5Mbps” (Customers and Packages table).


 

	
-- 6. Display the package number, internet speed and strt_date (the date it became available) for all packages who became available on 
-- the same year as package number 7 (Packages table).
	
-- 7. Display the first name, monthly discount, package number, main phone number and secondary phone number for all customers 
-- whose sector name is Business (Customers, Packages and Sectors tables).
	
-- 8. Display the first name, monthly discount and package number for all customers whose monthly payment is greater than the average 
-- monthly payment (Customers and Packages table).
	
-- 9. Display the first name, city, state, birthdate and monthly discount for all customers who was born on the same date as customer 
-- number 179, and whose monthly discount is greater than the monthly discount of customer number 107 (Customers table)
	
-- 10. Display all the data from Packages table for packages whose internet speed equals to the internet speed of package number 30, 
-- and whose monthly payment is greater than the monthly payment of package number 7 (Packages table).
	
-- 11. Display the package number, internet speed, and monthly payment for all packages whose monthly 
-- payment is greater than the maximum monthly payment of packages with internet speed equals to “5Mbps” (Packages table).
	
-- 12. Display  the package number, internet speed and monthly payment for all packages whose monthly payment is greater than 
-- the minimum monthly payment of packages with internet speed equals to “5Mbps” (Packages table).
	
-- 13. Display the package number, internet speed and monthly payment for all packages whose monthly payment is lower than the 
-- minimum monthly payment of packages with internet speed equals to “5Mbps” (Packages table).
	
-- 12. Display the first name, monthly discount and package number for all customers whose monthly discount is 
-- lower than the average monthly discount, and whose package number is the same as customer named “Kevin”

     
	 