# Online Retail Analytics

End-to-end analysis of a UK-based online retail dataset using Python, SQL (DuckDB), and business-focused visualizations.

## Context

A UK-based online retailer sells gifts and homeware products to customers across 38 countries.  
The objective of this project is to identify the main revenue drivers, understand customer purchasing behavior, and highlight actionable business insights.

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

## Repository Structure

```text
online-retail-analytics/
├── README.md
├── requirements.txt
├── .gitignore
├── dashboard/
│   └── screenshots/
├── data/
│   ├── raw/        # local raw dataset folder (not tracked with data files)
│   └── cleaned/    # local cleaned exports folder (not tracked with csv files)
├── notebooks/
│   └── 01_online_retail_eda.ipynb
├── outputs/
│   └── .gitkeep
└── sql/
    ├── 01_revenue_kpis.sql
    ├── 02_top_products.sql
    ├── 03_country_analysis.sql
    ├── 04_top_customers.sql
    ├── 05_purchase_frequency.sql
    └── 06_monthly_seasonality.sql