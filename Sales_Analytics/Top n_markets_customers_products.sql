# top markets
SELECT 
    market, ROUND(SUM(net_sales) / 1000000, 2) AS net_sales_mln
FROM
    gdb0041.net_sales
WHERE
    fiscal_year = 2021
GROUP BY market
ORDER BY net_sales_mln DESC
LIMIT 5;

# top customers
SELECT 
    c.customer,
    ROUND(SUM(net_sales) / 1000000, 2) AS net_sales_mln
FROM
    gdb0041.net_sales n
        JOIN
    dim_customer c ON n.customer_code = c.customer_code
WHERE
    fiscal_year = 2021
GROUP BY c.customer
ORDER BY net_sales_mln DESC
LIMIT 5;

# top products
SELECT 
    product,
    ROUND(SUM(net_sales) / 1000000, 2) AS net_sales_mln
FROM
    gdb0041.net_sales
WHERE
    fiscal_year = 2021
GROUP BY product
ORDER BY net_sales_mln DESC
LIMIT 5;