SELECT 
    EXTRACT(MONTH FROM o.order_date::date) AS month,
    ROUND(CAST(SUM(o.product_quantity*p.sale_price) AS numeric), 2) AS revenue
FROM orders AS o
JOIN 
    dim_product AS p
ON p.product_code = o.product_code
WHERE 
    EXTRACT(YEAR FROM o.order_date::date) = '2022'
GROUP BY month
ORDER BY revenue DESC
LIMIT 1;