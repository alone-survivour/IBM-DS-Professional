--Query1: Using sum function retrive the sum of saleprice column
select SUM(SALEPRICE) from PETSALE;

--Query2: give a name to the computed sum from above query 
select SUM(SALEPRICE) AS SUM_OF_SALEPRICE from PETSALE;

--Query3: What is the maximum quantiy of petscale table
select MAX(QUANTITY) from PETSALE;

--Query4 : Compute average value of the sale price of each animal
select AVG(SALEPRICE) from PETSALE;

--Query5 : Compute average value of the sale price per quantity of dog
select AVG( SALEPRICE / QUANTITY ) from PETSALE where ANIMAL = 'Dog';

--Query 6: Roundoff the saleprice column
select ROUND(SALEPRICE) from PETSALE;

--Query 7: Use length function to calculate lenght of animal column
select LENGTH(ANIMAL) from PETSALE;

--Query 8: Retrive all the animals which has upper case
select UCASE(ANIMAL) from PETSALE;

--Query 9: Remove the duplicates
select DISTINCT(UCASE(ANIMAL)) from PETSALE;

--Query 10: Retrieve all the records where cat has lower case
select * from PETSALE where LCASE(ANIMAL) = 'cat';

--Query 11: Retrive the days when the cat got sold
select DAY(SALEDATE) from PETSALE where ANIMAL = 'Cat';

--Query 12: Compute the count of animals sold in month of 5
select COUNT(*) from PETSALE where MONTH(SALEDATE)='05';

--Query 13: What will be 3 days after the saledate
select (SALEDATE + 3 DAYS) from PETSALE;

--Query 14: Compute how many days have been passed from sale date for each animal
select (CURRENT DATE - SALEDATE) from PETSALE;
