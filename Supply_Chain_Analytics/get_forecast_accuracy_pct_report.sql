CREATE DEFINER=`root`@`localhost` PROCEDURE `get_forecast_accuracy_pct`(
	in_fiscal_year INT
)
BEGIN
WITH forecast_error_table AS (
	SELECT 
		s.customer_code AS customer_code,
		c.customer AS customer_name,
		c.market AS market,
		SUM(s.sold_quantity) AS total_sold_qty,
		SUM(s.forecast_quantity) AS total_forecast_qty,
		SUM(s.forecast_quantity - s.sold_quantity) AS net_error,
		ROUND(SUM(s.forecast_quantity - s.sold_quantity) * 100 / SUM(s.forecast_quantity),
				1) AS net_error_pct,
		SUM(ABS(s.forecast_quantity - s.sold_quantity)) AS abs_error,
		ROUND(SUM(ABS(s.forecast_quantity - sold_quantity)) * 100 / SUM(s.forecast_quantity),
				2) AS abs_error_pct
	FROM
		fact_act_est s
			JOIN
		dim_customer c ON s.customer_code = c.customer_code
	WHERE
		s.fiscal_year = in_fiscal_year
	GROUP BY customer_code
)
SELECT 
    *,
    IF(abs_error_pct > 100,
        0,
        100.0 - abs_error_pct) AS forecast_accuracy_pct
FROM
    forecast_error_table
ORDER BY forecast_accuracy_pct DESC;
END