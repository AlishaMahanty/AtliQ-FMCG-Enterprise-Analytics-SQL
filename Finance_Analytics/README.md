# 💰 Finance Analytics

## 📌 Business Context

The finance analytics module focuses on **revenue tracking and financial performance reporting** for key customers and markets.
The objective is to enable stakeholders to monitor **gross sales trends, fiscal year performance, product-level revenue contribution,and market performance indicators** using standardized and reusable SQL reports.

## 🎯 Problem Statements Covered

### 1. Product-wise Sales Report (Fiscal Year)
Generate a **product-level sales report aggregated monthly** for a given customer and fiscal year to analyze individual product performance, quantities sold, and gross revenue contribution.

### 2. Monthly Gross Sales Report (Customer-Level)
Generate an **aggregate monthly gross sales report** for a specific customer (e.g., Croma India) to track monthly revenue contribution and support customer relationship management.

### 3. Yearly Gross Sales Report (Fiscal Year)
Produce a **year-wise gross sales summary** for a customer, highlighting total gross sales per fiscal year to evaluate long-term revenue trends.

### 4. Market Performance Badge Analysis
Assign **market badges** based on **total quantity sold** in a fiscal year to identify high-volume markets and support quick market-level performance evaluation.

### 4. Financial Calendar & Fiscal Year Handling
Implement **reusable fiscal year logic** using SQL functions to ensure all financial reports align with business accounting periods instead of calendar years.

### 5. Reusable Financial Reporting Logic
Develop **stored procedures** for recurring financial reports to ensure scalability, consistent and reusability financial analysis across reporting cycles.

## 🧠 Key Financial Metrics

- Gross Sales Amount
- Sold Quantity
- Product-Level Revenue
- Fiscal Year Sales Trends
- Monthly Sales Trends
- Market Performance Indicators (Gold or Silver Badges) 

## 🛠️ Key Concepts & Techniques Used

- SQL queries are structured for **financial reporting accuracy and consistency**
- Applied **aggregations and grouping** to calculate monthly and yearly gross sales
- Used **custom fiscal year logic** using SQL functions to align reports with business accounting periods
- Encapsulated reusable business logic using **stored procedures (get_)** for customer-level and market-badges reports
- Performed **product-level and customer-level analysis** to track revenue and sales trends
- Implemented **market-level performance indicators** based on total quantity sold using business rules
- Query outputs are designed to be **BI-tool** ready for Power BI and Excel reporting
