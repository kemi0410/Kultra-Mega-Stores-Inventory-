# Kultra-Mega-Stores-Inventory-
## Analyzing the datasets using SQL Query
### Project Overview
   This Project explores and analyzes Product and Customer order datasets using SQL. It includes presenting key insights and findings 
   ### Goals
   - Set up Customer and Product Order Tables
   - Query for Top Product Category, Most Valuable Customers
   - Generate insights to improve product order and Revenue
### Project Structure
   - `SQL-query/`: All SQL Script
   - `Data/`: Raw data in CSV format
   - `Reports/`: final PDF report with Findings
### Key SQL Task
   - Joins between Customers and orders
   - Aggregate functions( `SUM`, `COUNT`, `AVG`, `ROUND`)
   - Grouping and ordering
### Tools Used
   - SQL Management Studio
   - Excel( for initial data inspection)
### Sample Query
  ```SQL
  SELECT  Order_Status .Order_ID, [KMS Sql Case Study].Customer_Name, 
  [KMS Sql Case Study].Customer_Segment, Order_status.Status
  FROM [KMS Sql Case Study]
  JOIN Order_Status
  ON
  [KMS Sql Case Study].Order_ID = Order_Status .Order_ID
  ```
    
