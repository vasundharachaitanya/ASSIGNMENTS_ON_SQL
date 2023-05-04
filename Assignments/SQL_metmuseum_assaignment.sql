drop database museum;
-- create databse 
CREATE DATABASE museum;
USE museum;

-- create table
CREATE TABLE met(
ID INT PRIMARY KEY,
Department varchar(100),
Category varchar(100),
Title varchar(100),
Artist varchar(100),
Date varchar(100),
Medium varchar(100),
Country varchar(100));

select * from met;

-- 1. Select the top 10 rows in the met table.
SELECT * 
FROM met LIMIT 10;


-- 2. How many pieces are in the American Metropolitan Art collection?
SELECT department,COUNT(*) 
FROM met 
WHERE department = 'American Metropolitan Arts';

-- 3. Count the number of pieces where the category includes ‘celery’
SELECT count(ID) as num_of_pieces
FROM met 
WHERE category like '%celery%';

-- 4. Find the title and medium of the oldest piece(s) in the collection
SELECT Title,Medium,Date 
FROM met 
ORDER BY date ASC LIMIT 1;

-- 5. Find the top 10 countries with the most pieces in the collection.
SELECT Country,count(*) as most_pieces
FROM met   
GROUP BY COUNTRY
ORDER BY most_pieces desc LIMIT 10; 

--  6.Find the categories which are having more than 100 pieces.
SELECT Category,count(*) as num_pieces
FROM met
GROUP BY Category
HAVING num_pieces>100; 


-- 7. Count the number of pieces where the medium contains ‘gold’ or ‘silver’ and sort in descending order.
SELECT Medium,count(*) as NO_OF_PIECES 
FROM met WHERE Medium LIKE '%gold%' or '%silver%'
GROUP BY Medium
ORDER BY  NO_OF_PIECES;