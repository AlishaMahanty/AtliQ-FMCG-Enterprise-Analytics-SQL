# net_invoice_sales & post_invoice_discounts
SELECT 
    s.date,
    s.fiscal_year,
    s.customer_code,
    s.market,
    s.product_code,
    s.product,
    s.variant,
    s.sold_quantity,
    s.gross_price_total,
    s.pre_invoice_discount_pct,
    s.gross_price_total - (s.pre_invoice_discount_pct * s.gross_price_total) AS net_invoice_sales,
    (po.discounts_pct + po.other_deductions_pct) AS post_invoice_discount_pct
FROM
    sales_pre_invoice_discount s
        JOIN
    fact_post_invoice_deductions po ON s.customer_code = po.customer_code
        AND s.product_code = po.product_code
        AND s.date = po.date;