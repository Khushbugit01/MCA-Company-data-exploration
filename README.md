# MCA Company Data Exploration

## Project Overview

This project explores a dataset of 500 company records using MySQL to examine corporate classifications, company status, and capital-related attributes.

The analysis uses SQL queries to investigate company distributions, compare capital measures across categories, identify companies meeting specified conditions, and examine patterns within the selected dataset.

## Analytical Objectives

- Examine the distribution of companies across corporate categories, subcategories, and statuses.
- Analyze authorized and paid-up capital at company and category levels.
- Compare authorized capital with paid-up capital.
- Identify companies with capital values exceeding specified thresholds and dataset averages.
- Explore aggregate capital measures across company classifications.
- Investigate company rankings and category-level comparisons.

## Dataset Overview

| Attribute | Description |
|---|---|
| Dataset | MCA Company Data |
| Records | 500 company records |
| Database Table | `company_data_500` |
| Data Type | Corporate registration and capital information |

### Key Attributes

- CIN
- Company Name
- Company Registration Office Code
- Company Category
- Company Subcategory
- Company Class
- Authorized Capital
- Paid-up Capital
- Company Registration Date
- Listing Status
- Company Status
- Company Origin
- NIC Code
- Company Classification

## Data Source

The dataset was obtained from the Open Government Data (OGD) Platform India, published by the Ministry of Corporate Affairs (MCA), Government of India.

- **Dataset:** Company Master Data
- **Publisher:** Ministry of Corporate Affairs, Government of India
- **Source:** https://data.gov.in/catalog/company-master-data
- **Records used:** 500 company records

## Tools & Technologies

- MySQL
- MySQL Workbench
- SQL

## SQL Analysis

The SQL script covers the following analytical areas:

- Company record exploration and status analysis
- Filtering and conditional analysis
- Aggregate functions and summary statistics
- Capital structure analysis
- Company category and subcategory comparisons
- Grouped analysis using `GROUP BY` and `HAVING`
- Ranking and sorting using `ORDER BY`
- Subquery-based comparisons against overall averages

**SQL Script:** [MCA Company Data Exploration](MCA_Company_Data_Exploration.sql)

## Key Findings

The analysis of 500 company records revealed the following patterns:

- **Company Status:** 346 companies 69.2% are classified as Active, while 138 companies 27.6% are classified as Strike Off.
- **Company Classification:** 498 records belong to companies limited by shares, making this the dominant category within the dataset.
- **Company Subcategory:** 495 companies are classified as non-government companies, while 5 are subsidiaries of companies incorporated outside India.
- **Capital Analysis:** The dataset contains approximately ₹855.61 crore in total authorized capital and ₹610.46 crore in total paid-up capital.
- **Active Companies:** Active companies account for approximately ₹578.32 crore in total paid-up capital.
- **Capital Distribution:** Paid-up capital varies considerably across companies, with a small number of companies accounting for substantial capital values.
- **Highest Paid-up Capital:** Archroma International (India) Private Limited recorded the highest paid-up capital in the dataset, followed by Safari Manufacturing Limited.

### Conclusion

This project demonstrates the use of SQL to explore company data, evaluate company status distributions, compare business classifications, analyze capital structures, and extract meaningful insights using aggregation, filtering, sorting, and subqueries. The analysis highlights how structured querying can support data exploration and business-oriented reporting.




