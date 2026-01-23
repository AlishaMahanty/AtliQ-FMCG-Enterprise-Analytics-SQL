CREATE DEFINER=`root`@`localhost` PROCEDURE `get_monthly_gross_sales_for_customer`(
	in_customer_codes TEXT
)
BEGIN
	SELECT 
		s.date,
		SUM(ROUND(s.sold_quantity * g.gross_price, 2)) AS monthly_sales
	FROM fact_sales_monthly s
	JOIN fact_gross_price g
		ON g.product_code = s.product_code
		AND g.fiscal_year = GET_FISCAL_YEAR(s.date)
	WHERE 
		FIND_IN_SET(s.customer_code, in_customer_codes) > 0
	GROUP BY date;
END