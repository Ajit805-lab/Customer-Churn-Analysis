-- select all data from customer
SELECT 
    *
FROM
    customer_data;

-- Churn count by gender
SELECT 
    gender, COUNT(*) AS cnt
FROM
    customer_data
WHERE
    churn = 'yes'
GROUP BY gender;

-- Churn count by contract
SELECT 
    contract, COUNT(*) AS cnt
FROM
    customer_data
WHERE
    churn = 'yes'
GROUP BY contract;

-- Churn count by Internet Service
SELECT 
    internetservice, COUNT(*) AS cnt
FROM
    customer_data
WHERE
    churn = 'yes'
GROUP BY internetservice
ORDER BY cnt DESC;

-- Find the total number of senior citizens
SELECT 
    SUM(SeniorCitizen) AS total
FROM
    customer_data
WHERE
    seniorcitizen = 1;

-- List unique payment methods
SELECT DISTINCT
    paymentmethod
FROM
    customer_data;

-- Show all customers with tenure greater than 50 months
SELECT 
    *
FROM
    customer_data
WHERE
    tenure > 50;

-- Average Monthly Charges by Contract type
SELECT 
    contract, CEIL(AVG(monthlycharges)) AS avg
FROM
    customer_data
GROUP BY contract;

-- Churn rate by Internet Service
WITH c AS (
    SELECT 
        InternetService,
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churn_count
    FROM customer_data
    GROUP BY InternetService
),
d AS (
    SELECT COUNT(DISTINCT customerID) AS total_count
    FROM customer_data
)
SELECT 
    c.InternetService,
    ROUND((c.churn_count * 100.0) / d.total_count, 2) AS churn_rate_percentage
FROM c, d;


-- Show customers with Fiber optic and Tech Support = ‘No’
SELECT 
    customerID
FROM
    customer_data
WHERE
    internetservice = 'fiber optic'
        AND techsupport = 'No';

-- Find average tenure of customers who did not churn
SELECT 
    FLOOR(AVG(tenure)) AS avg
FROM
    customer_data
WHERE
    churn = 'no';

SELECT 
    CASE
        WHEN tenure <= 12 THEN '0-1 Year'
        WHEN tenure <= 24 THEN '1-2 Years'
        WHEN tenure <= 36 THEN '2-3 Years'
        WHEN tenure <= 48 THEN '3-4 Years'
        ELSE '4+ Years'
    END AS tenure_range,
    COUNT(*) AS cnt
FROM
    customer_data
GROUP BY tenure_range;
    
-- Churn by Streaming Services
SELECT 
    streamingtv, streamingmovies, COUNT(*) AS cnt
FROM
    customer_data
WHERE
    churn = 'yes'
GROUP BY streamingtv , streamingmovies;

-- Count of churned customers who had multiple services (e.g., OnlineSecurity, OnlineBackup)
SELECT 
    COUNT(*)
FROM
    customer_data
WHERE
    churn = 'yes' AND onlinesecurity = 'yes'
        AND OnlineBackup = 'yes';
        
-- Compare churn rate between partners and non-partners
with c as (
select partner,sum(case when churn='yes' then 1 else 0 end)*100/count(*) as churn_rate from customer_data group by partner)
select 
max(case when partner='no' then churn_rate end) as no_churn_rate,
max(case when partner='yes' then churn_rate end) as yes_churn_rate,
(max(case when partner='no' then churn_rate end)-max(case when partner='yes' then churn_rate end)) as diff_rate from c;

