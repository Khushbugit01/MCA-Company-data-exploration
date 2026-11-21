# Database 
CREATE DATABASE IF NOT EXISTS mca_company;
USE mca_company;

# Table
CREATE TABLE IF NOT EXISTS company_data_500 (
    CIN                    VARCHAR(50),
    CompanyName             VARCHAR(255),
    CompanyROCode           VARCHAR(50),
    CompanyCategory         VARCHAR(100),
    CompanySubCategory      VARCHAR(100),
    CompanyClass            VARCHAR(100),
    AuthorizedCapital       DECIMAL(20, 2),
    PaidupCapital           DECIMAL(20, 2),
    CompanyRegDate           DATE,
    ListingsStatus          VARCHAR(50),
    CompanyStatus           VARCHAR(50),
    CompanyOrigin           VARCHAR(50),
    NicCode                 INT,
    CompanyClassification   VARCHAR(255)
);

# Company Record Overview 
# Preview a sample of company records.
SELECT
    CIN,
    CompanyName,
    CompanyStatus
FROM company_data_500
LIMIT 10;

# Count the total number of company records in the dataset.
SELECT
    COUNT(*) AS total_companies
FROM company_data_500;

# Company Status Analysis 
# Identify the distinct company-status values represented in the dataset.
SELECT DISTINCT
    CompanyStatus
FROM company_data_500
ORDER BY CompanyStatus;

# Retrieve companies currently marked as Active.
SELECT
    CompanyName,
    CompanyStatus
FROM company_data_500
WHERE CompanyStatus = 'Active';

# Compare active companies with a paid-up capital threshold of 1,000,000.
SELECT
    CompanyName,
    CompanyStatus,
    PaidupCapital
FROM company_data_500
WHERE CompanyStatus = 'Active'
  AND PaidupCapital > 1000000;

# Summarize company counts by status.
SELECT
    CompanyStatus,
    COUNT(*) AS company_count
FROM company_data_500
GROUP BY CompanyStatus
ORDER BY company_count DESC;

# Identify the status category with the largest number of records.
SELECT
    CompanyStatus,
    COUNT(*) AS company_count
FROM company_data_500
GROUP BY CompanyStatus
ORDER BY company_count DESC
LIMIT 1;

# Compare the maximum paid-up capital across company-status groups.
SELECT
    CompanyStatus,
    MAX(PaidupCapital) AS highest_paidup_capital
FROM company_data_500
GROUP BY CompanyStatus
ORDER BY highest_paidup_capital DESC;

# Captial Structure analysis 

# Identify records where authorized capital exceeds paid-up capital.
SELECT
    CompanyName,
    AuthorizedCapital,
    PaidupCapital
FROM company_data_500
WHERE AuthorizedCapital > PaidupCapital;

# Calculate the average paid-up capital across all company records.
SELECT
    AVG(PaidupCapital) AS average_paidup_capital
FROM company_data_500;

# Identify the company record with the highest paid-up capital.
SELECT
    CompanyName,
    PaidupCapital
FROM company_data_500
WHERE PaidupCapital IS NOT NULL
ORDER BY PaidupCapital DESC
LIMIT 1;

# Identify the company record with the lowest paid-up capital.
SELECT
    CompanyName,
    PaidupCapital
FROM company_data_500
WHERE PaidupCapital IS NOT NULL
ORDER BY PaidupCapital ASC
LIMIT 1;

# Calculate the aggregate authorized capital across the dataset.
SELECT
    SUM(AuthorizedCapital) AS total_authorized_capital
FROM company_data_500;

# Count companies with paid-up capital exceeding 1,000,000.
SELECT
    COUNT(*) AS companies_above_paidup_threshold
FROM company_data_500
WHERE PaidupCapital > 1000000;

# Calculate average authorized capital for active companies.
SELECT
    AVG(AuthorizedCapital) AS average_authorized_capital_active
FROM company_data_500
WHERE CompanyStatus = 'Active';

# Count companies with authorized capital exceeding 5,000,000.
SELECT
    COUNT(*) AS companies_above_authorized_capital_threshold
FROM company_data_500
WHERE AuthorizedCapital > 5000000;

# Calculate aggregate paid-up capital for active companies.
SELECT
    SUM(PaidupCapital) AS total_paidup_capital_active
FROM company_data_500
WHERE CompanyStatus = 'Active';

# Rank companies by paid-up capital and return the top three records.
SELECT
    CompanyName,
    PaidupCapital
FROM company_data_500
WHERE PaidupCapital IS NOT NULL
ORDER BY PaidupCapital DESC
LIMIT 3;

# Compare each company's paid-up capital with the dataset-wide average.
SELECT
    CompanyName,
    PaidupCapital
FROM company_data_500
WHERE PaidupCapital > (
    SELECT AVG(PaidupCapital)
    FROM company_data_500
)
ORDER BY PaidupCapital DESC;

# Company Category analysis

# Summarize company counts across categories.
SELECT
    CompanyCategory,
    COUNT(*) AS company_count
FROM company_data_500
GROUP BY CompanyCategory
ORDER BY company_count DESC;

# Compare maximum authorized capital across company categories.
SELECT
    CompanyCategory,
    MAX(AuthorizedCapital) AS highest_authorized_capital
FROM company_data_500
GROUP BY CompanyCategory
ORDER BY highest_authorized_capital DESC;

# Calculate aggregate paid-up capital for each category.
SELECT
    CompanyCategory,
    SUM(PaidupCapital) AS total_paidup_capital
FROM company_data_500
GROUP BY CompanyCategory
ORDER BY total_paidup_capital DESC;

# Identify the category with the highest aggregate paid-up capital.
SELECT
    CompanyCategory,
    SUM(PaidupCapital) AS total_paidup_capital
FROM company_data_500
GROUP BY CompanyCategory
ORDER BY total_paidup_capital DESC
LIMIT 1;

# Compare average paid-up capital across company categories.
SELECT
    CompanyCategory,
    AVG(PaidupCapital) AS average_paidup_capital
FROM company_data_500
GROUP BY CompanyCategory
ORDER BY average_paidup_capital DESC;

# Identify categories containing more than 20 company records.
SELECT
    CompanyCategory,
    COUNT(*) AS company_count
FROM company_data_500
GROUP BY CompanyCategory
HAVING COUNT(*) > 20
ORDER BY company_count DESC;

# Identify the category with the highest average paid-up capital.
SELECT
    CompanyCategory,
    AVG(PaidupCapital) AS average_paidup_capital
FROM company_data_500
GROUP BY CompanyCategory
ORDER BY average_paidup_capital DESC
LIMIT 1;

# Company subcategory analysis

# Summarize company counts across subcategories.
SELECT
    CompanySubCategory,
    COUNT(*) AS company_count
FROM company_data_500
GROUP BY CompanySubCategory
ORDER BY company_count DESC;
