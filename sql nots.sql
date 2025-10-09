
sql:
DBMS: insertion,updation,deletion 
RDBMS: it manage the store the data in the form of tables , multiple users can access 
-------------------------------------
Create database Players;

Create table Crickters(
player_id int,
name varchar(50)
)
insert into Crickters (player_id,name) values (1,'Rohit');
insert into Crickters (player_id,name) values (2,'sachin');
insert into Crickters (player_id,name) values (3,'sharma');
insert into Crickters (player_id,name) values (4,'kapil');
insert into Crickters (player_id,name) values (5,'panday');
insert into Crickters (player_id,name) values (5,'panday');
insert into Employees 

Create table into another table :

Create table new table_name
As
Select * from Existing table_name;
------
Ex: Create table AutomationTeam
As
Select * from Employees;
------
Update table Crickters ()

Select *from Crickters;
//Write a querry dispaly all the employee names ?
Select DISTINCT name from Crickters;

Select COUNT DISTNICT CustomerID from Customers ;
//*update synta*//

update Crickters set name='pand'where player_id='5';

-->Data intigrity  : it is used to restrict the imvalid enetering into the table 
-->1.Data types :data types are used to specify the type of data stored each column of the table  
number data type
non numeric data type 
date data type  

-->2.Constraints:  we can achecive the data intigrity by using of constraints  constraints can be either colum level an table level
colomn level applied only coumn level .
where table level applied entire table .


=========================================

Create database Employee;

Create table Employees
(emp_id int,
emp_name varchar(50) Primary key,
emp_number char(30),
emp_jobname varchar(10),
emp_hiredate date,
emp_salary char(1000),
)
Select * from Employees;

insert into Employees(emp_id,emp_name,emp_number,emp_jobname,emp_hiredate,emp_salary) values (1,'KAYLING',101,' tester', '10-10-1999', 6000);
insert into Employees(emp_id,emp_name,emp_number,emp_jobname,emp_hiredate,emp_salary) values (2,'fish',102,'	DEV', '09-10-1998', 8000);
insert into Employees(emp_id,emp_name,emp_number,emp_jobname,emp_hiredate,emp_salary) values (3,'docker',103,' analyst', '12-11-1999', 10000);
insert into Employees(emp_id,emp_name,emp_number,emp_jobname,emp_hiredate,emp_salary) values (4,'jolly',104,' sap', '08-10-1999', 7000);
insert into Employees(emp_id,emp_name,emp_number,emp_jobname,emp_hiredate,emp_salary) values (5,'lion',105,' devops', '07-11-1999', 3000);
insert into Employees(emp_id,emp_name,emp_number,emp_jobname,emp_hiredate,emp_salary) values (6,'kind',106,' cloud', '06-09-1999', 5000);
insert into Employees(emp_id,emp_name,emp_number,emp_jobname,emp_hiredate,emp_salary) values (8,'smith',107,' aws', '06-10-1999', 2000); 
insert into Employees(emp_id,emp_name,emp_number,emp_jobname,emp_hiredate,emp_salary) values (9,'smit',107,' aws', '06-10-1998', 2000); 

Select Distinct emp_id from Employees;
Select emp_salary from Employees;
Select Distinct emp_name from Employees;
//*annual salary*//

Select emp_salary*12  from Employees;

Select emp_salary ,emp_jobname AS "monthly salary " from Employees;

select Distinct   emp_salary from smith  Employees;

//*where clause restrict invalid entering into table*//
Select *from Employees where emp_name ='smith'and emp_salary=2000;

//*order BY 
select c1 
from tabblename
order by c1 ASC/DESC;
*/
select *from Employees ORDER BY  emp_salary  DESC;

select emp_number,emp_jobname from Employees where emp_name='smith';

select *from Employees where emp_jobname IN ('sap');

//* LIKE = Pattersn matching  'a%' ->start with a
                               '%a' ->end with a
*//

select *from Employees where emp_jobname LIKE 'S%';

select *from Employees where emp_name LIKE '_o%';
//*who are getting 10000*//
Select *from Employees where emp_salary is not null;

select *from Employees where emp_hiredate like '12%';

select * from Employees where emp_jobname IN ('analyst','sap') AND emp_number IN (101,104);

select *from Employees where emp_name not like 'a%' AND emp_salary>5000;

