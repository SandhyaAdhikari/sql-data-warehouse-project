🏗️ SQL Data Warehouse & Analytics Project

A modern data warehouse built with SQL Server — featuring layered ETL pipelines, dimensional data modeling, and business analytics.
---
📌 Overview
This project demonstrates the end-to-end process of designing and building a production-style data warehouse using SQL Server. It is structured as a portfolio project to showcase skills in data engineering, data modeling, and SQL analytics.
The warehouse ingests raw data from ERP and CRM source systems (CSV files), processes it through a multi-layer architecture, and surfaces clean, analytics-ready data for business reporting.


🏛️ Data Architecture
This project follows the Medallion Architecture — a three-layer design pattern that progressively refines data quality:
Source (CSV Files)
       │
       ▼
┌─────────────┐     ┌─────────────┐     ┌─────────────┐
│   🥉 BRONZE  │────▶│   🥈 SILVER  │────▶│   🥇 GOLD    │
│  Raw Ingest  │     │  Cleansed   │     │  Star Schema │
└─────────────┘     └─────────────┘     └─────────────┘
LayerPurposeBronzeStores raw data as-is from source CSV files — no transformations appliedSilverCleanses, standardizes, and deduplicates the raw dataGoldDelivers business-ready fact and dimension tables in a star schema for reporting

##  Tools & Technologies

- SQL Server Express  
- SQL Server Management Studio (SSMS)  
- SQL (T-SQL)  
- CSV files (data source)  
- Git & GitHub  

---

##  Project Requirements

### Data Warehouse Development

**Objective:**  
Build a data warehouse using SQL Server to analyze sales data.

**Key Steps:**
- Import data from ERP and CRM systems (CSV files)  
- Clean and transform the data  
- Combine datasets into a unified model  
- Create tables optimized for analytics  

---

### Analytics & Reporting

**Objective:**  
Generate insights using SQL queries.

**Focus Areas:**
- Customer behavior  
- Product performance  
- Sales trends  

---

##  Repository Structure
