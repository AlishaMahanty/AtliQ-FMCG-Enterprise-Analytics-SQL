# customers net_sales contribution %
WITH cte1 AS (
SELECT 
    customer,
    ROUND(SUM(net_sales) / 1000000, 2) AS net_sales_mln
FROM
    net_sales n
        JOIN
    dim_customer c ON n.customer_code = c.customer_code
WHERE
    n.fiscal_year = 2021
GROUP BY customer
)
SELECT 
	*,
	net_sales_mln * 100 / SUM(net_sales_mln) OVER() AS pct
FROM cte1
ORDER BY net_sales_mln DESC;
