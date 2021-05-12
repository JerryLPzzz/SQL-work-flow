SELECT 
p.*,
c.*,
COALESCE (s.dealership_id, -1),
CASE WHEN p.base_msrp - s.sales_amount > 500 THEN 1 ELSE 0 END 
AS high_savings
FROM sales s 
INNER JOIN products p on s.product_id = p.product_id
INNER JOIN customers c on s.customer_id = c.customer_id
LEFT JOIN dealerships d on s.dealership_id = d.dealership_id;
