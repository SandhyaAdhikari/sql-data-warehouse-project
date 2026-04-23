# 🏗️ SQL Data Warehouse & Analytics Project

> A modern data warehouse built with SQL Server — featuring layered ETL pipelines, dimensional data modeling, and business analytics.

---

## 📌 Overview

This project demonstrates the end-to-end process of designing and building a production-style data warehouse using SQL Server. It is structured as a portfolio project to showcase skills in **data engineering**, **data modeling**, and **SQL analytics**.

The warehouse ingests raw data from ERP and CRM source systems (CSV files), processes it through a multi-layer architecture, and surfaces clean, analytics-ready data for business reporting.

---

## 🏛️ Data Architecture

This project follows the **Medallion Architecture** — a three-layer design pattern that progressively refines data quality:

```
Source (CSV Files)
       │
       ▼
┌─────────────┐     ┌─────────────┐     ┌─────────────┐
│   🥉 BRONZE  │────▶│   🥈 SILVER  │────▶│   🥇 GOLD    │
│  Raw Ingest  │     │  Cleansed   │     │  Star Schema │
└─────────────┘     └─────────────┘     └─────────────┘
```

| Layer | Purpose |
|-------|---------|
| **Bronze** | Stores raw data as-is from source CSV files — no transformations applied |
| **Silver** | Cleanses, standardizes, and deduplicates the raw data |
| **Gold** | Delivers business-ready fact and dimension tables in a star schema for reporting |

---

## 🔧 Tools & Technologies

| Category | Tool |
|----------|------|
| Database | SQL Server Express |
| IDE | SQL Server Management Studio (SSMS) |
| Language | T-SQL |
| Data Sources | CSV files (ERP & CRM exports) |
| Version Control | Git & GitHub |

---

## 🚀 What This Project Covers

### 1. Data Warehouse Development
- Imported data from simulated ERP and CRM systems (via CSV files)
- Built ETL pipelines across Bronze → Silver → Gold layers
- Cleaned and transformed raw data (nulls, duplicates, type casting, standardization)
- Designed a **star schema** with fact and dimension tables optimized for analytics

### 2. Analytics & Reporting
- Wrote SQL queries to surface key business metrics
- Analysis areas include:
  - **Customer behavior** — segmentation, purchase patterns, lifetime value
  - **Product performance** — top sellers, category trends, returns
  - **Sales trends** — revenue over time, regional performance, seasonality

---

## 📁 Repository Structure

```
sql-data-warehouse-project/
│
├── datasets/               # Raw source CSV files (ERP & CRM data)
│
├── docs/                   # Architecture diagrams and documentation
│
├── scripts/
│   ├── bronze/             # DDL and load scripts for the Bronze layer
│   ├── silver/             # Transformation and cleansing scripts
│   └── gold/               # Star schema views and fact/dim table scripts
│
├── tests/                  # Data quality checks and validation queries
│
└── README.md
```

---

## 🧠 Data Model (Gold Layer)

The Gold layer follows a **star schema** pattern:

```
                    ┌──────────────┐
                    │  dim_customer │
                    └──────┬───────┘
                           │
┌──────────────┐    ┌──────▼───────┐    ┌──────────────┐
│  dim_product  │───▶│  fact_sales  │◀───│   dim_date   │
└──────────────┘    └──────┬───────┘    └──────────────┘
                           │
                    ┌──────▼───────┐
                    │  dim_location │
                    └──────────────┘
```

---

## 🏁 Getting Started

1. **Clone the repository**
   ```bash
   git clone https://github.com/your-username/sql-data-warehouse-project.git
   ```

2. **Set up SQL Server Express** and open SSMS

3. **Run scripts in order:**
   ```
   scripts/bronze/ → scripts/silver/ → scripts/gold/
   ```

4. **Load the datasets** from the `datasets/` folder into the Bronze layer

5. **Run the analytics queries** from `scripts/gold/` to explore insights

---

## 📬 Contact

Feel free to connect or reach out if you have questions or feedback:

- **GitHub:** [your-username](https://github.com/your-username)
- **LinkedIn:** [your-linkedin](https://linkedin.com/in/your-profile)
