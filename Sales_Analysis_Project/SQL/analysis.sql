--SQL коды в ппроекте 


-- 1. Total Sales
SELECT
    SUM(sales) AS total_sales
FROM SampleSuperstore;


-- 2. Total Profit
SELECT
    SUM(profit) AS total_profit
FROM SampleSuperstore;


-- 3. Total Orders
SELECT
    COUNT(DISTINCT order_id) AS total_orders
FROM SampleSuperstore;


-- 4. Total Customers
SELECT
    COUNT(DISTINCT customer_id) AS total_customers
FROM SampleSuperstore;


-- 5. Sales by Category
SELECT
    category,
    SUM(sales) AS total_sales
FROM SampleSuperstore
GROUP BY category
ORDER BY total_sales DESC;


-- 6. Sales by Region
SELECT
    region,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM SampleSuperstore
GROUP BY region
ORDER BY total_sales DESC;


-- 7. Top 10 Products
SELECT
    product_name,
    SUM(quantity) AS total_quantity
FROM SampleSuperstore
GROUP BY product_name
ORDER BY total_quantity DESC
LIMIT 10;


-- 8. Top 10 Profitable Products
SELECT
    product_name,
    SUM(profit) AS total_profit
FROM SampleSuperstore
GROUP BY product_name
ORDER BY total_profit DESC
LIMIT 10;


-- 9. Monthly Sales
SELECT
    strftime('%Y-%m', order_date) AS month,
    SUM(sales) AS total_sales
FROM SampleSuperstore
GROUP BY month
ORDER BY month;


-- 10. Top 10 Customers
SELECT
    customer_name,
    SUM(sales) AS total_sales
FROM SampleSuperstore
GROUP BY customer_name
ORDER BY total_sales DESC
LIMIT 10;


-- 11. Profit Margin
SELECT
    ROUND(
        SUM(profit) / SUM(sales) * 100,
        2
    ) AS profit_margin
FROM SampleSuperstore;


-- 12. Average Order Value
SELECT
    ROUND(
        SUM(sales) / COUNT(DISTINCT order_id),
        2
    ) AS average_order_value
FROM SampleSuperstore;