# Supply Chain & Inventory Management Dashboard

## End-to-End MySQL + Power BI Solution for Real-Time Supply Chain Visibility

A complete Supply Chain & Inventory Management Analytics solution built using **MySQL** as the backend database and **Microsoft Power BI** for business intelligence, reporting, and visualization.

---

## 👨‍💼 Prepared By

**Boniface Anuforo**

Power BI Developer | Data Analyst | Business Analyst | Supply Chain Analyst | Inventory Analyst

**GitHub:** https://github.com/bcanuforo

**LinkedIn:** https://linkedin.com/in/boniface-anuforo-34b935219

---

## 🚀 Live Interactive Dashboard

**👉 [View Interactive Supply Chain Dashboard](https://app.powerbi.com/groups/a3052749-2d59-49d4-b75a-d06280187d9b/reports/a034977e-d1cf-4ca7-a36a-216e9a5ace3b/47d9fe1c0d4772d593c3?experience=power-bi)**

*Note: You may need to sign in with a Microsoft account to access the full interactive report.*

---

## 📌 Project Overview

This project demonstrates the design and implementation of an end-to-end Supply Chain and Inventory Management solution.

The solution integrates:

* MySQL Relational Database
* Data Modeling
* ETL & Data Transformation
* Power BI Dashboard Development
* KPI Monitoring
* Executive Reporting

The dashboard enables stakeholders to monitor inventory levels, shipment performance, purchasing activities, sales trends, and warehouse operations in real time.

---

## 🏗️ Technology Stack

| Technology  | Purpose                             |
| ----------- | ----------------------------------- |
| MySQL       | Database & Data Storage             |
| SQL         | Data Querying & Transformation      |
| Power BI    | Dashboard & Reporting               |
| DAX         | KPI Calculations                    |
| Power Query | Data Preparation                    |
| GitHub      | Version Control & Portfolio Hosting |

---

## 🗄️ MySQL Database Schema

The database was designed using a relational model that supports:

* Product Management
* Inventory Tracking
* Warehouse Operations
* Supplier Management
* Purchase Orders
* Sales Orders
* Shipment Monitoring

### Database Tables

#### Dimension Tables

* Products
* Suppliers
* Warehouses

#### Fact Tables

* Inventory
* Transactions
* Purchase Orders
* Sales Orders
* Shipments

### Database Schema (EER Diagram)

![MySQL Schema](images/mysql-schema.png)

---

## 📊 Power BI Data Model

The Power BI semantic model follows a star-schema design to support efficient filtering, aggregation, and KPI calculations.

### Core Relationships

* Products → Inventory
* Products → Transactions
* Products → Purchase Orders
* Products → Sales Orders
* Products → Shipments
* Warehouses → Inventory
* Date → Transactions

### Power BI Data Model

![Power BI Data Model](images/powerbi-model.png)

---



## ✨ Key Features

* Real-Time Inventory Value Tracking
* On-Time Delivery Monitoring
* Purchase vs Sales Analysis
* Shipment Status Tracking
* Low Stock Alerts
* Reorder Point Monitoring
* Category-Wise Inventory Distribution
* Top Products by Stock Value
* Interactive Filtering & Drill-Down
* Fully Refreshable Dashboard

---

## 📈 Dashboard Highlights (June 2026)

| KPI                   | Value          |
| --------------------- | -------------- |
| Total Inventory Value | ₦13.07 Million |
| On-Time Delivery Rate | 100%           |
| Inventory Turnover    | 3.6x           |
| Average Lead Time     | 3.4 Days       |
| Low Stock Items       | 0              |

---

## 📸 Dashboard Screenshot

### Executive Dashboard

![Dashboard Screenshort](dashboard-screenshot.png)

---

## 📐 Sample DAX Measures

### Inventory Turnover

```DAX
Inventory Turnover =
DIVIDE(
    [Total Sales],
    [Average Inventory]
)
```

### On-Time Delivery Rate

```DAX
On Time Delivery % =
DIVIDE(
    [On Time Deliveries],
    [Total Deliveries]
)
```

### Current Stock

```DAX
Current Stock =
SUM(Inventory[quantity])
```

---

## 🔍 Key Business Insights

* Achieved 100% on-time delivery performance.
* Maintained healthy inventory turnover at 3.6x.
* No products currently below reorder threshold.
* Average supplier lead time remained below four days.
* Inventory distribution is balanced across product categories.

---

## 📁 Project Structure

```text
supply-chain-inventory-dashboard/
│
├── README.md
├── LICENSE
│
├── sql/
│   ├── 01_schema.sql
│   └── 02_sample_data.sql
│
├── reports/
│   └── Supply_Chain_Executive_Report.pdf
│
├── images/
│   ├── dashboard-screenshot.png
│   ├── powerbi-model.png
│   ├── mysql-schema.png
│   └── executive-cover.png
```

---

## ⚙️ How to Run This Project

### 1. Database Setup

```sql
CREATE DATABASE supply_chain_db;
USE supply_chain_db;

SOURCE 01_schema.sql;
SOURCE 02_sample_data.sql;
```

### 2. Power BI

1. Open the PBIX file.
2. Update MySQL connection settings.
3. Refresh the dataset.
4. Review dashboard visuals.

### 3. Executive Report

Open:

```text
Supply_Chain_Executive_Report.pdf
```

---

## 🏆 Key Achievements

* Designed and implemented a relational database in MySQL.
* Built an interactive Power BI dashboard.
* Created advanced DAX measures and KPIs.
* Developed a professional executive report.
* Delivered an end-to-end business intelligence solution.

---

## 🔮 Future Enhancements

* Deploy to Power BI Service
* Configure Scheduled Refresh
* Add Demand Forecasting
* Build Supplier Performance Analytics
* Implement Row-Level Security (RLS)
* Integrate Real-Time Data Sources

---

## 📬 Contact

**Boniface Anuforo**

GitHub: https://github.com/bcanuforo

LinkedIn: https://linkedin.com/in/boniface-anuforo-34b935219

---

⭐ If you found this project useful, please consider starring the repository.
