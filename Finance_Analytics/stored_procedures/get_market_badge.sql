CREATE DEFINER=`root`@`localhost` PROCEDURE `get_market_badge`(
	IN in_market VARCHAR(45),
	IN in_fiscal_year YEAR,
	OUT out_badge VARCHAR(45)
)
BEGIN
	DECLARE qty INT DEFAULT 0;
    
    # set default market to be India
	IF in_market = "" THEN
		SET in_market="India";
	END IF;
    
	# retrieve total sold quantity for a given market in a given year
	SELECT 
		SUM(sold_quantity) INTO qty
	FROM fact_sales_monthly s
	JOIN dim_customer c
		ON s.customer_code=c.customer_code
	WHERE 
		c.market=in_market
        AND get_fiscal_year(s.date)=in_fiscal_year
	GROUP BY c.market;
        
	# Determine Gold vs Silver market badge
	IF qty > 5000000 THEN
		SET out_badge = "Gold";
	ELSE
		SET out_badge = "Silver";
	END IF;
END