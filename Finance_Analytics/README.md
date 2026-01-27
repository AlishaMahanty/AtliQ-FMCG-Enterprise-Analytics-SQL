# 📊 Finance Analytics

## 📌 Business Context

The finance analytics module focuses on revenue tracking and financial performance reporting for key customers.
The objective is to enable stakeholders to monitor gross sales trends, fiscal year performance, and product-level revenue contribution using standardized and reusable SQL reports.

## 🎯 Problem Statements Covered

### 1. Product-wise Sales Report (Fiscal Year)
Generate a product-level sales report aggregated monthly for a given fiscal year to analyze individual product performance, quantities sold, and gross revenue contribution.

### 2. Monthly Gross Sales Report (Customer-Level)
Generate an aggregate monthly gross sales report for a specific customer (e.g., Croma India) to track monthly revenue contribution and support customer relationship management.

### 3. Yearly Gross Sales Report (Fiscal Year)
Produce a year-wise gross sales summary for a customer, highlighting total gross sales per fiscal year to evaluate long-term revenue trends.

### 4. Financial Calendar & Fiscal Year Handling
Implement reusable logic to derive custom fiscal years to ensure financial reports align with business accounting periods.

### 5. Reusable Financial Reporting Logic
Develop stored procedures for recurring financial reports to support scalability, consistent and reusability financial analysis across reporting cycles.

## 🧠 Key Financial Metrics

- Gross Sales Amount
- Sold Quantity
- Product-Level Revenue
- Fiscal Year Sales Trends
- Monthly Sales Trends

## 🛠️ Implementation Notes

- SQL queries are structured for financial reporting accuracy and consistency
- Stored procedures (get_) are used to encapsulate reusable business logic
- Query outputs are designed to be BI-tool ready (Power BI / Excel)
