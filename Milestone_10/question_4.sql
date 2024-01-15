WITH cte AS (SELECT
        s.store_type AS store_type,
        ROUND(CAST(SUM(o.product_quantity*p.sale_price) AS numeric), 2) AS total_sales,
        COUNT(o.order_date_uuid) AS total_orders
    FROM orders AS o
    JOIN dim_product AS p
    ON p.product_code = o.product_code
    JOIN dim_store AS s
    ON s.store_code = o.store_code
    GROUP BY s.store_type)
,
grand_total_sales AS
(SELECT
    SUM(cte.total_sales) AS grand_total_sales
    FROM cte)
SELECT
    cte.store_type,
    cte.total_sales,
    ROUND((cte.total_sales/(SELECT grand_total_sales FROM grand_total_sales))*100::numeric,2) AS sales_percent,
    cte.total_orders
FROM cte