select emp_salary*12 from Employees where emp_name='smith';
//*1.*truncate- it remove data prementantly
Truncate table tablename ;
2 .Drop-.It remove both data and structure 
Drop table tablename ;
3 .flashback -Restore table which we drop
Flashback table tablename to before Drop;
4-purge - Delete the tabe directly 
Purge table tablename;

ALTER - CHANGES FOR THE STRUCTURE OF THE TABLE 
1.Add- alter table tablenmae ADD Colunname;
ex:alter table Employee ADD Locationvarchar(20);
2.Delete-alter table tablename Drop  columnname ;
Ex: alter table Employee Drop location;
3.Reaname: alter table tablename RENAME Clounm existing column name to new column name;
ex:alter table Employee Rename location to locationname;

DML :INSERT ,UPDATE,DELETE
INSERT: insert into tablename (cloumn1 )values(v1);
EX:insert into Employee (location)values  ('shimla');
UPDATE:update tablename set column name value where (condition);
update Employees set Emp_name = 'smith where emp_number'106';
Delete :Delete from tablename where condition;
Delete from Employee where emp_number='106';

DTL:ROLLBACK,COMMIT,SAVEPOINT;
DCL:GRANT,REVOKE; 

WHERE filters data based on conditions on individual columns before grouping. 
HAVING filters data based on conditions on aggregate values (like SUM, AVG, COUNT) after grouping. 
where: where clause is used to restrict the number of records dsiplayed it gives the specifice reords the output  based on conditon >
Having: while HAVING filters groups after they have been created by GROUP BY and aggregated

Where : 


 7. Explain how HAVING differs from WHERE, with examples.

DISTINCT: which is used to remove the duplicate records from result set.

SELECT DISTINCT emp_jobname
FROM Employees;


*//
where :

SELECT * FROM Customers
WHERE CustomerID > 80;

Having :

SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 5
ORDER BY COUNT(CustomerID) DESC;

SELECT *from Employees 


Select * from Orders;
Select * from Customers;
Select DISTINCT Emp_number from Employees;



 7. Explain how HAVING differs from WHERE, with examples.
 Select MAX(CustomerID) from Customers where CustomerID= '111';
  
update Employees set emp_id =1 where emp_number='105';
Delete from Employees where emp_number='105';

-->Fuctions: functions are immortant feature of sql, which is used to perform the calculatin data, to modify the individual dtata items ,
--> to manipulate the output based on group records also used to formatt the date,numbers and so on.

select MIN(emp_salary) from Employees Group By emp_salary;

//*Functions
Single row: Char: CASE MANUPULATION(upper,lower,INIT,CAP)
            char: CHARACTER MANUPULATION(substr,instr,concat,length,replace,trim) 
			date(TOCHAR,TODATE)
			General(NVL,NVL2)
Multi Row/aggrigate/group by: MAX,MIN,AVG,SUM,COUNT,
MIN() - returns the smallest value within the selected column
MAX() - returns the largest value within the selected column
COUNT() - returns the number of rows in a set
SUM() - returns the total sum of a numerical column
AVG() - returns the average value of a numerical column
*/
SELECT SUBSTRING('SQL Tutorial', 1, 3) AS ExtractString;
Select SUBSTRING ('MADHURA' ,1 ,3) from Employees;
SELECT LENGTH("SQL Tutorial") AS LengthOfString;
Select LENGTH  ('SMITH') FROM Employees;

Heighest salary from Employee table?
Select *from Employees;

HEighest salary-> Select MAX(emp_salary) from Employees;
total salary-> Select SUM(emp_salary) from Employees;

heighest and lowest salary -> Select MAX(emp_salary),MIN(emp_salary) from Employees;

Select COUNT(* )from Employees where emp_number='101';


//*GROUP BY is used to collect data across mutlipe records result by one based on condition
SELECT COLUMNNAME 
FROM TABLENAME 
WHERE CONDITION
GROUP BY COLUMNNAME
ORDER BY COLUMNNAME;

Write a query to calculate the total sales for each month using `GROUP BY`
Select emp_number ,avg(emp_salary) from Employees GROUP BY emp_number;

write a querry display average salary of all deparments;*//

Select emp_number,AVG(emp_salary) from Employees GROUP BY emp_number;

