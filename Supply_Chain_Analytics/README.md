# 🚚 Supply Chain Analytics

## 📌 Business Context

The Supply Chain Analytics module focuses on demand planning and forecast performance evaluation across customers and markets.
The objective is to help business users assess how accurately demand forecasts align with actual sales, enabling better inventory planning and supply chain decision-making.

## 🎯 Problem Statements Covered

### 1. Forecast Accuracy Report (Customer-Level)
Generate an aggregate forecast accuracy report for all customers for a given fiscal year to evaluate how closely forecasted demand matches actual sales.

### 2. Actual vs Forecast Quantity Comparison
Compare total sold quantity against total forecast quantity to identify over-forecasting and under-forecasting patterns.

### 3. Forecast Error Analysis
Calculate net error and absolute error to measure demand variance and forecasting bias across customers and markets.

### 4. Forecast Accuracy Percentage Calculation
Compute forecast accuracy % using standardized formulas to provide a clear and comparable KPI for demand planning performance.

### 5. Reusable Supply Chain Reporting Logic
Build stored procedures to generate forecast accuracy reports for any fiscal year, ensuring reusability and consistency in supply chain analysis.

## 🧠 Key Supply Chain Metrics

- Total Sold Quantity
- Total Forecast Quantity
- Net Error
- Absolute Error
- Forecast Accuracy %

## 🛠️ Implementation Notes

- Actual and forecast data are combined using a fact actual vs estimate table (fact_act_est_table)
- Forecast accuracy logic is encapsulated in stored procedures (get_) for reuse
- Queries are designed to support planning, inventory, and supply chain review meetings
- Query output datasets are developed to be BI-tool ready (Power BI / Excel)
