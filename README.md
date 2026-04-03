# Online Retail Analytics

End-to-end analysis of a UK-based online retail dataset using Python, SQL (DuckDB), and business-focused visualizations.

## Context

A UK-based online retailer sells gifts and homeware products to customers across 38 countries.

The goal of this project is to identify the main revenue drivers, understand customer purchasing behavior, and extract actionable business insights from transaction data.

## Business Questions

1. What is the total revenue, and how does it trend over time?
2. Which products generate the most revenue?
3. Which countries perform best outside the UK?
4. What share of revenue comes from top customers?
5. What does customer purchase frequency look like?
6. Are there seasonality patterns in sales?

## Dataset

- **Source:** [UCI Machine Learning Repository — Online Retail](https://archive.ics.uci.edu/dataset/352/online+retail)
- **Records:** 541,909 transactions
- **Period:** December 2010 to December 2011
- **Fields:** InvoiceNo, StockCode, Description, Quantity, InvoiceDate, UnitPrice, CustomerID, Country

## Tools Used

- **Python:** pandas, numpy
- **Visualization:** matplotlib, seaborn, plotly
- **SQL:** DuckDB
- **Notebook environment:** Jupyter / VS Code

## Methodology

1. Load and inspect the raw dataset
2. Assess missing values and data quality issues
3. Clean the dataset by removing cancellations, null customer IDs, non-positive quantities and prices, and duplicates
4. Engineer new features such as revenue, month, day of week, and hour
5. Answer key business questions using SQL queries executed with DuckDB
6. Create business visualizations and export charts as PNG files

## Key Insights

- **Total revenue reached £8,887,208.89** over the 12-month period.
- Revenue generally increased through the year and **peaked in November 2011**.
- **February 2011** was the weakest month, while **December 2011 appears lower because it is a partial month**.
- Revenue is concentrated among a small number of products, led by **PAPER CRAFT, LITTLE BIRDIE**, **REGENCY CAKESTAND 3 TIER**, and **WHITE HANGING HEART T-LIGHT HOLDER**.
- The strongest international markets outside the UK are **Netherlands, EIRE, and Germany**.
- Revenue is highly concentrated among top customers: the **top 10% generate 61.4% of total revenue**, and the **top 20% generate 74.7%**.
- The customer base shows strong repeat behavior, with **65.6% of customers classified as repeat buyers**.
- The highest revenue day is **Thursday**, and the peak revenue hour is **12:00**.

## Recommendations

1. Focus retention efforts on high-value customers, since a small share of customers drives most revenue.
2. Prioritize commercial attention on the strongest international markets outside the UK, especially Netherlands, EIRE, and Germany.
3. Support top-performing products with better stock planning, pricing attention, and promotional visibility.
4. Align campaigns and operational planning with peak demand periods, especially around strong weekdays and midday sales peaks.

## Repository Structure

## Repository Structure

```text
online-retail-analytics/
├── README.md
├── requirements.txt
├── .gitignore
├── 01_data/
│   ├── raw/
│   │   └── README.md
│   └── cleaned/
│       └── README.md
├── 02_notebooks/
│   └── 01_online_retail_eda.ipynb
├── 03_sql/
│   ├── 01_revenue_kpis.sql
│   ├── 02_top_products.sql
│   ├── 03_country_analysis.sql
│   ├── 04_top_customers.sql
│   ├── 05_purchase_frequency.sql
│   └── 06_monthly_seasonality.sql
├── 04_dashboard/
│   ├── README.md
│   └── screenshots/
└── 05_outputs/
    └── README.md
