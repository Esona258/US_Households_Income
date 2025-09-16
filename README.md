US Household Income Data Cleaning
Overview

This project cleans and prepares the US Household Income dataset for analysis by correcting duplicates, fixing errors, and standardizing data.

Dataset

us_household_income_statistics – income statistics.

us_household_income – geographic and demographic details.

Cleaning Steps

Column Fixes: Renamed corrupted column ï»¿id → id.

Duplicate Removal: Removed duplicate IDs in us_household_income.

State Name Standardization: Corrected misspellings (e.g., "georia" → "Georgia").

Place Corrections: Filled missing or incorrect place names.

Type Standardization: Fixed inconsistent community types ("CPD" → "CDP", "Boroughs" → "Borough").

Land/Water Validation: Checked ALand and AWater for missing or zero values.

Validation

Verified unique state abbreviations.

Confirmed no remaining duplicates.

Ensured consistent community classifications.

Next Steps

Conduct exploratory data analysis (EDA).

Visualize income distributions by state, county, and community type.

💡 Key SQL Concepts Used: ALTER TABLE, UPDATE, DELETE with ROW_NUMBER(), GROUP BY, DISTINCT.
