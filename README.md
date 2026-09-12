# Retail Sales Analysis Using SQL

## 📊 Project Overview

This project analyzes retail sales data using MySQL to identify sales trends, top-performing products, customer behavior, and country-level performance.

The analysis focuses on understanding business performance and using SQL to generate actionable insights.

> **Data cleaning rule:** All sales calculations exclude transactions where the description is `Manual` and transactions with non-positive quantities.

---

## 🎯 Business Questions

The analysis aims to answer the following questions:

1. Which products generate the highest sales?
2. Which countries generate the most sales?
3. How do sales change over time?
4. Which customers generate the highest sales?
5. How many products were sold?
6. What is the average order value?
7. How many unique customers are there?
8. How many orders were placed?
9. Which products sell the highest number of units?
10. Which month generated the highest sales?

---

## 🛠️ Tools Used

- MySQL
- MySQL Workbench
- SQL
- GitHub

---

## 📈 Key Results

| Metric | Result |
|---|---:|
| Total Sales | 11,613,170.93 |
| Total Quantity Sold | 7,060,115 |
| Total Orders | 21,895 |
| Unique Customers | 4,300 |
| Average Order Value | 530.40 |
| Best-Performing Month | December 2009 |
| December 2009 Sales | 1,646,896.74 |

---

## 🏆 Top Product by Quantity Sold

The highest-selling product by quantity was:

**WHITE HANGING HEART T-LIGHT HOLDER**

**72,133 units sold**

Other high-volume products included:

- WORLD WAR 2 GLIDERS ASSTD DESIGNS
- PACK OF 72 RETRO SPOT CAKE CASES
- ASSORTED COLOUR BIRD ORNAMENT
- BLACK AND WHITE PAISLEY FLOWER MUG

---

## 🌍 Country Performance

The United Kingdom was the strongest market in the analysis.

### Top 10 Countries by Sales

| Rank | Country | Total Sales |
|---:|---|---:|
| 1 | United Kingdom | 9,944,109.93 |
| 2 | EIRE | 455,332.91 |
| 3 | Netherlands | 313,291.32 |
| 4 | Germany | 231,557.93 |
| 5 | France | 163,885.03 |
| 6 | Denmark | 77,188.21 |
| 7 | Spain | 57,419.90 |
| 8 | Sweden | 53,828.56 |
| 9 | Switzerland | 44,988.47 |
| 10 | Australia | 31,246.70 |

---

## 📅 Monthly Sales Performance

The strongest month was:

**December 2009 — 1,646,896.74**

This suggests that the business experienced particularly strong sales during the holiday period.

---

## 💡 Business Insights

### 1. Strong UK Market

The United Kingdom generated substantially more sales than the other countries analyzed.

This indicates that the business was heavily dependent on its UK customer base.

### 2. Strong Demand for Gift and Home Products

Several of the highest-volume products are gift, home décor, and novelty products.

This suggests that these product categories were important contributors to sales volume.

### 3. Seasonal Sales Opportunity

December 2009 was the highest-performing month.

The business could use this seasonal pattern to prepare inventory and marketing campaigns ahead of the holiday period.

### 4. Customer Spending

The average order value was 530.40, providing a useful benchmark for measuring customer spending and evaluating future strategies.

---

## 📌 Business Recommendations

Based on the analysis, the business could:

- Maintain strong relationships with UK customers.
- Explore opportunities to increase sales in other international markets.
- Increase inventory for high-demand products.
- Prepare holiday marketing campaigns before December.
- Use product bundles and cross-selling to increase average order value.
- Identify successful products in the UK and test them in other markets.

---

## 🧠 SQL Skills Demonstrated

This project demonstrates practical experience with:

- `SELECT`
- `WHERE`
- `GROUP BY`
- `ORDER BY`
- `LIMIT`
- Aggregate functions such as `SUM()`, `AVG()`, and `COUNT()`
- `COUNT(DISTINCT)`
- `DATE_FORMAT()`
- Subqueries
- Data filtering and cleaning
- Customer analysis
- Product analysis
- Country analysis
- Time-series analysis

---

## 📂 Project Files

- `retail_sales_analysis.sql` — SQL queries used for the analysis

---

## 🚀 Conclusion

This project demonstrates how SQL can be used to transform raw retail transaction data into meaningful business insights.

The analysis identified key sales metrics, high-performing products, important markets, customer activity, and seasonal sales patterns.

These insights can help a business make more informed decisions about inventory, marketing, customer retention, and international growth.
