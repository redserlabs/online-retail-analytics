-- Top Products by Revenue
-- Identify the best-selling products by total revenue and quantity

SELECT
    StockCode,
    Description,
    SUM(Quantity)                AS total_qty_sold,
    ROUND(SUM(Revenue), 2)      AS total_revenue,
    COUNT(DISTINCT InvoiceNo)   AS times_ordered,
    COUNT(DISTINCT CustomerID)  AS unique_buyers,
    ROUND(AVG(UnitPrice), 2)    AS avg_unit_price
FROM retail
GROUP BY StockCode, Description
ORDER BY total_revenue DESC
LIMIT 15;
