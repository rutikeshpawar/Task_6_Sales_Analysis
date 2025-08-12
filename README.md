# Sales Trend Analysis Using Aggregations  

## 🎯 Objective  
The objective of this project is to **analyze monthly revenue and order volume** from a sales dataset using SQL aggregation functions. The analysis focuses on grouping data by month/year, calculating total revenue, and determining order volume trends.  

## 📂 Dataset  
- **Name:** US Regional Sales Data
- **Rows:** 999 (example count; update with your exact number)  
- **Columns:** 17  

## 🛠 Tools and Libraries  
- **Tools:** MySQL  
- **Libraries:**  
  - SQL built-in functions: `EXTRACT()`, `SUM()`, `COUNT(DISTINCT)`, `GROUP BY`, `ORDER BY`  
  - MySQL date conversion: `STR_TO_DATE()`  

## 📋 Steps Followed  
1. **Database Setup**  
   - Created a new database `regionalsales` in MySQL.  
   - Designed the table `US_Regional_Sales_Data` with clean column names.  
2. **Data Import**  
   - Cleaned and imported CSV into MySQL.  
   - Ensured dates were converted from text to proper date format using `STR_TO_DATE()`.  
3. **Exploratory Queries**  
   - Extracted month and year from `OrderDate` using `EXTRACT()`.  
   - Grouped results by year and month.  
4. **Aggregations**  
   - Calculated monthly revenue using `SUM(TotalAmount)`.  
   - Counted unique orders per month using `COUNT(DISTINCT OrderNumber)`.  
5. **Sorting & Filtering**  
   - Ordered results by revenue and by date.  
   - Limited results to specific time periods for focused analysis.  
6. **Export**  
   - Exported final results table as `.csv` for sharing in GitHub repository.  

## 📊 Key Insights  
- Identified months with **highest revenue** and **order volume**.  
- Observed seasonal trends in sales.  
- Highlighted top months contributing to the majority of total revenue.  

## 📦 Deliverables  
- **`US_Regional_Sales_Data.sql`** – SQL script for table creation and queries.  
- **`query_results.csv`** – Final table of monthly revenue and order volume.  

  
## 👤 Author  
**Rutikesh Pawar**  
