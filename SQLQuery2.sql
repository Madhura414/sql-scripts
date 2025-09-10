Select emp_number ,COUNT (*) AS count from Employees 
GROUP BY emp_number
HAVING Count(*)>1;

Select DISTINCT emp_salary from Employees

Select SUM (emp_salary) from Employees ;