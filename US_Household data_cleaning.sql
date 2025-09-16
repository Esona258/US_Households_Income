# US Household Income Data Cleaning


SELECT * 
FROM us_project.us_household_income_statistics;

SELECT * 
FROM us_project.us_household_income;


ALTER TABLE us_project.us_household_income_statistics RENAME COLUMN `ï»¿id` TO `id`;

SELECT COUNT(*)
FROM us_project.us_household_income_statistics;

SELECT COUNT(*)
FROM us_project.us_household_income;


SELECT ID, COUNT(id)
FROM us_project.us_household_income
GROUP BY id
HAVING COUNT(id)> 1;

DELETE FROM us_project.us_household_income
WHERE row_id IN (
	SELECT row_id
	FROM (
		SELECT row_id,
		id,
		ROW_NUMBER() OVER(PARTITION BY id ORDER BY id) row_num
		FROM us_project.us_household_income
		) duplicates
	WHERE row_num > 1
);

#delete duplicates found

SELECT ID, COUNT(id)
FROM us_project.us_household_income_statistics
GROUP BY id
HAVING COUNT(id)> 1;

#no duplicates in this table

SELECT State_Name, COUNT(State_Name)
FROM us_project.us_household_income
GROUP BY State_Name;


UPDATE us_project.us_household_income 
SET State_Name = "Georgia" 
WHERE State_Name = "georia";

#fixing spelling/ punctuation errors

UPDATE us_project.us_household_income
SET State_Name ="Alabama"
WHERE State_Nmae ="alabama";

#sql is fixing this spelling error autumatically, but it's good to be sure

SELECT DISTINCT State_ab
FROM us_project.us_household_income
ORDER BY 1;

#all good 

SELECT *
FROM us_project.us_household_income
WHERE County = "Autauga County"
ORDER BY 1;

UPDATE us_project.us_household_income
SET Place = "Autaugaville"
WHERE County = "Autauga County"
AND City = "Vinemont";

# add correct place to blank cell

SELECT Type, Count(Type)
FROM us_project.us_household_income
GROUP BY Type;

UPDATE us_project.us_household_income
SET Type = "CDP"
WHERE Type = "CPD";

UPDATE us_project.us_household_income
SET Type = "Borough"
WHERE Type = "Boroughs";

# fixing errors in type column


UPDATE us_project.us_household_income
SET Type = "CDP"
WHERE Type = "CPD";

UPDATE us_project.us_household_income
SET Type = "Borough"
WHERE Type = "Boroughs";


SELECT ALand, AWater
FROM us_project.us_household_income
WHERE (AWater = 0  OR AWater = NULL OR AWater = "")
AND (ALand = 0 OR ALand = NULL OR ALand = "");

#no issues here

