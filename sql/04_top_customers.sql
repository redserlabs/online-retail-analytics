-- Top Customers & Revenue Concentration
-- Understand how revenue is distributed across the customer base

-- Top 20 customers by revenue
SELECT
    CustomerID,
    ROUND(SUM(Revenue), 2)        AS total_revenue,
    COUNT(DISTINCT InvoiceNo)     AS total_orders,
    SUM(Quantity)                 AS total_items,
    MIN(InvoiceDate)              AS first_purchase,
    MAX(InvoiceDate)              AS last_purchase
FROM retail
GROUP BY CustomerID
ORDER BY total_revenue DESC
LIMIT 20;

-- Revenue share of top 10% vs rest
WITH customer_revenue AS (
    SELECT
        CustomerID,
        SUM(Revenue) AS total_revenue
    FROM retail
    GROUP BY CustomerID
),
ranked AS (
    SELECT
        *,
        NTILE(10) OVER (ORDER BY total_revenue DESC) AS decile
    FROM customer_revenue
)
SELECT
    CASE WHEN decile = 1 THEN 'Top 10%' ELSE 'Other 90%' END  AS segment,
    COUNT(*)                                                    AS num_customers,
    ROUND(SUM(total_revenue), 2)                                AS segment_revenue,
    ROUND(SUM(total_revenue) * 100.0 / (SELECT SUM(total_revenue) FROM customer_revenue), 1) AS pct_of_total
FROM ranked
GROUP BY CASE WHEN decile = 1 THEN 'Top 10%' ELSE 'Other 90%' END
ORDER BY segment_revenue DESC;
