-- Purchase Frequency Analysis
-- Understand repeat buying behavior

-- Distribution of purchase frequency
SELECT
    order_count,
    COUNT(*)    AS num_customers
FROM (
    SELECT
        CustomerID,
        COUNT(DISTINCT InvoiceNo) AS order_count
    FROM retail
    GROUP BY CustomerID
) sub
GROUP BY order_count
ORDER BY order_count;

-- One-time vs repeat buyers
SELECT
    CASE
        WHEN order_count = 1 THEN 'One-time buyer'
        WHEN order_count BETWEEN 2 AND 5 THEN 'Occasional (2-5 orders)'
        WHEN order_count BETWEEN 6 AND 10 THEN 'Regular (6-10 orders)'
        ELSE 'Loyal (10+ orders)'
    END                          AS customer_segment,
    COUNT(*)                     AS num_customers,
    ROUND(SUM(total_revenue), 2) AS segment_revenue
FROM (
    SELECT
        CustomerID,
        COUNT(DISTINCT InvoiceNo) AS order_count,
        SUM(Revenue)              AS total_revenue
    FROM retail
    GROUP BY CustomerID
) sub
GROUP BY customer_segment
ORDER BY num_customers DESC;
