select * from Employees
Select *from orders


Create VIEW [Employees_latest2] AS
Select emp_number ,emp_id,emp_name from Employees
where emp_name='smith';


select * from Employees_latest2

Create view [Employee_latest_Data] AS
Select emp_number,emp_id from employees where emp_name='kind';

Select *from Employee_latest_Data


