# gross_sales
SELECT 
    s.date,
    s.fiscal_year,
    s.customer_code,
    c.customer,
    c.market,
    s.product_code,
    p.product,
    p.variant,
    s.sold_quantity,
    g.gross_price AS gross_price_per_item,
    ROUND(s.sold_quantity * g.gross_price, 2) AS gross_price_total
FROM
    fact_sales_monthly s
        JOIN
    dim_product p ON s.product_code = p.product_code
        JOIN
    dim_customer c ON s.customer_code = c.customer_code
        JOIN
    fact_gross_price g ON g.fiscal_year = s.fiscal_year
        AND g.product_code = s.product_code;