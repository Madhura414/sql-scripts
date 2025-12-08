-- SQL to Create the Table (Using common data types)

CREATE TABLE netflix_subscriber (
    subscriber_id INT PRIMARY KEY IDENTITY(1,1), -- NEW: IDENTITY(start, increment)
    username VARCHAR(50) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    monthly_subscription VARCHAR(20) NOT NULL,
    subscription_amount DECIMAL(5, 2) NOT NULL,
    preferred_language VARCHAR(30)
);

ALTER TABLE 
ADD subscriber_id INT IDENTITY(1,1) PRIMARY KEY;


INSERT INTO netflix_subscriber (username, password_hash, email, monthly_subscription, subscription_amount, preferred_language) VALUES
('StreamKing01', 'hash001A', 'adam.jones@example.com', 'Premium', 19.99, 'English'),
('BingeQueen02', 'hash002B', 'beth.smith@example.com', 'Standard', 15.49, 'English'),
('MovieLover03', 'hash003C', 'carlos.g@example.com', 'Basic', 9.99, 'Spanish'),
('PopcornFan04', 'hash004D', 'diana.p@example.com', 'Premium', 19.99, 'French'),
('SeriesGeek05', 'hash005E', 'evan.h@example.com', 'Standard', 15.49, 'English'),
('NightViewer06', 'hash006F', 'fiona.k@example.com', 'Basic', 9.99, 'German'),
('ChillTime07', 'hash007G', 'greg.m@example.com', 'Premium', 19.99, 'Spanish'),
('EpisodeHtr08', 'hash008H', 'holly.n@example.com', 'Standard', 15.49, 'English'),
('CinemaPal09', 'hash009I', 'irene.r@example.com', 'Basic', 9.99, 'French'),
('MarathonUsr10', 'hash010J', 'jack.o@example.com', 'Premium', 19.99, 'English'),
('ScreenPro11', 'hash011K', 'kelly.b@example.com', 'Standard', 15.49, 'German'),
('WebWatch12', 'hash012L', 'liam.v@example.com', 'Basic', 9.99, 'Spanish'),
('HDStream13', 'hash013M', 'mia.w@example.com', 'Premium', 19.99, 'English'),
('FastBinge14', 'hash014N', 'nathan.x@example.com', 'Standard', 15.49, 'French'),
('ViewMaster15', 'hash015O', 'olivia.y@example.com', 'Basic', 9.99, 'English'),
('PixelPerfect16', 'hash016P', 'peter.z@example.com', 'Premium', 19.99, 'German'),
('MediaFan17', 'hash017Q', 'quinn.a@example.com', 'Standard', 15.49, 'Spanish'),
('DigitalWatch18', 'hash018R', 'ryan.s@example.com', 'Basic', 9.99, 'French'),
('SmartView19', 'hash019S', 'sara.t@example.com', 'Premium', 19.99, 'English'),
('HomeCinema20', 'hash020T', 'tom.u@example.com', 'Standard', 15.49, 'Spanish');
-- Sample Data Insert Statements (10 Records)

select * from  netflix_subscriber

Create view netflix1 AS 
select * from netflix_subscriber where password_hash='hash001A'
 ORDER BY email desc;

 SELECT
    username AS name,
    subscription_amount AS AMOUNT
FROM
    netflix_subscriber 
WHERE
    subscription_amount = 
(select max(subscription_amount) from netflix_subscriber
where subscription_amount <(select max(subscription_amount) from netflix_subscriber ));


Here is the exact list of the 50 Most-Asked SQL Interview Questions that companies (Amazon, Flipkart, Swiggy, Accenture, Deloitte, TCS, etc.) ask Data Analyst / BI Analyst candidates in 2025.
You can start practicing these right now – no PDF needed!
Easy (1–20) – Asked in 95% of interviews

select *from netflix_subscriber
1.---Find the second highest salary
select subscription_amount as AMOUNT from netflix_subscriber where subscription_amount=(select max (subscription_amount) from  netflix_subscriber  where subscription_amount(select max(subscription_amount) from netflix_subscriber ));

2.--Find duplicate records/emails
select preferred_language, COUNT(*)as count
from netflix_subscriber where preferred_language='English'   group by preferred_language 
having count(*)>1 
order by preferred_language ASC;

3-->.Delete duplicate records (keep one)
select DISTNICT preferred_langauge from netflix_subscriber;

4-->Find employees who earn more than their manager
--select  *from Employees 
SELECT
E.emp_name as name,
 E.emp_salary as salary
FROM
    Employees E
INNER JOIN
    Employees M ON E.EMPLOYEE_ID = M.MANAGER_ID
WHERE
    E.emp_salary > M.emp_salary;

5--Find Nth highest salary (parameterized)
SELECT
    emp_salary AS SALARY
FROM
    (
        SELECT
            emp_salary,
            DENSE_RANK() OVER (ORDER BY emp_salary DESC) AS empsalary_rank
        FROM
            Employees
    ) AS RankedSalaries
WHERE
   emp_salary = '3';
6--Count number of records per group
select emp_jobname ,count(*)as Employye_count 
from Employees group by emp_jobname order by Employye_count DESC
7--Top 5 highest paid employees	
SELECT top 5emp_name,emp_salary AS  salary
FROM Employees
ORDER BY emp_salary DESC

8---Find employees hired in the last 30 days

SELECT emp_name, emp_hiredate
FROM Employees
WHERE emp_hiredate >= DATEADD(day, -30, GETDATE())
9--- departments with more than 10 employees
Select  emp_jobname ,count(*) as DEPARTMENTS 
FROM Employees group by emp_jobname having count(*)>1
10---Swap gender values (M ? F, F ? M) in one query
11--->Find all employees with salary > average salary
12--Find missing numbers from a sequence
13--Find customers who never placed an order
14--Find products never sold
15--Display first name and last name as full name in one column
16--Find employees with same salary
17--Find odd/even rows only
18--Find records where name starts with ‘A’
19--Convert rows to columns (PIVOT concept)
20--Find maximum salary in each department

Medium (21–40) – Asked in 70–80% interviews

Running total / cumulative sum
Month-over-month growth percentage
Year-over-year growth
Rank employees by salary within each department
Find top 3 salary in each department
Customers who bought in consecutive months
First and last transaction date for each customer
Find inactive users (no activity in last 90 days)
Find users who logged in on 3 consecutive days
Difference between RANK, DENSE_RANK, ROW_NUMBER
Find previous and next order date (LEAD/LAG)
Moving average of last 3 months
Find employees with highest salary in their city
Identify continuous login streaks
Find the longest serving employee in each role
Customers who bought Product A but not B
Find the day with highest sales
Rolling 7-day active users
Find manager with maximum number of reportees
Find departments where average salary > company average

Hard (41–50) – Asked in Flipkart, Swiggy, Amazon, Uber

Find the median salary
Find pairs of employees with same salary but different departments
Gaps in sequence (missing dates)
Top 1 product by sales in each region for each month
Sessionization – assign session ID to consecutive user actions
Find the 3rd transaction of every user
Market basket analysis – products frequently bought together
Churn rate calculation month-wise
Find the employee who was promoted the fastest
Find the longest chain of manager ? reportee hierarchy