/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
SELECT p.Name as Product, C.Name as Category                    -- This is using the products table and catergory name. 
From products as P                -- as P is giving the product name an Alias. Just for one query. 
INNER JOIN categories AS C
ON C.CategoryID = P.CategoryID
WHERE C.Name = 'Computers';

/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
 
 SELECT *
 From products as p
 INNER JOIN reviews as r on r.ProductID = p.ProductID
 where r.Rating = 5;

/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
SELECT e.FirstName, e.LastName, sum(s.Quantity) as total 
FROM sales AS s
INNER JOIN employees AS e 
ON e.employeeID = s.EmployeeID
GROUP BY e.EmployeeID
ORDER BY Total DESC
LIMIT 2; 

/* joins: find the name of the department, and the name of the category for Appliances and Games */
SELECT d.Name AS 'Department Name', c.Name As 'Category Name'
FROM departments AS d
INNER JOIN categories AS c
ON c.DepartmentID = d.DepartmentID
WHERE c.NAME = 'Appliances' OR c.NAME = 'Games';


/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
 
 SELECT p.NAME, Sum(s.Quantity) as 'Total Units Sold',
 Sum(s.quantity *s.PricePerUnit) as 'Total Price'
 FROM products as p
 INNER JOIN sales as s
 ON s.productID = p.productID
 WHERE p.ProductID = 97;
 

/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
SELECT p.Name, r.reviewer, r.rating, r.Comment 
FROM products AS p
INNER JOIN reviews AS r 
ON r.ProductID = p.ProductID
WHERE r.ProductID = 857 AND r.rating = 1;



-- ------------------------------------------ Extra - May be difficult
/* Your goal is to write a query that serves as an employee sales report.
This query should return:
-  the employeeID
-  the employee's first and last name
-  the name of each product
-  and how many of that product they sold */

SELECT e.employeeID, e.firstname, e.lastname, p.Name,
SUM(s.quantity) AS 'Total Sold'
FROM employees AS e
INNER JOIN sales AS s ON e.employeeID = s.employeeID
INNER JOIN products AS p ON p.ProductID = s.ProductID
GROUP BY e.employeeID, p.productID
ORDER BY e.FirstName;





