# top 2 markets per region by gross sales amount in fy 2021
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
		fiscal_year = 2021
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
		drank <= 2;
