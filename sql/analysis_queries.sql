-- 1. Total sales
SELECT SUM(sales) AS total_sales
FROM fact_sales;

-- 2. Total sales by store
SELECT
    store_id,
    SUM(sales) AS total_sales
FROM fact_sales
GROUP BY store_id
ORDER BY total_sales DESC;

-- 3. Total sales by product
SELECT
    item_id,
    SUM(sales) AS total_sales
FROM fact_sales
GROUP BY item_id
ORDER BY total_sales DESC;

-- 4. Total sales by date
SELECT
    date,
    SUM(sales) AS total_sales
FROM fact_sales
GROUP BY date
ORDER BY date;

-- 5. Average selling price by store
SELECT
    store_id,
    AVG(sell_price) AS average_price
FROM fact_prices
GROUP BY store_id
ORDER BY average_price DESC;

-- These queries will support:
-- 1. Sales analysis
-- 2. Store performance analysis
-- 3. Product performance analysis
-- 4. Time-series analysis
-- 5. Price analysis
-- 6. Future dashboard development