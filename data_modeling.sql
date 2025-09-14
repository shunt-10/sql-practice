SELECT
	SUM(Retail_Sales)
FROM
	(
    SELECT
		SUPPLIER
		,(`ITEM TYPE`)
		,ROUND(SUM(`RETAIL SALES`), 0) AS Retail_Sales
	FROM 
		local_schema.warehouse_and_retail_sales
	WHERE
		MONTH = 10
		-- AND ROUND(SUM(`RETAIL SALES`), 0) > '50'
	GROUP BY 
	SUPPLIER,
	`ITEM TYPE`
	ORDER BY
		Retail_Sales
	) AS SubQuery;
-- GROUP BY Retail_Sales;

DESCRIBE local_schema.warehouse_and_retail_sales

