# 📈 Sales Analytics

## 📌 Business Context

The Sales Analytics module focuses on evaluating sales performance across markets, products, customers, and regions.
The objective is to provide stakeholders with a comparative and ranking-based view of sales outcomes to identify top-performing segments and support strategic sales decisions.

## 🎯 Problem Statements Covered

### 1. Top Markets by Net Sales
Generate a ranked report of top markets by net sales for a given fiscal year to understand geographic sales performance.

### 2. Top Products by Net Sales
Identify top-selling products based on net sales to analyze product performance and revenue drivers.

### 3. Top Customers by Net Sales
Produce a ranked list of top customers by net sales to evaluate customer contribution and dependency.

### 4. Market, Product, and Customer Performance Overview
Generate a consolidated view of top markets, products, and customers for a given fiscal year to support holistic sales performance analysis.

### 5. Net Sales Contribution Analysis
Calculate net sales contribution (%) by customers and regions to understand sales distribution and concentration risk.

### 6. Regional Sales Share Analysis
Analyze net sales share by region (APAC, EU, LATAM, NA, etc.) to support region-wise sales strategy and performance review.

### 7. Market Ranking within Regions
Retrieve the top N markets in each region based on gross sales to compare regional market performance.

### 8. Division-wise Product Ranking by Quantity Sold
Rank top N products within each division based on quantity sold to identify high-volume products driving sales.

## 🧠 Key Sales Metrics

- Net Sales
- Gross Sales
- Sales Contribution %
- Quantity Sold
- Market, Product & Customer Rankings

## 🛠️ Implementation Notes

- Ranking logic is implemented using window functions and aggregations
- Reusable ranking queries are encapsulated in stored procedures (get_)
- View-based queries handle sales calculation layers (gross sales, net sales, discounts)
- Output datasets are structured to support BI dashboards and Excel analysis
