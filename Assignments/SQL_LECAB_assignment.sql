drop database if exists lecab;
create database if not exists lecab;
use lecab;


create table riders(
id INT PRIMARY KEY,
first TEXT,
last TEXT,
username TEXT,
rating INT,
total_trips INT,
referred INT);

create table riders2
like riders;


create table cars(
id INT PRIMARY KEY,
model text,
OS TEXT,
status TEXT,
trips_completed INT);



create table trips(
id INT PRIMARY KEY,
date DATE,
pickup TEXT,
dropoff TEXT,
rider_id INT,
car_id INT,
type varchar(20),
cost DOUBLE,
foreign key (rider_id)
references riders(id),
foreign key (car_id)
references cars(id));


insert into riders(id, first, last, username, rating, total_trips, referred)
values
(101,'Sonny','Li', '@sonnynomnom', 4.66,352, NULL),
(102,'Laura','Breiman',	'@lauracle', 4.99, 687, 101),
(103,'Kassa','Breiman',	'@kassablanca', 4.63, 42, NULL),
(104, 'Yakov','Kagan','@yakovkagan',4.52,1910,103);

insert into riders2(id, first, last, username, rating, total_trips, referred)
values
(105,'Zach','Sims','@zsims', 4.85,787, NULL),
(106,'Eric','Vaught','@posturelol', 4.96, 54, 101),
(107,'Jilly','Beans','@jillikuzmin', 4.7, 32, 101);

insert into cars(id, model, OS, status, trips_completed)
values
(1, 'Ada', 'Ryzac', 'active', 82),
(2, 'Ada', 'Ryzac', 'active', 30),
(3, 'Turing XL', 'Ryzac', 'active', 164),
(4, 'Akira', 'Finux', 'maintenance', 22);

insert into trips(id, date, pickup, dropoff, rider_id, car_id, type, cost)
values
(1001, '2017-12-05', '06:45', '07:10', 102, 1, 'X', 28.66),
(1002, '2017-12-05', '06:45', '07:10', 102, 1, 'X', 28.66),
(1003, '2017-12-05', '06:45', '07:10', 102, 1, 'X', 28.66),
(1004, '2017-12-05', '06:45', '07:10', 102, 1, 'X', 28.66),
(1005, '2017-12-05', '06:45', '07:10', 102, 1, 'X', 28.66),
(1006, '2017-12-05', '06:45', '07:10', 102, 1, 'X', 28.66);

-- 1. First examine all the tables, trips, riders, cars
select * from trips;
select * from cars;
select * from riders;

-- 2. check the pk and fk of the tables
desc riders; 
desc cars;
desc  trips;

-- 3. Do cross join in riders and cars table.
select * 
from riders
cross join cars;

-- 4. using left join combine trips and riders
select * 
from trips
left join riders on trips.rider_id = riders.id; 

-- 5. use INNER join to combine trips and cars.
select * 
from trips
inner join riders on trips.rider_id = riders.id;

-- 6. Do union on riders and riders2 table.
select * from riders
union
select * from riders2;

-- 7. What is the average cost of trip? round it in 2 decimals.
select round(avg(cost),2) as avg_cost
from trips;

-- 8. find all the riders who have used lecab less than 500 times
select *
from riders
where total_trips<500; 

-- 9. Write a query that finds two cars that have the highest trips_completed.
select * 
from cars
order by trips_completed desc
limit 2;
