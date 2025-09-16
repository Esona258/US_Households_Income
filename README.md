#US Household Income Data Cleaning and Data Analysis
Overview

This project cleans and prepares the US Household Income dataset for analysis by correcting duplicates, fixing errors, and standardizing data.

Dataset

us_household_income_statistics – income statistics.

us_household_income – geographic and demographic details.

## Cleaning Steps

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

## Data Analysis

View raw data from both tables.

Aggregate land and water areas by state.

Join household income data with statistics for deeper insights.

Analyze income distribution by state, city, and type.

Filter out unreliable data (Mean = 0).

Focus on categories with sufficient records to reduce bias.

The queries cover data cleaning, aggregation, and analysis to identify trends in US household income.

💡 Key SQL Concepts Used: ALTER TABLE, UPDATE, DELETE with ROW_NUMBER(), GROUP BY, DISTINCT.
