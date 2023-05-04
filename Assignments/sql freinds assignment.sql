drop database Demo;

-- create Database
CREATE database Demo;

-- use DATABASE
USE Demo;

/*
- create a table name friends with three columns,
id that stores INTEGER
name that stores TEXT
birthday that stores DATE*/
CREATE TABLE friends (
  id INT,
  name TEXT,
  birthday DATE);
  desc friends;
  
-- add a record name john doe whose birthday 1996-08-30
INSERT INTO friends (id, name, birthday)
VALUES 
(1, 'John Doe', '1996-08-30');

-- view the table using select
SELECT * FROM friends;

-- Now add two of your any friends you like.
INSERT INTO Friends (id, name, birthday)
VALUES 
(2, 'Alice Smith', '1995-06-12'),
(3, 'Bob Johnson', '1994-11-02');
select * from friends;




-- change the name of the first friend called 'john doe' to 'Luis Johnson'
UPDATE friends 
SET name = 'Luis Johnson'
WHERE id = 1;
select * from friends;

-- add a new column called email
ALTER TABLE friends 
ADD COLUMN email TEXT; 
select * from friends;

-- Update the email address for everyone in your table.
 -- Luis email is luis@gmail.com
UPDATE friends SET email = 'luis@gmail.com' WHERE id = 1;
UPDATE friends SET email = 'alice@gmail.com' WHERE id = 2;
UPDATE friends SET email = 'bob@gmail.com' WHERE id = 3;
select * from friends;

-- remove Luis from friends
DELETE FROM friends WHERE id = 1;


-- view complete table using select
select * from friends;
