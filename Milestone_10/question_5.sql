SELECT 
    p.category,
    ROUND(CAST(SUM(p.sale_price-p.cost_price) AS numeric), 2) AS profit
FROM dim_product AS p
JOIN 
    orders AS o
ON o.product_code = p.product_code
JOIN 
    dim_store AS s
ON s.store_code = o.store_code
WHERE 
    EXTRACT(YEAR FROM o.order_date::date) = '2021' AND
    s.full_region = 'Wiltshire, UK'
GROUP BY p.category
ORDER BY profit DESC
LIMIT 1;