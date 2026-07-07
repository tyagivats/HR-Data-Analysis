CREATE DATABASE hr_analytics; 
USE hr_analytics;
CREATE TABLE hr_analytics_project (
EmployeeID INT,
FirstName VARCHAR(50),
LastName VARCHAR(50),
Age INT,
Gender VARCHAR(20),
MaritalStatus VARCHAR(30),
Department VARCHAR(50),
JobRole VARCHAR(100),
Education VARCHAR(50),
MonthlyIncome INT,
YearsAtCompany INT,
YearsInCurrentRole INT,
JobSatisfaction INT,
PerformanceRating INT,
OverTime VARCHAR(10),
DistanceFromHome INT,
WorkLifeBalance INT,
Attrition VARCHAR(10),
TrainingTimesLastYear INT,
BusinessTravel VARCHAR(50)
);
SELECT COUNT(*) AS Total_Employees
FROM hr_analytics_project;
SELECT Gender,
COUNT(*) AS Employee_Count
FROM hr_analytics_project
GROUP BY Gender;
SELECT Department,
COUNT(*) AS Employee_Count
FROM hr_analytics_project
GROUP BY Department;
SELECT Department,
AVG(MonthlyIncome) AS Average_Monthly_Income
FROM hr_analytics_project
GROUP BY Department;
SELECT EmployeeID,
FirstName,
LastName,
Department,
MonthlyIncome
FROM hr_analytics_project
ORDER BY MonthlyIncome DESC
LIMIT 10;
SELECT AVG(Age) AS Average_Age
FROM hr_analytics_project;
SELECT Attrition,
COUNT(*) AS Employee_Count
FROM hr_analytics_project
GROUP BY Attrition;
SELECT EmployeeID,
FirstName,
LastName,
Department,
YearsAtCompany
FROM hr_analytics_project
WHERE YearsAtCompany > 5;
SELECT BusinessTravel,
COUNT(*) AS Employee_Count
FROM hr_analytics_project
GROUP BY BusinessTravel;
