# net_sales
SELECT 
    *,
    net_invoice_sales * (1 - post_invoice_discount_pct) AS net_sales
FROM
    sales_post_invoice_discount;