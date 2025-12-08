select * from Employees
Select *from orders


Create VIEW [Employees_latest2] AS
Select emp_number ,emp_id,emp_name from Employees
where emp_name='smith';


select * from Employees_latest2

Create view [Employee_latest_Data] AS
Select emp_number,emp_id from employees where emp_name='kind';

Select *from Employee_latest_Data


select * from employees


/*
ADMIN@DESKTOP-5HJF4BI MINGW64 ~/Documents/SQL Server Management Studio (master)
$ cd c:

ADMIN@DESKTOP-5HJF4BI MINGW64 /c
$ cd Documents\ and\ Settings/

ADMIN@DESKTOP-5HJF4BI MINGW64 /c/Documents and Settings
$ cd Documents
bash: cd: Documents: No such file or directory

ADMIN@DESKTOP-5HJF4BI MINGW64 /c/Documents and Settings
$  cd

ADMIN@DESKTOP-5HJF4BI MINGW64 ~
$ cd Documents

ADMIN@DESKTOP-5HJF4BI MINGW64 ~/Documents
$ cd SQL Server Management Studio
bash: cd: too many arguments

ADMIN@DESKTOP-5HJF4BI MINGW64 ~/Documents
$ cd "SQL Server Management Studio"

ADMIN@DESKTOP-5HJF4BI MINGW64 ~/Documents/SQL Server Management Studio (master)
$ ^C

ADMIN@DESKTOP-5HJF4BI MINGW64 ~/Documents/SQL Server Management Studio (master)
$

*/