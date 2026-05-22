# 🏦 Advanced Banking Analytics System

## 📌 Project Overview

The **Advanced Banking Analytics System** is a comprehensive end-to-end banking analytics project developed using:

- Python
- SQL (MySQL Workbench)
- Power BI

This project simulates real-world banking analytics workflows and focuses on analyzing:

- Customer behavior
- Banking transactions
- Loan performance
- Credit card usage
- Fraud detection
- Risk monitoring
- Customer segmentation
- Branch performance

The project provides actionable business insights using interactive dashboards and advanced analytical techniques.

---

# 🎯 Project Objectives

The major objectives of this project are:

- Analyze banking transactions
- Identify high-risk customers
- Detect fraudulent transactions
- Monitor loan approvals and rejections
- Analyze customer demographics
- Perform branch performance analysis
- Track customer credit utilization
- Build interactive business dashboards
- Generate meaningful business insights

---

# 🛠️ Tools & Technologies Used

| Tool | Purpose |
|---|---|
| Python | Data Cleaning & EDA |
| MySQL Workbench | SQL Analysis |
| Power BI | Dashboard Development |
| Excel | Reporting & Pivot Analysis |
| Pandas | Data Manipulation |
| NumPy | Numerical Operations |
| Matplotlib | Data Visualization |
| Seaborn | Statistical Visualization |
| DAX | KPI Calculations |

---

# 📂 Dataset Information

## Dataset Used

Comprehensive Banking Database

---

## Dataset Contains

The dataset includes multiple banking-related domains such as:

### Customer Information

- Customer ID
- Age
- Gender
- City
- Occupation

### Banking Information

- Account Type
- Account Balance
- Branch ID

### Transaction Information

- Transaction Amount
- Transaction Date
- Transaction Type

### Loan Information

- Loan Amount
- Loan Status
- Loan Type

### Credit Card Information

- Credit Limit
- Credit Card Balance

### Fraud Indicators

- Anomaly Flag
- Suspicious Transactions

### Customer Service Information

- Feedback Type
- Resolution Status

---

# 📁 Project Folder Structure

```text
Advanced-Banking-Analytics-System/
│
├── Database/
│   ├── Comprehensive_Banking_Database.csv
│   └── cleaned_banking_data.csv
│
├── Python/
│   ├── Banking_Data_Cleaning_and_EDA.ipynb
│   │
│   └── Visual Outputs/
│
├── SQL/
│   ├── Banking_Project_SQL_Analysis.sql
│   │
│   └── Screenshots/
│ 
│
├── Power BI/
│   ├── Bank_Analytics_Dashboard.pbix
│   │
│   └── Dashboard Screenshots/
|
└──  README.md
```

---

# 🧹 Phase 1 — Data Cleaning using Python

## Data Cleaning Operations Performed

The dataset was cleaned and preprocessed using Python.

### Cleaning Steps

- Removed duplicate records
- Handled missing values
- Converted date columns
- Corrected datatypes
- Renamed columns
- Created custom business columns
- Generated customer segments

---

## Feature Engineering Performed

### Age Group Creation

Customers were segmented into:

- 18–25
- 26–35
- 36–45
- 46+

---

### Credit Utilization Calculation

Credit utilization was calculated to measure customer credit risk.

Formula Used:

```python
credit_utilization =
(credit_card_balance / credit_limit) * 100
```

---

### High Risk Customer Flag

Customers with anomalies were flagged as:

- Yes
- No

---

## Python Libraries Used

```python
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
```

---

# 📊 Exploratory Data Analysis (EDA)

Exploratory Data Analysis was performed to understand patterns and trends within the banking dataset.

---

## Analysis Performed

### Customer Analysis

Analyzed:

- Customer demographics
- Age distribution
- Gender distribution
- City-wise customers

---

### Transaction Analysis

Analyzed:

- Monthly transaction trends
- High-value transactions
- Branch-wise revenue

---

### Loan Analysis

Analyzed:

- Loan approvals
- Loan rejections
- Loan distribution
- Loan categories

---

### Fraud Analysis

Analyzed:

- Fraud transactions
- High-risk customers
- Fraud concentration
- Suspicious activity trends

---

### Credit Card Analysis

Analyzed:

- Credit utilization
- Credit limit usage
- Customer spending behavior

---

# 🗄️ Phase 2 — SQL Analysis using MySQL Workbench

Advanced SQL queries were performed to generate business insights.

---

# SQL Concepts Used

- SELECT Statements
- GROUP BY
- ORDER BY
- Aggregate Functions
- CASE Statements
- Window Functions
- Subqueries
- Conditional Logic

---

# SQL Analysis Performed

## Customer Analysis

- Total customers
- Customers by city
- Customers by gender

---

## Transaction Analysis

- Total transaction amount
- Monthly transaction trends
- High transaction customers

---

## Loan Analysis

- Loan approval percentage
- Average loan amount
- Loan category analysis

---

## Fraud Analysis

- Fraud customers
- Fraud by city
- High-risk customer analysis

---

## Branch Analysis

- Branch revenue
- Branch rankings
- Top-performing branches

---

# Sample SQL Queries

## Total Customers

```sql
SELECT COUNT(*) AS total_customers
FROM banking_data;
```

---

## Branch Revenue

```sql
SELECT branch_id,
       SUM(transaction_amount) AS revenue
FROM banking_data
GROUP BY branch_id;
```

---

## Fraud Customers

```sql
SELECT *
FROM banking_data
WHERE anomaly = 1;
```

---

# 📈 Phase 3 — Power BI Dashboard Development

Interactive dashboards were built using Power BI.

The dashboard provides:

- Executive summaries
- Customer insights
- Loan analytics
- Fraud monitoring
- Credit risk analysis