subquerry:
 Select *from Employees where emp_id =(Select emp_id from Employees where emp_name='smith');

 Select *from Employees where emp_hiredate=(select emp_hiredate from Employees where emp_name='kind')


 Select *from Employees where emp_salary>(select MAX(emp_salary) from Employees where emp_number='101');
 Select MAX(emp_salary) from Employees where 

 Select *from Employess where emp_salary< Select *from Employees where emp_salary<(select MIN(emp_salary) from Employees where emp_number='101');
 -->SUBQUERRY: it is alos called nested querry:

 ---WAQ dispaly all the employees who job is same as james job department vale uknown value
 select *from employees where emp_jobname=(Select emp_jobname from Employees where emp_name ='docker');
 Select *from Employees where emp_jobname>(Select emp_jobname from Employees where emp_name='fish');

  //*joins  joins are ued to mutlipe data from multipe tables 
  1.cross join -output valid and  invalid records
  select T1 COLUMN,T2 COLUMN FROM T1,T2;
  2.inner join-output matched records from both tables 
  3.outer join
  4.left outer
  5.right outer
  6.full outer
  *//
  create table Orders(
  OrderID int,
  CustomerID int ,
  OrderDate date)

  insert into Orders (OrderID,CustomerID,OrderDate) values (1,111,'1996-09-18');
 insert into Orders (OrderID,CustomerID,OrderDate) values (2,222,'1996-09-19');
 insert into Orders (OrderID,CustomerID,OrderDate) values (3,333,'1996-09-18');
 select * from Orders;

 create table Customers(
  Customersname varchar(20),
  CustomerID int ,
  contactname char(20),
  country  varchar(20))
 insert into Customers (Customersname,contactname,country,CustomerID) values ('john','Maria Anders',	'Germany',111);
 insert into Customers (Customersname,contactname,country,CustomerID) values ('lobby','Ana Trujill','india',222);
 insert into Customers (Customersname,contactname,country,CustomerID) values ('bombaby','Antonio Moreno','india',333);
 select * from Customers;

 1. cross join
 select T1 COLUMN,T2 COLUMN FROM T1,T2;
 Select orders

 Select  OrderID, Customersname from Orders,Customers;

 2,inner join
 SELECT column_name(s)
FROM table1
INNER JOIN table2
ON table1.column_name = table2.column_name;


Select OrderID 
from Orders 
INNER JOIN Customers
ON Orders.CustomerID = Customers.CustomerID;

Select OrderDate,Customersname
from Orders
inner join Customers
ON Orders.CustomerID= Customers.CustomerID;

Select OrderDate
from Orders
inner join Customers on Orders.CustomerID= Customers.CustomerID;

SELECT column_name(s)
FROM table1
LEFT JOIN table2
ON table1.column_name = table2.column_name;

Select 

Select OrderDate,Customersname 
from Orders
left join Customers
on Orders.CustomerID= Customers.CustomerID
ORDER BY Customers.Customersname;

4.Right join
SELECT column_name(s)
FROM table1
RIGHT JOIN table2
ON table1.column_name = table2.column_name;

Select OrderDate,Customersname
from Orders
Right join  Customers
on Orders.CustomerID= Customers.CustomerID
ORDER BY Customers.Customersname;

5.Full outer join
SELECT column_name(s)
FROM table1
FULL OUTER JOIN table2
ON table1.column_name = table2.column_name
WHERE condition;


Select OrderDate,Customersname
from Orders
full OUTER JOIN  Customers
on Orders.CustomerID= Customers.CustomerID
ORDER BY Customers.Customersname;


6.Self join
SELECT column_name(s)
FROM table1 T1, table1 T2
WHERE condition;

Select OrderDate,Customersname
from Orders,  Customers  
ORDER BY Customers.Customersname;


Select OrderDate,
FROM Orders
inner join Customers on Orders.CustomerID= Customers.CustomersID

insert into Orders (OrderDate )values('1996-09-18');
select * from Orders;
Delete from Orders where OrderDate='1996-09-18';
update Orders set  OrderDate='1996-09-29'  where  OrderDate='1996-09-18';

1. Write a SQL query to find employees whose salary is greater than the average salary of employees in their respective location.
Select *from Employees where emp_salary=(select MAX(emp_salary) from Employees  );




Select *from Orders;

Select OrderID
from Orders
inner join Customers
on Orders.CustomerID= Customers.CustomerID;
ORDER BY Customers.Customersname;

