SELECT 
    s.store_type,
    ROUND(CAST(SUM(o.product_quantity*p.sale_price) AS numeric), 2) AS revenue
FROM orders AS o
JOIN 
    dim_product AS p
ON p.product_code = o.product_code
JOIN 
    dim_store AS s
ON s.store_code = o.store_code
WHERE 
    EXTRACT(YEAR FROM o.order_date::date) = '2022' AND
    s.country = 'Germany'
GROUP BY s.store_type
ORDER BY revenue DESC
LIMIT 1;