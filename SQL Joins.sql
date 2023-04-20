/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
 select products.Name , categories.Name
 from products
 inner join categories on categories.CategoryID = products.CategoryID
 where categories.Name = "Computers";
/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
 select products.Name, products.Price, reviews.Rating
 from products
 inner join reviews on reviews.ProductID = products.ProductID
 where reviews.Rating = 5;
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
select employees.FirstName, employees.LastName, Sum(sales.Quantity) as Total from sales
inner join employees on employees.EmployeeID = sales.EmployeeID
Group by employees.EmployeeID
Order by Total desc
limit 2;
/* joins: find the name of the department, and the name of the category for Appliances and Games */
select departments.Name as 'Department Name', categories.Name as 'Category Name' From departments
inner join categories on categories.DepartmentID = departments.DepartmentID
where categories.Name = 'Appliances' or categories.Name = 'Games';
/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
select p.Name, Sum(s.Quantity) as 'Total Sold' Sum(s.Quantity * s.PricePerUnit) as 'Total Price'
from products as p
inner join sales as s on s.ProductID = p.ProductID
where p.ProductID = 97;
select * from sales where productID = 97;
/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
select p.Name, r.Reviewer, r.Rating, r.Comment
from products as p
inner join reviews as r on r.ProductID = p.ProductID
where p.ProductID = 857 and r.Rating = 1;

-- ------------------------------------------ Extra - May be difficult
/* Your goal is to write a query that serves as an employee sales report.
This query should return:
-  the employeeID
-  the employee's first and last name
-  the name of each product
-  and how many of that product they sold */