SELECT 
    s.date,
    SUM(ROUND(s.sold_quantity * g.gross_price, 2)) AS monthly_sales
FROM
    fact_sales_monthly s
        JOIN
    fact_gross_price g ON g.product_code = s.product_code
        AND g.fiscal_year = GET_FISCAL_YEAR(s.date)
WHERE
    customer_code = 90002002
GROUP BY s.date;