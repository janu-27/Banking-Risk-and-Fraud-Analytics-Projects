USE BANKING_PROJECT;

DESCRIBE BANKING_DATA;

SELECT COUNT(*) AS total_customers FROM banking_data;

SELECT SUM(`Transaction Amount`) AS total_transactions FROM banking_data;

SELECT AVG(`Account Balance`) AS avg_balance FROM banking_data;

SELECT MAX(`Loan Amount`) AS max_loan FROM banking_data;

SELECT MIN(`Loan Amount`) AS min_loan FROM banking_data;

SELECT Gender,
       COUNT(*) AS total_customers
FROM banking_data
GROUP BY Gender;

SELECT City,
       COUNT(*) AS customers
FROM banking_data
GROUP BY City
ORDER BY customers DESC;

SELECT `Branch ID`,
       SUM(`Transaction Amount`) AS revenue
FROM banking_data
GROUP BY `Branch ID`
ORDER BY revenue DESC;

SELECT `Loan Status`,
       COUNT(*) AS total_loans
FROM banking_data
GROUP BY `Loan Status`;

SELECT `Customer ID`,
       `Transaction Amount`
FROM banking_data
WHERE Anomaly = 1;

SELECT `Customer ID`,
       `Transaction Amount`
FROM banking_data
WHERE `Transaction Amount` > 100000;

SELECT `Customer ID`,
       `Account Balance`
FROM banking_data
ORDER BY `Account Balance` DESC
LIMIT 10;

SELECT City,
       AVG(`Loan Amount`) AS avg_loan
FROM banking_data
GROUP BY City
ORDER BY avg_loan DESC;

SELECT `Customer ID`,
       (`Credit Card Balance` / `Credit Limit`) * 100 AS utilization
FROM banking_data;

SELECT `Customer ID`,
       `Credit Limit`
FROM banking_data
WHERE `Credit Limit` < 50000;

SELECT `Account Type`,
       COUNT(*) AS total_accounts
FROM banking_data
GROUP BY `Account Type`;

SELECT MONTH(`Transaction Date`) AS month_num,
       SUM(`Transaction Amount`) AS total_transactions
FROM banking_data
GROUP BY MONTH(`Transaction Date`)
ORDER BY month_num;

SELECT `Branch ID`,
       SUM(`Transaction Amount`) AS revenue,
       RANK() OVER(
           ORDER BY SUM(`Transaction Amount`) DESC
       ) AS branch_rank
FROM banking_data
GROUP BY `Branch ID`;

SELECT
(
    SUM(CASE WHEN `Loan Status` = 'Approved' THEN 1 ELSE 0 END)
    /
    COUNT(*)
) * 100 AS approval_rate
FROM banking_data;

SELECT City,
       SUM(`Loan Amount`) AS total_loan
FROM banking_data
GROUP BY City
ORDER BY total_loan DESC
LIMIT 10;

SELECT `Customer ID`,
       `Account Balance`
FROM banking_data
WHERE `Account Balance` >
(
    SELECT AVG(`Account Balance`)
    FROM banking_data
);

SELECT City,
       COUNT(*) AS fraud_count
FROM banking_data
WHERE Anomaly = 1
GROUP BY City
ORDER BY fraud_count DESC;

SELECT `Account Type`,
       AVG(`Transaction Amount`) AS avg_transaction
FROM banking_data
GROUP BY `Account Type`;

SELECT
CASE
    WHEN Age BETWEEN 18 AND 25 THEN '18-25'
    WHEN Age BETWEEN 26 AND 35 THEN '26-35'
    WHEN Age BETWEEN 36 AND 45 THEN '36-45'
    ELSE '46+'
END AS age_group,
COUNT(*) AS customers
FROM banking_data
GROUP BY age_group;

SELECT `Customer ID`,
       `Loan Amount`
FROM banking_data
ORDER BY `Loan Amount` DESC
LIMIT 5;