---

# 📌 Power BI Dashboard Pages

---

# 📍 Page 1 — Executive Overview Dashboard

## Purpose

Provides a high-level overview of banking operations.

---

## KPIs Included

- Total Customers
- Total Transactions
- Total Loan Amount
- Avg Account Balance
- Fraud Count
- Loan Approval %

---

## Visuals Used

| Visual | Purpose |
|---|---|
| KPI Cards | Business summary |
| Line Chart | Monthly transaction trends |
| Bar Chart | Branch performance |
| Pie Chart | Loan status analysis |
| Slicers | Interactive filtering |

---

## Business Insights Generated

- Overall banking performance
- Branch revenue trends
- Loan approval trends
- Transaction growth analysis

---

# 📍 Page 2 — Customer Analytics Dashboard

## Purpose

Analyzes customer demographics and banking behavior.

---

## Visuals Used

| Visual | Purpose |
|---|---|
| Bar Chart | Age group analysis |
| Doughnut Chart | Gender distribution |
| Map Chart | City-wise analysis |
| Treemap | Account type analysis |
| KPI Cards | Customer KPIs |

---

## Customer Analysis Performed

### Age Group Analysis

Helps identify dominant customer segments.

---

### Gender Distribution

Analyzes male vs female customers.

---

### City-wise Analysis

Analyzes regional banking activity.

---

### Account Type Analysis

Identifies preferred customer account types.

---

## Business Insights Generated

- Major customer age groups
- Regional customer concentration
- Customer banking preferences
- Customer demographics

---

# 📍 Page 3 — Loan Risk & Lending Analytics Dashboard

## Purpose

Analyzes loan performance and credit risk.

---

## KPIs Included

- Total Loan Amount
- Loan Approval %
- Average Loan Amount
- High Risk Customers

---

## Visuals Used

| Visual | Purpose |
|---|---|
| Pie Chart | Loan status analysis |
| Scatter Plot | Credit risk analysis |
| Matrix Table | Loan details |
| Column Chart | Loan category analysis |
| KPI Cards | Loan KPIs |

---

## Loan Analysis Performed

### Loan Approval Analysis

Analyzed approved vs rejected loans.

---

### Loan Category Analysis

Segmented loans into:

- Small Loans
- Medium Loans
- High Loans

---

### Credit Risk Analysis

Analyzed risky borrowers using scatter plots.

---

### Loan Matrix Analysis

Displayed customer-level loan details.

---

## Business Insights Generated

- Loan approval efficiency
- Customer borrowing behavior
- High-risk borrowers
- Credit exposure analysis

---

# 📍 Page 4 — Fraud Detection & Risk Monitoring Dashboard

## Purpose

Monitors banking fraud and suspicious activities.

---

## KPIs Included

- Fraud Count
- High Risk Customers
- Fraud Transaction Amount
- Fraud Percentage

---

## Visuals Used

| Visual | Purpose |
|---|---|
| KPI Cards | Fraud summary |
| Line Chart | Fraud trend analysis |
| Bar Chart | Fraud by city |
| Table | Fraud customer details |
| Heatmap | Risk concentration |

---

## Fraud Analysis Performed

### Fraud Trend Analysis

Analyzed fraud activity over time.

---

### Fraud by City

Identified high-risk cities.

---

### Fraud Customer Analysis

Displayed suspicious customers.

---

### Risk Heatmap

Analyzed fraud concentration by city and branch.

---

## Business Insights Generated

- Fraud-prone branches
- Suspicious transaction patterns
- High-risk customers
- Fraud concentration areas

---

# 📊 DAX Measures Used

## Total Customers

```DAX
Total Customers =
DISTINCTCOUNT(Banking[customer_id])
```

---

## Total Transactions

```DAX
Total Transactions =
SUM(Banking[transaction_amount])
```

---

## Fraud Count

```DAX
Fraud Count =
CALCULATE(
    COUNT(Banking[customer_id]),
    Banking[Anomaly] = 1
)
```

---

## Loan Approval %

```DAX
Loan Approval % =
DIVIDE(
    CALCULATE(
        COUNT(Banking[loan_status]),
        Banking[loan_status] = "Approved"
    ),
    COUNT(Banking[loan_status])
)
```

---

# 📌 Business Problems Solved

This project helps solve real banking business problems such as:

- Fraud detection
- Risk monitoring
- Loan performance tracking
- Customer segmentation
- Regional banking analysis
- Credit risk monitoring
- Branch performance evaluation

---

# 💡 Key Business Insights

The project generated several business insights including:

- High-risk customer identification
- Fraud-prone regions
- Customer transaction behavior
- Loan approval efficiency
- Customer demographic trends
- Credit utilization patterns

---

# 🚀 Skills Demonstrated

This project demonstrates skills in:

- Data Cleaning
- Exploratory Data Analysis
- SQL Analytics
- Power BI Dashboarding
- DAX Calculations
- Banking Domain Analytics
- Business Intelligence
- Data Visualization

---

# 📌 Future Enhancements

Future improvements planned:

- Machine Learning Fraud Detection
- Loan Default Prediction
- Customer Churn Prediction
- Forecast Analysis
- Power BI Service Deployment
- Real-Time Banking Dashboard

---

# 📌 Conclusion

The Advanced Banking Analytics System demonstrates a complete end-to-end banking analytics workflow using industry-standard tools and techniques.

The project provides meaningful business insights into:

- Customer behavior
- Banking transactions
- Loan performance
- Fraud monitoring
- Risk analysis

This project is suitable for:

- Data Analyst Portfolio
- Banking Analytics Portfolio
- Business Intelligence Showcase
- Resume Projects
- Interview Demonstrations
- LinkedIn Portfolio Showcase
