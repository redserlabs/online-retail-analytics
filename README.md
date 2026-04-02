# Online Retail Analytics

End-to-end data analysis of a UK-based online retail dataset, from raw data cleaning to business insights and dashboard delivery.

## Context

A UK-based online retailer sells gifts and homewares to both individual customers and wholesalers across 38 countries. The management team needs to understand revenue drivers, customer behavior, and product performance to guide their 2024 commercial strategy.

This project answers 6 key business questions using Python, SQL, and a BI dashboard.

## Business Questions

1. **What is the total revenue, and how does it trend over time?**
2. **Which products generate the most revenue?**
3. **Which countries perform best outside the UK?**
4. **What share of revenue comes from top customers?**
5. **What does the customer purchase frequency look like?**
6. **Are there seasonal patterns in sales?**

## Dataset

- **Source:** [UCI Machine Learning Repository — Online Retail](https://archive.ics.uci.edu/dataset/352/online+retail)
- **Records:** ~541,909 transactions (Dec 2010 — Dec 2011)
- **Fields:** InvoiceNo, StockCode, Description, Quantity, InvoiceDate, UnitPrice, CustomerID, Country

## Tools

| Step | Tool |
|------|------|
| Data cleaning & preparation | Python (pandas, numpy) |
| Exploratory analysis & visualization | Python (matplotlib, seaborn, plotly) |
| Business queries | SQL (DuckDB via Python) |
| Dashboard | Power BI / Tableau |

## Project Structure

```
online-retail-analytics/
├── README.md
├── requirements.txt
├── .gitignore
├── data/
│   ├── raw/                 ← original dataset (not tracked by git)
│   └── cleaned/             ← cleaned CSV export
├── notebooks/
│   └── 01_online_retail_eda.ipynb
├── sql/
│   ├── 01_revenue_kpis.sql
│   ├── 02_top_products.sql
│   ├── 03_country_analysis.sql
│   ├── 04_top_customers.sql
│   ├── 05_purchase_frequency.sql
│   └── 06_monthly_seasonality.sql
├── dashboard/
│   └── screenshots/         ← dashboard screenshots for README
└── outputs/
    └── cleaned_online_retail.csv
```

## How to Run

```bash
# Clone the repo
git clone https://github.com/redserlabs/online-retail-analytics.git
cd online-retail-analytics

# Install dependencies
pip install -r requirements.txt

# Download the dataset
# Go to https://archive.ics.uci.edu/dataset/352/online+retail
# Download "Online Retail.xlsx" and place it in data/raw/

# Run the notebook
jupyter notebook notebooks/01_online_retail_eda.ipynb
```

## Key Insights

> _Complete this section after running your analysis._

1. **Revenue:** ...
2. **Top products:** ...
3. **Top countries:** ...
4. **Customer concentration:** ...
5. **Purchase frequency:** ...
6. **Seasonality:** ...

## Recommendations

> _Complete this section with actionable takeaways._

---

**Author:** Reda Serhir — [LinkedIn](https://www.linkedin.com/in/reda-serhir-10a3112b8) · [GitHub](https://github.com/redserlabs)
