-- Identify which customer type should company focus (by total sales only)
/*
SELECT c.customer_type,ROUND(SUM(s.total_amount),2) AS "total_sales"
FROM sales_orders s 
JOIN customers c ON c.customer_id = s.customer_id
GROUP BY c.customer_type
ORDER BY total_sales DESC;
*/ 

-- Identify which product category have highest margin 
/*
SELECT p.category, ROUND(SUM(s.total_amount * p.margin),2) AS profit
FROM sales_orders s 
JOIN products p 
	ON p.sku = s.sku
GROUP BY p.category
ORDER BY profit DESC
*/ 


-- I want to know each salesperson performance on each product category 
/*
SELECT c.salesperson, p.category, ROUND(SUM(s.total_amount * p.margin),2) AS total_profit
FROM sales_orders s JOIN products p ON p.sku = s.sku
	JOIN customers c ON c.customer_id = s.customer_id
GROUP BY c.salesperson, p.category
ORDER BY total_profit DESC
*/ 


-- I want to know which type of client bring me the most profit
/*
SELECT c.customer_type, ROUND(SUM(s.total_amount * p.margin),2) AS total_profit
FROM sales_orders s 
	JOIN customers c ON c.customer_id = s.customer_id
	JOIN products p ON p.sku = s.sku 
GROUP BY c.customer_type
ORDER BY total_profit DESC
*/ 

-- I want to know each salesperson's average sales value per order
/*
SELECT salesperson, ROUND(AVG(total_amount),2) AS Avg_Value_Per_Order
FROM sales_orders
GROUP BY salesperson
ORDER BY Avg_Value_Per_Order DESC
*/
