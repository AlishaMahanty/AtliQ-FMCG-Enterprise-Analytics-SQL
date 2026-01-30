# 📊 AtliQ FMCG Enterprise Analytics (SQL)

## 📌 Project Overview:

This project is an end-to-end SQL analytics solution built on an FMCG-style enterprise dataset for AtliQ.
It covers Finance Analytics, Sales Analytics, and Supply Chain Analytics, simulating real-world business scenarios faced by data analysts in consumer goods organizations.

The objective of this project is to transform raw transactional data into meaningful, business-ready insights that support decision-making across multiple functions.

## 🏢 Business Context:

AtliQ operates in a consumer goods (FMCG) environment with:

- Multiple products and product divisions
- Customers spread across different markets and regions
- Discount-driven pricing models
- Demand forecasting and supply planning requirements

The dataset reflects common FMCG challenges such as revenue tracking, sales performance analysis, and forecast accuracy evaluation.

## 🎯 Project Objectives:

This project answers key business questions across three analytics domains:

### 1. [💰 Finance Analytics](https://github.com/AlishaMahanty/AtliQ-FMCG-Enterprise-Analytics-SQL/tree/main/Finance_Analytics)

- Track monthly and yearly gross sales performance with fiscal-year aligned reporting
- Analyze product-level and customer-level revenue contribution
- Build reusable financial reports using stored procedures
- Classify markets into performance badges (Gold / Silver) based on total quantity sold to identify high-volume markets

➡️ Focus: “How much revenue and sales volume are generated across customers, products, and markets?”

### 2. [📈 Sales Analytics](https://github.com/AlishaMahanty/AtliQ-FMCG-Enterprise-Analytics-SQL/tree/main/Sales_Analytics)

- Identify top markets, products, and customers by net sales
- Analyze net sales contribution (market share contribution %) by customers and regions
- Rank markets within regions and products within divisions
- Provide a comparative, ranking-based view of sales performance

➡️ Focus: “Who and what is driving sales performance?”

### 3. [🚚 Supply Chain Analytics](https://github.com/AlishaMahanty/AtliQ-FMCG-Enterprise-Analytics-SQL/tree/main/Supply_Chain_Analytics)

- Compare actual sales vs forecasted demand
- Measure net error, absolute error and forecast accuracy % 
- Evaluate demand planning performance at customer and market levels
- Support inventory and supply planning decisions

➡️ Focus: “How accurate is our demand forecasting?”

## 🗂️ Repository Structure:

```text
📦 AtliQ-FMCG-Enterprise-Analytics-SQL
┣ 📂 Finance_Analytics
┃ ┗ Revenue tracking
┃ ┗ Fiscal year reporting
┃ ┗ Product, customer, and market-level financial analysis
┃ ┗ Market performance badge logic
┃ ┗ Stored procedures automation
┣ 📂 Sales_Analytics
┃ ┗ Market, product and customer performance
┃ ┗ Ranking analysis
┃ ┗ Views for reusability
┃ ┗ Stored procedures automation
┣ 📂 Supply_Chain_Analytics
┃ ┗ Forecast accuracy & Demand planning analysis
┃ ┗ Stored procedures automation
┣ 📄 README.md
```

##  📁 Each folder contains:

- Domain-specific SQL files
- Stored procedures (get_) for reusable logic
- Solution Reports in csv file
- A dedicated README explaining business context, problem statements, key matrics and concepts used

## 🛠️ Tools & Skills Used:

- SQL (MySQL)
- SQL Basics
- Joins, Subqueries, CTEs and Temporary Tables 
- Window Functions (RANK, DENSE_RANK, OVER)
- Aggregations & Grouping
- Stored Procedures for report automation 
- Views for reusable logic
- Time Intelligence & Fiscal Year handling
- Business KPI Modeling

## 🧠 Key Business Metrics Covered:

- Gross Sales
- Net Sales
- Sales Contribution %
- Market Share %
- Quantity Sold
- Net Error & Absolute Error
- Forecast Accuracy %

## 💡 Key Learnings:

- Translating business problem statements into SQL solutions
- Designing reusable and scalable queries using views and stored procedures
- Understanding how Finance, Sales, and Supply Chain analytics connect
- Structuring SQL projects in an enterprise-friendly way

## 🚀 Future Enhancements:

- Power BI dashboards for Finance, Sales, and Supply Chain insights
- Profitability and margin analysis
- Automation of recurring reports
- Trend and YoY growth analysis

## 👤 Author

**Alisha Mahanty**

Aspiring Data Analyst | SQL | Power BI | Excel | Python | Tableau | AI Automation

👉 [LinkedIn](https://www.linkedin.com/in/alishamahanty85/)

👉 [Portfolio](https://codebasics.io/portfolio/Alisha-Mahanty)
