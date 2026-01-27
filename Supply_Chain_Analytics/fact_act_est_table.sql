# create fact_act_est table

CREATE TABLE fact_act_est
(
	SELECT 
		s.date AS date,
        s.fiscal_year AS fiscal_year,
		s.product_code AS product_code,
		s.customer_code AS customer_code,
		s.sold_quantity AS sold_quantity,
        f.forecast_quantity AS forecast_quantity
	FROM
		fact_sales_monthly s
			LEFT JOIN
		fact_forecast_monthly f 
			USING (date , customer_code , product_code)
)	
UNION
(
	SELECT 
		f.date AS date,
        f.fiscal_year AS fiscal_year,
		f.product_code AS product_code,
		f.customer_code AS customer_code,
		s.sold_quantity AS sold_quantity,
        f.forecast_quantity AS forecast_quantity
	FROM
		fact_forecast_monthly f 
			LEFT JOIN
		fact_sales_monthly s 
			USING (date , customer_code , product_code)
);


# handling null values in sold_quantity and forecast_quantity
# sold_quantity
UPDATE fact_act_est
SET sold_quantity = 0
where sold_quantity IS NULL;

# forecast_quantity
UPDATE fact_act_est
SET forecast_quantity = 0
WHERE forecast_quantity IS NULL;

SET SQL_SAFE_UPDATES = 0;