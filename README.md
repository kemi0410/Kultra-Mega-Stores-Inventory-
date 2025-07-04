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
### Insights
   - From this Question: What to do to increase the revenue from the bottom 10 customers?
   -  We are identifying low-performing customers in terms of sales contribution, and this tells us
   -  These 10 customers generate the least revenue, and they may be
       1. New customer with low purchase history
       2. Inactive Customers
       3. Small budget customers
       4. Dissatisfied Clients not returning for more business
   - Recommendation to increase revenue from the bottom 10 customers
       1. Account-based follow-up
       2. Loyalty Incentives
       3. Customer feedback collection
       4. Engagement Campaigns
       5. Customer segmentation and profiling
   ### Contact
      For questions and collaboration [ijeomahkemi@gmail.com](
          
          
    
   
    
