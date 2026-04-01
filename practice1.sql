select name from city
where countrycode = 'USA' and population > 120000

select * from city
where countrycode = 'JPN'

select city, state from station

select city from station
where city like 'a%'
or city like 'e%'
or city like 'i%'
or city like 'o%'
or city like 'u%'

SELECT DISTINCT city
FROM station
WHERE RIGHT(city,1) IN ('a','e','i','o','u')


select distinct city from station
where left(city,1) not in ('a','e','i','o','u')

SELECT name
FROM Employee
ORDER BY name ASC

select name from employee
where salary > 2000 and months <10
order by employee_id ASC

select product_id from products
where low_fats = 'Y' and recyclable = 'Y'

select name from customer
where referee_id != 2 or referee_id is null


select name, population, area from world
where area >= 30000000 or population >= 25000000


select distinct author_id as id from views
where author_id = viewer_id
order by author_id ASC

SELECT part, assembly_step FROM parts_assembly
where finish_date is null

SELECT * FROM lyft_drivers
WHERE yearly_salary <= 30000 OR yearly_salary >= 70000
