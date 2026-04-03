-- Revenue KPIs
-- Overview metrics for the online retail business

-- Global KPIs
SELECT
    ROUND(SUM(Revenue), 2)                                  AS total_revenue,
    COUNT(DISTINCT InvoiceNo)                               AS total_orders,
    COUNT(DISTINCT CustomerID)                              AS total_customers,
    COUNT(DISTINCT StockCode)                               AS total_products,
    ROUND(SUM(Revenue) / COUNT(DISTINCT InvoiceNo), 2)      AS avg_order_value,
    ROUND(SUM(Revenue) / COUNT(DISTINCT CustomerID), 2)     AS revenue_per_customer
FROM retail;

-- Monthly revenue trend
SELECT
    YearMonth,
    ROUND(SUM(Revenue), 2)       AS revenue,
    COUNT(DISTINCT InvoiceNo)    AS orders,
    COUNT(DISTINCT CustomerID)   AS active_customers
FROM retail
GROUP BY YearMonth
ORDER BY YearMonth;
