-- 1. Total Cars: To get a count of total records
SELECT COUNT(*) FROM car_dekho;
-- 2. The manager asked the employee: How many cars will be available in 2023?
SELECT COUNT(*) FROM car_dekho WHERE year = 2023;
-- 3. The manager asked the employee: How many cars are available in 2020, 2021, 2022?
SELECT year, COUNT(*) FROM car_dekho WHERE year IN (2020, 2021, 2022) GROUP BY year;
-- 4. Clint asked me to print the total of all cars by year. I don't see all the details.
SELECT year, COUNT(*) FROM car_dekho GROUP BY year;
-- 5. Clint asked to car dealer agent: How many diesel cars will there be in 2020?
SELECT COUNT(*) FROM car_dekho WHERE year = 2020 AND fuel = 'Diesel';
-- 6. Clint requested a car dealer agent: How many petrol cars will there be in 2020?
SELECT COUNT(*) FROM car_dekho WHERE year = 2020 AND fuel = 'Petrol';
-- 7. The manager told the employee to give a print: All the fuel cars (petrol, diesel, and CNG) come by all year.
SELECT year, fuel, COUNT(*) FROM car_dekho WHERE fuel IN ('Petrol', 'Diesel', 'CNG') GROUP BY year, fuel;
-- 8. Manager said there were more than 100 cars in a given year, which year had more than 100 cars?
SELECT year, COUNT(*) FROM car_dekho GROUP BY year HAVING COUNT(*) > 100;
-- 9. The manager said to the employee: All cars count details between 2015 and 2023; we need a complete list.
SELECT year, COUNT(*) FROM car_dekho WHERE year BETWEEN 2015 AND 2023 GROUP BY year;
