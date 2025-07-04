create database DSA_project

create table
select *from [dbo].[KMS Sql Case Study]

----Question 1:product category with the highest sales----

select top 1 product_category,sum(sales) as total_sales
from [dbo].[KMS Sql Case Study]
group by product_category
order by total_sales DESC

-----Question 2  Top 3 by Region----

select top 3 Region,sum(sales) as total_sales
from [dbo].[KMS Sql Case Study]
group by Region
order by total_sales DESC


select top 3 Region,sum(sales) as total_sales
from [dbo].[KMS Sql Case Study]
group by Region
order by total_sales asc


---Question 3 Total appliances sales in Ontario----


SELECT SUM(Sales) AS Total_Appliance_Sales_Ontario
FROM [dbo].[KMS Sql Case Study]
WHERE Product_Sub_Category = 'Appliances'
  AND Province = 'Ontario';



-----Question 4: What to do to increase the revenue from the bottom 10 customers----

select top 10 customer_name,sum(sales) as Revenue
from [dbo].[KMS Sql Case Study]
group by customer_name
order by Revenue asc

-----Qustion 5. Most shipping cost using which shipping method?-----


sELECT top 1 ship_mode, SUM (shipping_cost) AS total_shipping_cost
FROM [dbo].[KMS Sql Case Study]
GROUP BY ship_mode 
ORDER BY total_shipping_cost DESC


----6.The most valuable customers, and the products or services typically purchase---- 

SELECT TOP 5 Customer_Name, Product_Name, SUM(SALES) AS VALUABLE_CUSTOMERS
FROM [KMS Sql Case Study]
group by Customer_Name, Product_Name
order by VALUABLE_CUSTOMERS DESC

----Questio 7.Small business customer with the highest sales----

SELECT top 1 Customer_name, SUM(Sales) AS Total_Sales
FROM [dbo].[KMS Sql Case Study]
where Customer_Segment = 'small business'
GROUP BY Customer_name
ORDER BY Total_Sales DESC

----Question 8. Which Corporate Customer placed the most number of orders in 2009 – 2012?

select top 1 Customer_Name, count(Order_ID) as Number_of_Order 
from [KMS Sql Case Study]
where Customer_Segment = 'Corporate' AND
Order_Date between '2009-01-01' and '2012-12-31'
group by Customer_Name
order by Number_of_Order desc

----Question 9 The most profitable consumer customer----  

select top 1 Customer_Name, sum(profit) as [Most Profitable] 
from [KMS Sql Case Study]
where Customer_Segment = 'Consumer'
group by Customer_Name
order by [Most Profitable] desc

----Question 10. Which customer returned items, and what segment do they belong to? 

select  Order_Status .Order_ID, [KMS Sql Case Study].Customer_Name, 
[KMS Sql Case Study].Customer_Segment, Order_status.Status
from [KMS Sql Case Study]
join Order_Status
on
[KMS Sql Case Study].Order_ID = Order_Status .Order_ID

select *from [dbo].[KMS Sql Case Study]

select *from [dbo].[Order_Status (1)]

drop table [dbo].[Order_Status (1)]

select *from [dbo].[Order_Status]

------ QUESTION 11.

select Order_Priority, Ship_Mode,
Count(Order_ID) as Total_Delivery,
ROUND(SUM(Sales - Profit),2) AS EstimatedShippingCost,
AVG(DATEDIFF(day, [Order_Date], [Ship_Date])) AS AvgShipDays
from [KMS Sql Case Study]
group by Order_Priority, Ship_Mode
