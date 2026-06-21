-- Total Revenue

SELECT ROUND(SUM(total_price), 2) AS total_revenue
FROM Pizza_Sales_Clean;

-- Total Orders

SELECT COUNT(DISTINCT order_id) AS total_orders
FROM Pizza_Sales_Clean;

-- Total Pizzas Sold

SELECT SUM(quantity) AS total_pizzas_sold
FROM Pizza_Sales_Clean;

-- Top Selling Pizzas

SELECT
    pizza_name,
    SUM(quantity) AS pizzas_sold
FROM Pizza_Sales_Clean
GROUP BY pizza_name
ORDER BY pizzas_sold DESC
LIMIT 10;

-- Revenue by Category

SELECT
    pizza_category,
    ROUND(SUM(total_price), 2) AS revenue
FROM Pizza_Sales_Clean
GROUP BY pizza_category
ORDER BY revenue DESC;

