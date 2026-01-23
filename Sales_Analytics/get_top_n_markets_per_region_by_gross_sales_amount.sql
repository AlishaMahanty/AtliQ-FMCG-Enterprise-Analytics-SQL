CREATE DEFINER=`root`@`localhost` PROCEDURE `get_top_n_markets_per_region_by_gross_sales_amount`(
	in_fiscal_year INT,
    in_top_n INT
)
BEGIN
WITH cte1 AS(
	SELECT 
		c.market, 
		c.region, 
		ROUND(SUM(gross_price_total)/1000000,2) AS gross_sales_mln
	FROM
		gross_sales g
			JOIN
		dim_customer c 
			ON c.customer_code = g.customer_code
	WHERE
		fiscal_year = in_fiscal_year
	GROUP BY region, market
    ORDER BY gross_sales_mln DESC),
	cte2  AS(
	SELECT 
		*, 
		DENSE_RANK() OVER(PARTITION BY region ORDER BY gross_sales_mln DESC) AS drank
	FROM cte1)
	SELECT 
		*
	FROM
		cte2
	WHERE
		drank <= in_top_n;
END