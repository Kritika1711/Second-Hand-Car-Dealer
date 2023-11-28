Create schema cars;
use cars;

select*from car_dekho;
-- to count total records of cars -- 
select count(*) from car_dekho;

-- cars available in 2023 --
select count(*) from car_dekho where year = 2023;

-- cars available in 2020-2022--
select count(*) from car_dekho where year in (2020,2021,2022) group by year;

-- total of all cars by year --
select year, count(*) from car_dekho group by year;

-- total diesel cars in 2020--
select count(*) from car_dekho where year = 2020 AND fuel = "Diesel";

-- total petrol cars in 2020--
select count(*) from car_dekho where year = 2020 and fuel = "petrol";

-- all fuel cars come by all year --
select year, count(*) from car_dekho where fuel = "Petrol" group by year;
select year, count(*) from car_dekho where fuel = "Diesel" group by year;
select year, count(*) from car_dekho where fuel = "CNG" group by year;

-- year which had more than 100 cars -- 
select year, count(*) from car_dekho group by year having count(*)>100;

-- count of all cars between 2022 and 2023 --
select * from car_dekho where year between 2022 and 2023;
