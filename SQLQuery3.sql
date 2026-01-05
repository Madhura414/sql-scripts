SQL Interview Questions and Answers
1. Explain order of execution of SQL
The typical order of execution in SQL is:

FROM (and JOINs) - identifies data sources

WHERE - filters rows

GROUP BY - groups rows

HAVING - filters groups

SELECT - selects columns

DISTINCT - removes duplicates

ORDER BY - sorts results

LIMIT/OFFSET - limits result set

2. Difference between WHERE and HAVING
WHERE filters rows before grouping

HAVING filters groups after GROUP BY

WHERE can't use aggregate functions

HAVING can use aggregate functions

3. Use of GROUP BY
GROUP BY groups rows that have the same values into summary rows. It's used with aggregate functions (COUNT, MAX, MIN, SUM, AVG) 
to group the result set by one or more columns.

4. Types of joins in SQL
INNER JOIN: Returns matching rows from both tables

LEFT (OUTER) JOIN: Returns all rows from left table + matches from right

RIGHT (OUTER) JOIN: Returns all rows from right table + matches from left

FULL (OUTER) JOIN: Returns all rows when there's a match in either table

CROSS JOIN: Returns Cartesian product of both tables

SELF JOIN: Joins a table to itself

5. Triggers in SQL
Triggers are stored procedures that automatically execute when a specific event occurs in the database (INSERT, UPDATE, DELETE). 
They're used to maintain data integrity, enforce business rules, or log changes.

6. Stored procedure in SQL
A stored procedure is a prepared SQL code that you can save and reuse. over and over again . Benefits include:

CREATE PROCEDURE 
SelectAllOrdersss
AS
Select *from Orders
Go;

EXEC SelectAllOrder;

[EXEC: ITS EXECUTE ]



Improved performance (precompiled)

Reduced network traffic

Better security

Code reusability

7. Window functions
RANK(): Assigns rank with gaps for ties

DENSE_RANK(): Assigns rank without gaps for ties

ROW_NUMBER(): Assigns unique sequential numbers

LEAD(): Accesses data from subsequent rows

LAG(): Accesses data from previous rows

8. Difference between DELETE and TRUNCATE
DELETE is DML, TRUNCATE is DDL

DELETE can have WHERE clause, TRUNCATE can't

DELETE logs individual row deletions, TRUNCATE logs page deallocations

DELETE is slower, TRUNCATE is faster

DELETE doesn't reset identity counter, TRUNCATE does

9. Difference between DML, DDL and DCL
DDL (Data Definition Language): CREATE, ALTER, DROP, TRUNCATE (structure)

DML (Data Manipulation Language): SELECT, INSERT, UPDATE, DELETE (data)

DCL (Data Control Language): GRANT, REVOKE (permissions)

10. Aggregate functions
Aggregate functions perform calculations on sets of values:

COUNT(): Counts rows

SUM(): Adds values

AVG(): Calculates average

MAX(): Finds maximum value

MIN(): Finds minimum value

Example: SELECT AVG(salary) FROM employees WHERE department = 'Sales'

11. CTE vs Subquery
CTEs (Common Table Expressions) are generally more readable and can be referenced multiple times in the same query. 
Performance is usually similar, but CTEs may be better for complex queries.

12. Constraints and types
Constraints enforce rules on data:

NOT NULL: No NULL values

UNIQUE: All values must be unique

PRIMARY KEY: Unique identifier (NOT NULL + UNIQUE)

FOREIGN KEY: Maintains referential integrity

CHECK: Validates values against condition

DEFAULT: Sets default value

13. Types of Keys
Primary Key: Unique identifier

Foreign Key: References primary key in another table

Candidate Key: Could be primary key

Super Key: Set of columns that uniquely identifies

Composite Key: Primary key with multiple columns

Alternate Key: Candidate key not chosen as primary key

14. Different types of Operators
Arithmetic: +, -, *, /, %

Comparison: =, <>, >, <, >=, <=

Logical: AND, OR, NOT

Bitwise: &, |, ^

Compound: +=, -=, *=, /=

Set: UNION, INTERSECT, EXCEPT

15. Difference between GROUP BY and WHERE
WHERE filters rows before grouping, GROUP BY organizes rows into groups after filtering.

16. Views
Views are virtual tables based on the result set of a SQL query. They don't store data but provide a way to:

Simplify complex queries

Restrict data access

