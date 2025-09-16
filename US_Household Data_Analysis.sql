SELECT * 
FROM us_project.us_household_income_statistics;

SELECT * 
FROM us_project.us_household_income;

SELECT State_Name, SUM(ALand), SUM(AWater)
FROM us_project.us_household_income
GROUP BY State_Name
ORDER BY 2 DESC
LIMIT 10;

SELECT *
FROM us_project.us_household_income u
JOIN us_project.us_household_income_statistics us
	ON u.id = us.id;

SELECT u.State_Name, County, Type, `Primary`, Mean, Median
FROM us_project.us_household_income u
JOIN us_project.us_household_income_statistics us
	ON u.id = us.id
    WHERE Mean != 0;
    
SELECT u.State_Name, ROUND(AVG(Mean),1), ROUND(AVG(Median),1)
FROM us_project.us_household_income u
JOIN us_project.us_household_income_statistics us
	ON u.id = us.id
WHERE Mean != 0
GROUP BY u.State_Name
ORDER BY 3 DESC
LIMIT 10;

SELECT Type, COUNT(Type), ROUND(AVG(Mean),1), ROUND(AVG(Median),1)
FROM us_project.us_household_income u
JOIN us_project.us_household_income_statistics us
	ON u.id = us.id
WHERE Mean != 0
GROUP BY Type
HAVING COUNT(Type) > 100
ORDER BY 3 DESC
LIMIT 10;

-- Focus only on Types with a sufficiently large number of records (more than 100) 
-- to avoid bias from categories that have very few entries (e.g., only 2 or 17).
    
SELECT *
FROM us_project.us_household_income u
WHERE Type = "Community"
;

DELETE 
FROM us_project.us_household_income_statistics us
WHERE Mean = 0;
    
  -- delete rows with mean of 0, they have proven to no be useful at this point  
    
SELECT u.State_Name, City, ROUND(AVG(Mean),1)
FROM us_project.us_household_income u
JOIN us_project.us_household_income_statistics us
	ON u.id = us.id
GROUP BY u.State_Name, City
ORDER BY ROUND(AVG(Mean),1) DESC;
    
    