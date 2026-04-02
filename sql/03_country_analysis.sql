-- Country Performance (excluding United Kingdom)
-- Identify the strongest international markets

SELECT
    Country,
    ROUND(SUM(Revenue), 2)                                    AS total_revenue,
    COUNT(DISTINCT CustomerID)                                AS customers,
    COUNT(DISTINCT InvoiceNo)                                 AS orders,
    ROUND(SUM(Revenue) / COUNT(DISTINCT CustomerID), 2)       AS rev_per_customer,
    ROUND(SUM(Revenue) / COUNT(DISTINCT InvoiceNo), 2)        AS avg_order_value
FROM retail
WHERE Country != 'United Kingdom'
GROUP BY Country
ORDER BY total_revenue DESC
LIMIT 10;
