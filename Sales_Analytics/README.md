# 📈 Sales Analytics

## 📌 Business Context

The Sales Analytics module focuses on evaluating sales performance across markets, products, customers, and regions.
The objective is to provide stakeholders with a comparative and ranking-based view of sales outcomes to identify top-performing segments and support strategic sales decisions.

## 🎯 Problem Statements Covered

### 1. Top Markets by Net Sales
Generate a ranked report showing the top markets by net sales for a given fiscal year to understand which markets contribute the most to overall sales performance.

### 2. Top Products by Net Sales
Identify the top-selling products based on net sales to analyze product performance and highest revenue drivers.

### 3. Top Customers by Net Sales
Generate a ranked list of customers based on net sales to analyze customer contribution and sales dependency.

### 4. Market, Product, and Customer Performance Overview
Build a consolidated report that highlights top markets, products, and customers for a given fiscal year to provides a quick, high-level view of overall sales performance.

### 5. Net Sales Contribution Analysis
Calculate net sales contribution percentage by customers and regions to understand sales distribution and identify concentration risk.

### 6. Regional Sales Share Analysis
Analyze net sales share by region (APAC, EU, LATAM, NA, etc.) to compare performance across regions and support regional sales planning.

### 7. Market Ranking within Regions
Retrieve the top N markets within each region based on gross sales to identify the strongest markets in every geography.

### 8. Division-wise Product Ranking by Quantity Sold
Rank top N products within each division based on quantity sold to identify high-volume products driving overall sales.

## 🧠 Key Sales Metrics

- Net Sales
- Gross Sales
- Sales Contribution %
- Market Share %
- Quantity Sold
- Market, Product & Customer Rankings

## 🛠️ Key Concepts & Techniques Used

- Used **window functions (RANK, DENSE_RANK)** for market, product, customer, and regional rankings
- Applied **aggregations** and **grouping** to calculate gross sales, net sales, quantities, and contributions
- Built layered sales calculations from **gross sales** to **net sales** using discount logic
- Implemented **views** to centralize and reuse sales calculation logic
- Created parameterized **stored procedures (get_)** for Top-N and fiscal-year based analysis
- Calculated **percentage contribution** metrics for customers and regions using **window function (OVER)**
- Performed region and division-level analysis for deeper sales segmentation
- Designed outputs to be **BI-ready** for **Power BI** and **Excel** reporting