Select *from Employees

Select emp_jobname,emp_salary *from Employees where emp_salary (Select(emp_salary) from Employees where emp_salry>3);
Selcet Max(Emp_Salary) from Emploees 

Select OrderID from Orders inner join Customers on Orders.CustomerID = Customers.CustomerID;

--->Write a querry find duplicate records in a table :
SELECT emp_name, emp_salary, COUNT(*) AS count
FROM Employees
GROUP BY emp_name, emp_salary
HAVING COUNT(*) > 1;

select emp_number, Count(*)AS count
from Employees
Group by emp_number
HAVING COUNT(*)>1;

Select *from Employees;
Select emp_number ,COUNT(*)
 AS count from Employees
 GROUP BY  emp_number
 HAVING COUNT(*)>1;
--index: index are used to retrive the data from data bases more  quickyly , speed of searching the process.
-->index can be used effeciently find all rows matching some cloumn in a querry.
-->index can also be unique index.
-->which memas that you  dont have duplicate values in the column 
--> if u dont have index any coulmn "where clause the each column will check"
EX: CREATE INDEX index_name
ON table_name (column1, column2, ...);



 SELECT emp_name, emp_number, MAX(emp_salary) AS emp_salary
FROM Employees
WHERE emp_name = 'smith'
GROUP BY emp_name, emp_number
ORDER BY emp_salary DESC;



CREATE UNIQUE INDEX index_name
ON table_name (column1, column2, ...)

Create INDEX Temporary
ON Employees (emp_number)

select *from Employees;
select *from Temporary;


---view : view is virtual table based on result set of sql statement.
--vew contains rows and columns just like real table, in a view fields from one or more real table on the database.
--we can add sql statement functions views present data   users coming from one sigle table.
CREATE VIEW view_name AS
SELECT column1, column2, ...
FROM table_name
WHERE condition;

Select view view_name AS Select c1,c2 from Empoyees where emp_number= '101';
Create VIEW emp_iden AS select Emp_number from Employees where  emp_number= '101';

CREATE VIEW [Brazil Customers] AS
SELECT CustomerName, ContactName
FROM Customers
WHERE Country = 'Brazil';
---------------------------
Select *from customers;
Select *from Orders;

Select OrderID from Orders
inner join Customers on Orders.CustomerID = Customers.CustomerID ;

 --->Write a query to find the second-highest salary from an employee table.
 (SELECT MAX(emp_salary) FROM Employees)

Select *from Employees where emp_salary=(select MAX(emp_salary) from Employees  );

SELECT MAX(emp_salary)
FROM Employees
WHERE emp_salary < (SELECT MAX(emp_salary) FROM Employees);

 ---How do you combine results of two queries using `UNION` and `UNION ALL`?
-union:The UNION operator is used to combine the result-set of two or more SELECT statements.
SELECT column_name(s) FROM table1
UNION
SELECT column_name(s) FROM table2;

Select emp_salary from Employees
UNION 
Select OrderID from Orders;


--UNION ALL Syntax
:The UNION operator is used to combine the result-set of two or more SELECT statements.
---The UNION operator selects only distinct values by default. To allow duplicate values, use UNION ALL:
Select emp_salary from Employees
UNION  ALL
Select emp_salary from Players
 OrderID BY emp_salary;

Triggers: triggers is a special type of store procedure that automatically runs when an event occurs in the database server.
--------------------


manipulation and presentation.
GROUP BY is used to group rows that have the same values in one or more columns. 
This is often used in conjunction with aggregate functions like COUNT, SUM, AVG, MIN, or MAX to perform calculations on each group. 
The result of a GROUP BY clause is a set of summary rows, not the original detail rows. 
ORDER BY, on the other hand, is used to sort the result set of a query based on one or more columns. 
It arranges the data in either ascending (default) or descending order. This clause is applied after all other operations, 
including grouping, and does not change the number of rows returned, only their order. 
In essence, GROUP BY is used to summarize data by grouping rows with similar values, 
while ORDER BY is used to sort the results of a query for better readability and analysis

Select *from Employees
Select * from Customers;

/* 1.second heigest salary from employees*/
select max(emp_salary) from Employees where emp_salary<(Select max(emp_salary) from Employees);

/* 2. Inner Join*/
select Customersname from Customers Inner join Orders on Customers.CustomerID=Orders.CustomerID;  

