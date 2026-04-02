-- Seasonality Patterns
-- Identify peak days, hours, and months

-- Revenue by month
SELECT
    Month,
    ROUND(SUM(Revenue), 2)       AS revenue,
    COUNT(DISTINCT InvoiceNo)    AS orders
FROM retail
GROUP BY Month
ORDER BY Month;

-- Revenue by day of week
SELECT
    DayOfWeek,
    ROUND(SUM(Revenue), 2)       AS revenue,
    COUNT(DISTINCT InvoiceNo)    AS orders,
    ROUND(SUM(Revenue) / COUNT(DISTINCT InvoiceNo), 2) AS avg_order_value
FROM retail
GROUP BY DayOfWeek
ORDER BY revenue DESC;

-- Revenue by hour
SELECT
    Hour,
    ROUND(SUM(Revenue), 2)       AS revenue,
    COUNT(DISTINCT InvoiceNo)    AS orders
FROM retail
GROUP BY Hour
ORDER BY Hour;
