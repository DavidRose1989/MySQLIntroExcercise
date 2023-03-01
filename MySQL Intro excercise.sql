-- find all products
SELECT * 
FROM products;     

-- find all products that cost $1400
select * 
From products
WHERE price = 1400;

-- find all products that cost $11.99 or $13.99
select* 
From products
where price = 11.99 or price = 13.99;

-- find all products that do NOT cost 11.99 - using NOT
select * 
from products 
where not price = 11.99;

-- find all products and sort them by price from greatest to least
select * from products
order by price desc;

-- find all employees who don't have a middle initial
select * 
from employees
where middleinitial is null;

-- find distinct product prices
select distinct(price) 
from products;   -- distinct prices are unique.

-- find all employees whose first name starts with the letter ‘j’
select * 
from employees 
where firstname like 'j%';  -- first name must start with j and end with anything else. 

-- find all Macbooks
select * 
from products
where name LIKE '%macbook';  

-- find all products that are on sale
select *
from products
where onsale = 1;

-- find the average price of all products
select AVG(price) as "Average price of all Best Buy products"
from products;

-- find all Geek Squad employees who don't have a middle initial
select *
from employees
where middleinitial is null
and title like '%geek squad%';

-- find all products from the products table whose stock level is in the range -- of 500 to 1200. Order by Price from least to greatest. Hint: Use the between keyword
select *
from products
where stocklevel between 500 and 1200
order by price asc;