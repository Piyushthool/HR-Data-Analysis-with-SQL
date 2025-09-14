CREATE DATABASE hrdata;
USE hrdata;
select * from employees;

select count(*) as total_employees
from employees;

select count(*) as total_old_employees
from employees
where dateoftermination != '';

select avg(salary) as avg_salary
from employees;


select count(*) as total_old_employees
from employees
where dateoftermination = '';

SELECT AVG(TIMESTAMPDIFF(YEAR,STR_TO_DATE(DOB,'%d-%m-%Y'), CURDATE())) AS AVG_AGE
FROM EMPLOYEES;

SELECT AVG(TIMESTAMPDIFF(YEAR,STR_TO_DATE(DATEOFHIRE,'%d-%m-%Y'), CURDATE())) AS AVG_YEARS_IN_COMPANY
FROM EMPLOYEES;

ALTER TABLE EMPLOYEES
ADD EMPLOYEECURRENTSTATUS INT;

SET SQL_SAFE_UPDATES=0;

UPDATE employees
SET employeecurrentstatus = CASE
WHEN Dateoftermination =''THEN 1
ELSE 0
END;

SELECT (CAST(COUNT(CASE WHEN EmployeeCurrentStatus = 0 THEN 1 END ) AS FLOAT) / COUNT(*)) * 100 AS Attrition_rate
from employees; 

DESCRIBE employees;

select * from employees
limit 5;

select * from employees
ORDER BY empid DESC
limit 5;

ALTER TABLE employees
MODIFY COLUMN salary DECIMAL (10,2);

UPDATE employees
set DOB = STR_TO_DATE(DOB,'%d-%m-%Y');

UPDATE employees
set Dateofhire= STR_TO_DATE(Dateofhire,'%d-%m-%Y');

UPDATE employees
set LASTPERFORMANCEREVIEW_DATE = STR_TO_DATE(LASTPERFORMANCEREVIEW_DATE,'%d-%m-%Y');

ALTER TABLE EMPLOYEES
MODIFY COLUMN DOB DATE,
MODIFY COLUMN Dateofhire  DATE,
MODIFY COLUMN lastperformancereview_date DATE;

SELECT DOB,dateofhire,dateoftermination,lastperformancereview_date
from employees;

DESCRIBE EMPLOYEES;

UPDATE employees
set dateoftermination ='CurrentlyWorking'
WHERE dateoftermination IS NULL OR dateoftermination='';

SELECT MaritalDesc, count(*) as count
from employees
group by MaritalDesc
ORDER BY Count DESC;

SELECT Department, count(*) as count
from employees
group by Department
ORDER BY Count DESC;

SELECT Position, count(*) as count
from employees
group by Position
ORDER BY Count DESC;

SELECT ManagerName, count(*) as count
from employees
group by ManagerName
ORDER BY Count DESC;

SELECT 
CASE 
WHEN salary < 30000 THEN '< 30k'
WHEN salary BETWEEN 30000 AND 49999 THEN '< 30k - 49K'
WHEN salary BETWEEN 50000 AND 69999 THEN '< 50k - 69K'
WHEN salary BETWEEN 70000 AND 89999 THEN '< 70k - 89K'
WHEN salary >= 90000 THEN '90k and above'
END AS Salary_Range,
COUNT(*) AS frequency
from employees GROUP BY salary_range ORDER BY salary_range;

SELECT PerformanceScore, count(*) as count
from employees
group by PerformanceScore
ORDER BY PerformanceScore;

SELECT Department, AVG(salary) as averagesalary
from employees
group by department
ORDER BY department;

SELECT TermReason, count(*) as count
from employees
WHERE termreason IS NOT NULL
group by Termreason
ORDER BY Count DESC;

SELECT state, count(*) as count
from employees
group by state
ORDER BY count DESC;

SELECT GENDER, count(*) as count
from employees
group by GENDER
ORDER BY COUNT DESC;

ALTER TABLE employees
ADD COLUMN age INT;

UPDATE employees
set age = Timestampdiff(year,dob,CURDATE());

SELECT 
CASE 
WHEN salary < 20 THEN '< 20'
WHEN AGE BETWEEN 20 AND 29 THEN '< 20 - 29'
WHEN AGE BETWEEN 30 AND 39 THEN '< 30 - 39'
WHEN AGE BETWEEN 40 AND 49 THEN '< 40 - 49'
WHEN AGE BETWEEN 50 AND 59 THEN '< 50 - 59'
WHEN AGE >= 60 THEN '60 and above'
END AS AGE_Range,
COUNT(*) AS COUNT
from employees GROUP BY AGE_RANGE ;

SELECT DEPARTMENT, SUM(Absences) AS TotalAbsences
from employees
group by department
ORDER BY totalabsences DESC;

SELECT GENDER, sum(salary) as TotalSalary
from employees
group by GENDER
ORDER BY totalsalary DESC;

SELECT maritaldesc, count(*) as terminatedcount
from employees
where termd = 1
group by maritaldesc
ORDER BY TERMINATEDCOUNT DESC;

SELECT performancescore, AVG(ABSENCES) as AVERAGEABSENCES
from employees
group by PERFORMANCESCORE
ORDER BY PERFORMANCESCORE;

SELECT RECRUITMENTSOURCE, count(*) as EMPLOYEEcount
from employees
group by Recruitmentsource
ORDER BY EMPLOYEECOUNT DESC;




