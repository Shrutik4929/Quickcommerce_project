create database ecommerce_project;
use ecommerce_project;

create table quick_commerce(
    Order_ID BIGINT,
    Company VARCHAR(100),
    City VARCHAR(100),
    Customer_Age INT,
    Order_Value DOUBLE,
    Delivery_Time_Min INT,
    Distance_Km DOUBLE,
    Items_Count INT,
    Product_Category VARCHAR(100),
    Payment_Method VARCHAR(50),
    Customer_Rating DOUBLE,
    Discount_Applied INT,
    Age_Group VARCHAR(50));
    

create database ecommerce_project;
use ecommerce_project;

create table quick_commerce(
    Order_ID BIGINT,
    Company VARCHAR(100),
    City VARCHAR(100),
    Customer_Age INT,
    Order_Value DOUBLE,
    Delivery_Time_Min INT,
    Distance_Km DOUBLE,
    Items_Count INT,
    Product_Category VARCHAR(100),
    Payment_Method VARCHAR(50),
    Customer_Rating DOUBLE,
    Discount_Applied INT,
    Age_Group VARCHAR(50));
    

SET GLOBAL local_infile = 1;


load data infile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/quick_commerce_data_final (3).csv' into table quick_commerce
fields terminated by ','
ignore 1 lines;

select * from quick_commerce;