Present data in a specific way

17. Different types of constraints
(Same as question 12)

18. Difference between VARCHAR and NVARCHAR
VARCHAR: Non-Unicode, 1 byte per character

NVARCHAR: Unicode, 2 bytes per character (supports international characters)

19. Difference between CHAR and NCHAR
CHAR: Fixed-length non-Unicode (1 byte/char)

NCHAR: Fixed-length Unicode (2 bytes/char)

20. Indexes and their types
Indexes improve query performance by creating a lookup structure:

Clustered: Physically reorders data (1 per table)

Non-clustered: Separate structure (multiple allowed)

Unique: Ensures unique values

Composite: On multiple columns

Filtered: On subset of data

Full-text: For text searching

21. Index and its types
(Same as question 20)

22. Types of relationships in SQL
One-to-One

One-to-Many

Many-to-Many

Self-referencing

23. UNION vs UNION ALL
UNION removes duplicates

UNION ALL keeps duplicates

UNION is slower due to duplicate removal

24. Types of clauses in SQL
WHERE

GROUP BY

HAVING

ORDER BY

LIMIT/OFFSET

JOIN

WITH (CTE)

25. Difference between UNION and UNION ALL
(Same as question 23)

26. Various types of relationships in SQL
(Same as question 22)

27. Primary Key vs Secondary Key
Primary Key: Main unique identifier (only 1 per table)

Secondary Key: Any other key that could be used for searching (alternate/candidate keys)

28. Difference between WHERE and HAVING
(Same as question 2)

29. Second highest salary
select max(saley) from employees where salary<select(max(saley ) from employees);
sql
SELECT MAX(salary) 
FROM employees 
WHERE salary < (SELECT MAX(salary) FROM employees);
30. Retention query
sql
SELECT 
    COUNT(DISTINCT retained_users.user_id) / COUNT(DISTINCT all_users.user_id) AS retention_rate
FROM 
    (SELECT user_id FROM logins WHERE login_date = '2025-01-01') AS all_users
LEFT JOIN 
    (SELECT user_id FROM logins WHERE login_date = '2025-01-08') AS retained_users
ON all_users.user_id = retained_users.user_id;
31. Year-on-year growth
sql
SELECT 
    current_year.year,
    (current_year.sales - previous_year.sales) / previous_year.sales * 100 AS yoy_growth
FROM 
    sales current_year
JOIN 
    sales previous_year ON current_year.year = previous_year.year + 1;
	select *from orders;
Select * from Customers;

1. What is the difference between INNER JOIN, LEFT JOIN, and RIGHT JOIN?
Select orderID from orders Inner Join Customers
on orders.CustomerID = Customers.CustomerID

 🔹 2. How would you detect anomalies or outliers in a dataset using SQL?
 🔹 3. Write a query to remove duplicate rows from a dataset.
 Select  Distinct  from orders;
 🔹 4. How do you calculate the median of a numeric column in SQL?

 🔹 5. What is the difference between GROUP BY and ORDER BY?
 🔹 6. Write a query to extract users who performed at least 5 transactions in a month.
 🔹 7. Explain how HAVING differs from WHERE, with examples.
 
 🔹 8. Write a query to identify the first and last transaction of each user.
 🔹 9. How would you calculate a cumulative sum of a column?
 🔹 10. Write a query to calculate the time difference between consecutive events for each user.
 🔹 11. Explain the concept of CASE statements with an example.
 🔹 12. Write a query to pivot a table (convert rows into columns).
 🔹 13. Write a query to count the number of unique users by day.
 🔹 14. How can you rank users based on total purchase value in descending order?
 🔹 15. What are LAG() and LEAD() functions, and how are they used in SQL?
 🔹 16. How would you handle missing values in SQL?
 🔹 17. How can you split a single column into multiple columns in SQL?
 🔹 18. Write a query to find duplicate rows in a dataset.
 🔹 19. How do you use ROW_NUMBER() to eliminate duplicates from a table?
 🔹 20. Write a query to calculate the percentage contribution of each product to total sales.
 🔹 21. Write a query to calculate a 7-day rolling average of sales.
 🔹 22. How would you identify the second highest value in a column?
 🔹 23. Explain the purpose of window functions with an example.
 🔹 24. Explain how you’d clean a dataset with inconsistent formats (e.g., date or string issues).
 🔹 25. Write a query to standardize data by scaling numeric columns between 0 and