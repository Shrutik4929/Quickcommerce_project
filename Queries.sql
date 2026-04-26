# Total orders and Revenue Overview
select count(Order_ID) as Total_orders,round(sum(order_value),2) as Total_revenue from quick_commerce;

# Company-wise Total Orders and Revenue Analysis
select Company,count(Order_Id) as Total_Orders,
round(sum(Order_Value),2) as Revenue from quick_commerce 
group by Company order by Revenue DESC;

# Performance Analysis of Discounted vs Non-Discounted Orders
select Discount_Applied,
    count(Order_ID) as Total_Orders,
    round(avg(Order_Value), 2) as Avg_Order_Value,
    round(avg(Customer_Rating), 2) as Avg_Rating
from quick_commerce
group by Discount_Applied;

select distinct city,avg(Delivery_Time_Min) from quick_commerce group by city;


-- Identifying high value orders
select Order_ID, Company, City, Order_Value
from quick_commerce
where Order_Value > (select AVG(Order_Value) from quick_commerce);


-- Identifying cities with slow deliveries
select City, ROUND(AVG(Delivery_Time_Min), 1) AS Avg_Delivery_Time
from quick_commerce
GROUP BY City
HAVING AVG(Delivery_Time_Min) > 16;


-- Calculating Revenue at Risk from poor service
select Company, ROUND(SUM(Order_Value), 2) AS Revenue_At_Risk
from quick_commerce
where Delivery_Time_Min > 20 AND Customer_Rating < 3.0
GROUP BY Company
ORDER BY Revenue_At_Risk DESC;


-- Discount effect
select Discount_Applied, ROUND(AVG(Items_Count), 1) AS Avg_Items_Per_Order,
ROUND(AVG(Order_Value), 2) AS Avg_Revenue_Per_Order
from quick_commerce
GROUP BY Discount_Applied;

-- Understanding how customers prefer to pay
select Payment_Method, COUNT(Order_ID) AS Total_Transactions,
ROUND(SUM(Order_Value), 2) AS Total_Revenue
from quick_commerce
GROUP BY Payment_Method
ORDER BY Total_Transactions DESC;

-- Analyzing Product Preferences by Age Group
select Product_Category, Age_Group, 
COUNT(Order_ID) AS Total_Orders,
ROUND(SUM(Order_Value), 2) AS Total_Revenue
from quick_commerce
GROUP BY Product_Category, Age_Group
ORDER BY Total_Revenue DESC;