/* WAQ  Count Employees in department*/
Select emp_number ,count(*)  from Employees Group By  emp_number;

/* WAQ ADD NEW Column email to the employees table .*/
ALTER Table Employess  ADD Cloumn Email varchar (25); 

//*find second heighest salary */

Select Max(emp_salary) from Employees  where emp_salary<(Select MAX(emp_salary) from Employees);

//*find emplooyees who joined last 30 days  use: curdate() --Interval n day *//
 Select * from Employees  where emp_hiredate >= -interval 15 day;

 Select emp_salary AS EMP_SALARY from Employees;
 Select * from Employees;

1. find duplicate records in a table 
Select emp_id ,emp_name ,count(*)
from Employees
Group by emp_id,emp_name
Having count(*)>1;

SELECT emp_number, COUNT(*)
FROM Employees
GROUP BY emp_number
HAVING COUNT(*) > 1;


-->1. Write a SQL query to find employees whose salary is greater than the average salary of employees in their respective location.
select emp_salary, emp_name, emp_jobname  from employees  e1 
where emp_salary>
(Select avg(emp_salary) from employees  e2  where  e2.emp_jobname = e1.emp_jobname);

SELECT emp_salary, emp_name, emp_jobname
FROM employees e1
WHERE CONVERT(FLOAT, emp_salary) > (
  SELECT AVG(CONVERT(FLOAT, emp_salary))
  FROM employees e2
  WHERE e2.emp_jobname = e1.emp_jobname
);


-------------------
--Question 1: What are the different types of JOINs in SQL?
Answer: INNER JOIN, LEFT JOIN, RIGHT JOIN, FULL JOIN.

INNER JOIN returns matching rows between tables.

LEFT JOIN returns all from left table plus matches from right.

RIGHT JOIN returns all from right table plus matches from left.

FULL JOIN returns all rows where there is a match in one of the tables.

--Question 2: Write a query to find the second highest salary from the Employee table.

Select max(emp_salary)from Employees where emp_salary<(Select Max(emp_salary)from Employees);

Question 3: How to find duplicate records in a table?
sql
SELECT emp_name, COUNT(*)
FROM Employees
GROUP BY emp_name
HAVING COUNT(*) > 1;
Question 4: Difference between UNION and UNION ALL.
Answer: UNION removes duplicates while UNION ALL includes all duplicates.

Question 5: What does the GROUP BY clause do?
Answer: It groups rows that have the same values in specified columns into aggregated data like sums or counts.

Question 6: Write a query to get employees who earn more than the average salary.
sql
SELECT * FROM Employees
WHERE emp_salary > (SELECT AVG(emp_salary) FROM Employees);

Question 1: Explain the difference between ROW_NUMBER(), RANK(), and DENSE_RANK() window functions. Write example queries.

Answer:

ROW_NUMBER() assigns unique sequential numbers; no ties.

RANK() assigns same rank to ties but skips ranks for next.

DENSE_RANK() assigns same rank to ties but no skips in ranks.

Example:

sql
SELECT emp_name, emp_salary,
       ROW_NUMBER() OVER (ORDER BY emp_salary DESC) AS RowNum,
       RANK() OVER (ORDER BY emp_salary DESC) AS RankNum,
       DENSE_RANK() OVER (ORDER BY emp_salary DESC) AS DenseRankNum
FROM Employees;
Question 2: Write a recursive SQL query to generate a series of numbers from 1 to 10.

sql
WITH RECURSIVE NumberSeries AS (
  SELECT 1 AS num
  UNION ALL
  SELECT num + 1
  FROM NumberSeries
  WHERE num < 10
)
SELECT * FROM NumberSeries;
Question 3: How would you find the employees who do not have any reporting manager? (Assuming a column manager_id)

sql
SELECT emp_name
FROM Employees
WHERE manager_id IS NULL;
Question 4: Explain normalization and mention the differences between 1NF, 2NF, and 3NF.

Answer:

1NF: Eliminate repeating groups, ensure atomicity.

2NF: Meet 1NF criteria + every non-key column fully dependent on primary key.

3NF: Meet 2NF + no transitive dependency on primary key.

Question 5: How can indexes improve query performance? When might they slow it down?

Answer:
Indexes speed up search queries by reducing data scanned.
However, they slow down INSERT, UPDATE, and DELETE operations because indexes need update.