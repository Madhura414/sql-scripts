
# Employee Project Database

## 📖 Overview

This repository contains the SQL scripts for creating and populating the schema for the Employee-Project management system. It models the crucial many-to-many relationship between employees and the projects they are assigned to, along with tracking hours worked. 

- **Key Features:**
    - Tracks employee assignment to multiple projects.
    - Captures project details (start date, budget).
    - Calculates total hours worked per employee/project.

## ⚙️ Prerequisites

Before proceeding, ensure you have the following components installed and accessible:

- **MS SQL Server:** MS SQL Server 2019/2022 (Express or Developer Edition).
- **SSMS:** SQL Server Management Studio (SSMS) v19 or higher.
- **Project Files:** All SQL scripts located in the `/scripts` folder of this repository.

## 🚀 Setup and Installation

Follow these steps to deploy the database schema to your SQL Server instance:

### 1. Connect to Server

1. Open SSMS and connect to your SQL Server instance using appropriate credentials (e.g., Windows Authentication).

### 2. Create Database

2. Open and execute the script: `/scripts/01_Create_Database.sql`
   *This will create an empty database named `EmployeeDB`.

### 3. Deploy Schema

3. Ensure `EmployeeDB` is selected from the database dropdown menu in the query window, then execute: `/scripts/02_Create_Tables.sql`
   *This creates the core tables: `EMPLOYEE`, `PROJECT`, and the linking table `WORKS_ON`.

### 4. Load Sample Data (Optional)

4. Execute: `/scripts/03_Insert_Data.sql` to load sample employee and project data for immediate testing and demonstration purposes.

## 🔎 Usage and Examples

Once deployed, you can run the following sample queries in a new query window (with `EmployeeDB` selected).

### Find All Projects for an Employee

This query joins the three core tables (`EMPLOYEE`, `WORKS_ON`, `PROJECT`) to list the projects a specific employee has contributed to.

```sql
SELECT
    P.ProjectName,
    W.HoursWorked
FROM
    EMPLOYEE E
JOIN
    WORKS_ON W ON E.EmployeeID = W.EmployeeID
JOIN
    PROJECT P ON W.ProjectID = P.ProjectID
WHERE
    E.LastName = 'Doe';
