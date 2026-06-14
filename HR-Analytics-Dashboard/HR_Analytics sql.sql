-- Query 1: Overall attrition rate
SELECT 
    COUNT(*) AS total_employees,
    SUM(CASE WHEN "Attrition" = 'Yes' THEN 1 ELSE 0 END) AS left_company,
    ROUND(AVG(CASE WHEN "Attrition" = 'Yes' THEN 1.0 ELSE 0 END) * 100, 2) AS attrition_rate_pct
FROM hr_data;

-- Query 2: Department wise attrition
SELECT 
    "Department",
    COUNT(*) AS total,
    SUM(CASE WHEN "Attrition" = 'Yes' THEN 1 ELSE 0 END) AS left_count,
    ROUND(AVG(CASE WHEN "Attrition" = 'Yes' THEN 1.0 ELSE 0 END) * 100, 2) AS attrition_pct
FROM hr_data
GROUP BY "Department"
ORDER BY attrition_pct DESC;

-- Query 3: Overtime ka attrition pe impact
SELECT 
    "OverTime",
    COUNT(*) AS total,
    ROUND(AVG(CASE WHEN "Attrition" = 'Yes' THEN 1.0 ELSE 0 END) * 100, 2) AS attrition_pct
FROM hr_data
GROUP BY "OverTime";

-- Query 4: Salary band wise attrition (Window Function)
SELECT 
    "SalaryBand",
    COUNT(*) AS employees,
    SUM(CASE WHEN "Attrition" = 'Yes' THEN 1 ELSE 0 END) AS left_count,
    ROUND(AVG(CASE WHEN "Attrition" = 'Yes' THEN 1.0 ELSE 0 END) * 100, 2) AS attrition_pct,
    RANK() OVER (ORDER BY AVG(CASE WHEN "Attrition" = 'Yes' THEN 1.0 ELSE 0 END) DESC) AS risk_rank
FROM hr_data
GROUP BY "SalaryBand";

-- Query 5: Top 3 attrition drivers using CTE
WITH attrition_drivers AS (
    SELECT
        AVG(CASE WHEN "OverTime" = 'Yes' THEN 1.0 ELSE 0 END) * 100 AS overtime_impact,
        AVG(CASE WHEN "JobSatisfaction" <= 2 THEN 1.0 ELSE 0 END) * 100 AS low_satisfaction_pct,
        AVG(CASE WHEN "DistanceFromHome" > 15 THEN 1.0 ELSE 0 END) * 100 AS far_home_pct
    FROM hr_data
    WHERE "Attrition" = 'Yes'
)
SELECT * FROM attrition_drivers;
