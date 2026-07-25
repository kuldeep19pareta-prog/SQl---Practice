# SQL GROUP BY - Set 8

This repository contains SQL practice questions and solutions focused on **GROUP BY**, **HAVING**, **ORDER BY**, and **Aggregate Functions** using an Employee database.

## 📚 Topics Covered

- GROUP BY
- HAVING
- ORDER BY
- Aggregate Functions
- Multi-Column GROUP BY
- String Functions
- Date Functions

---

## 🗂 Database Used

**Table:** `Employees`

Columns:
- EmpID
- Name
- Dept
- City
- Gender
- Salary
- JoinDate
- Role

---

# Questions & Solutions

## GROUP BY Basics

### Q1. Find the total number of employees in each department.

```sql
SELECT Dept, COUNT(*) AS TotalEmployees
FROM Employees
GROUP BY Dept;
```

---

### Q2. Find the total salary paid per department.

```sql
SELECT Dept, SUM(Salary) AS TotalSalary
FROM Employees
GROUP BY Dept;
```

---

### Q3. Find the average salary in each city.

```sql
SELECT City, AVG(Salary) AS AvgSalary
FROM Employees
GROUP BY City;
```

---

### Q4. Find the maximum salary in each department.

```sql
SELECT Dept, MAX(Salary) AS MaxSalary
FROM Employees
GROUP BY Dept;
```

---

### Q5. Find the minimum salary in each department.

```sql
SELECT Dept, MIN(Salary) AS MinSalary
FROM Employees
GROUP BY Dept;
```

---

## GROUP BY + ORDER BY

### Q6. List departments with employee count sorted by count descending.

```sql
SELECT Dept, COUNT(*) AS EmpCount
FROM Employees
GROUP BY Dept
ORDER BY EmpCount DESC;
```

---

### Q7. List cities with total salary sorted by total salary ascending.

```sql
SELECT City, SUM(Salary) AS TotalSalary
FROM Employees
GROUP BY City
ORDER BY TotalSalary;
```

---

## ORDER BY

### Q8. List employees ordered by department and salary (highest first).

```sql
SELECT Name, Dept, Salary
FROM Employees
ORDER BY Dept, Salary DESC;
```

---

### Q9. List employees ordered by city and joining date.

```sql
SELECT Name, City, JoinDate
FROM Employees
ORDER BY City, JoinDate;
```

---

### Q10. List employees ordered by role and salary.

```sql
SELECT Name, Role, Salary
FROM Employees
ORDER BY Role, Salary;
```

---

## HAVING Clause

### Q11. Show departments having more than 7 employees.

```sql
SELECT Dept, COUNT(*) AS EmpCount
FROM Employees
GROUP BY Dept
HAVING COUNT(*) > 7;
```

---

### Q12. Show departments where average salary exceeds 65000.

```sql
SELECT Dept, AVG(Salary) AS AvgSalary
FROM Employees
GROUP BY Dept
HAVING AVG(Salary) > 65000;
```

---

### Q13. Show cities where total salary exceeds 650000.

```sql
SELECT City, SUM(Salary) AS TotalSalary
FROM Employees
GROUP BY City
HAVING SUM(Salary) > 650000;
```

---

### Q14. Show departments where maximum salary is at least 80000.

```sql
SELECT Dept, MAX(Salary) AS MaxSalary
FROM Employees
GROUP BY Dept
HAVING MAX(Salary) >= 80000;
```

---

### Q15. Show roles appearing more than 5 times.

```sql
SELECT Role, COUNT(*) AS RoleCount
FROM Employees
GROUP BY Role
HAVING COUNT(*) > 5;
```

---

## Aggregate Functions

### Q16. Find the overall average salary.

```sql
SELECT AVG(Salary) AS CompanyAvgSalary
FROM Employees;
```

---

### Q17. Count female employees in each department.

```sql
SELECT Dept, COUNT(*) AS FemaleCount
FROM Employees
WHERE Gender='F'
GROUP BY Dept;
```

---

### Q18. Find highest and lowest salary.

```sql
SELECT MAX(Salary) AS Highest,
       MIN(Salary) AS Lowest
FROM Employees;
```

---

### Q19. Find total salary of employees joined after 2019-01-01.

```sql
SELECT SUM(Salary) AS TotalSalary
FROM Employees
WHERE JoinDate > '2019-01-01';
```

---

### Q20. Find average salary by gender.

```sql
SELECT Gender,
       AVG(Salary) AS AvgSalary
FROM Employees
GROUP BY Gender;
```

---

## Multi-Column GROUP BY

### Q21. Find employee count grouped by department and city.

```sql
SELECT Dept,
       City,
       COUNT(*) AS EmpCount
FROM Employees
GROUP BY Dept, City;
```

---

### Q22. Find average salary grouped by department and gender.

```sql
SELECT Dept,
       Gender,
       AVG(Salary) AS AvgSalary
FROM Employees
GROUP BY Dept, Gender;
```

---

### Q23. Find total salary grouped by city and role.

```sql
SELECT City,
       Role,
       SUM(Salary) AS TotalSalary
FROM Employees
GROUP BY City, Role
ORDER BY City, TotalSalary DESC;
```

---

### Q24. Count employees grouped by department and role having more than one employee.

```sql
SELECT Dept,
       Role,
       COUNT(*) AS EmpCount
FROM Employees
GROUP BY Dept, Role
HAVING COUNT(*) > 1;
```

---

### Q25. Find maximum salary grouped by city and gender.

```sql
SELECT City,
       Gender,
       MAX(Salary) AS MaxSalary
FROM Employees
GROUP BY City, Gender;
```

---

## HAVING + ORDER BY

### Q26. Show departments with average salary greater than 60000.

```sql
SELECT Dept,
       AVG(Salary) AS AvgSalary
FROM Employees
GROUP BY Dept
HAVING AVG(Salary) > 60000
ORDER BY AvgSalary DESC;
```

---

### Q27. Show city and department combinations having more than one employee.

```sql
SELECT City,
       Dept,
       COUNT(*) AS EmpCount
FROM Employees
GROUP BY City, Dept
HAVING COUNT(*) > 1
ORDER BY EmpCount DESC, City;
```

---

### Q28. Show roles where total salary exceeds 300000.

```sql
SELECT Role,
       SUM(Salary) AS TotalSalary
FROM Employees
GROUP BY Role
HAVING SUM(Salary) > 300000
ORDER BY TotalSalary;
```

---

## String & Date Functions

### Q29. Display employee names in uppercase along with joining year.

```sql
SELECT UPPER(Name) AS EmpName,
       YEAR(JoinDate) AS JoinYear
FROM Employees
ORDER BY JoinYear;
```

---

### Q30. Find number of employees joined each year.

```sql
SELECT YEAR(JoinDate) AS JoinYear,
       COUNT(*) AS Joiners
FROM Employees
GROUP BY YEAR(JoinDate)
ORDER BY JoinYear;
```

---

## ⭐ Skills Practiced

- GROUP BY
- HAVING
- ORDER BY
- COUNT()
- SUM()
- AVG()
- MIN()
- MAX()
- YEAR()
- UPPER()
- Multi-column GROUP BY

---

## Repository Structure

```
SQL-GROUP-BY-SET-8/
│
├── README.md
├── Employees.sql
├── Solutions.sql
└── Output Screenshots/
```

---

⭐ If you found this repository helpful, consider giving it a star.
