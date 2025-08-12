CREATE DATABASE regionalsales;
use regionalsales;

CREATE TABLE US_Regional_Sales_Data (
    OrderNumber VARCHAR(20),
    Sales_Channel VARCHAR(50),
    WarehouseCode VARCHAR(20),
    ProcuredDate DATE,
    OrderDate DATE,
    ShipDate DATE,
    DeliveryDate DATE,
    CurrencyCode CHAR(3),
    SalesTeamID INT,
    CustomerID INT,
    StoreID INT,
    ProductID INT,
    Order_Quantity INT,
    Discount_Applied DECIMAL(5,3),
    Unit_Cost DECIMAL(12,2),
    Unit_Price DECIMAL(12,2),
    Total_Amount DECIMAL(12,2)
);
DROP TABLE US_Regional_Sales_Data;
CREATE TABLE US_Regional_Sales_Data (
    OrderNumber VARCHAR(20),
    Sales_Channel VARCHAR(50),
    WarehouseCode VARCHAR(20),
    ProcuredDate DATE,
    OrderDate DATE,
    ShipDate DATE,
    DeliveryDate DATE,
    CurrencyCode CHAR(3),
    SalesTeamID INT,
    CustomerID INT,
    StoreID INT,
    ProductID INT,
    Order_Quantity INT,
    Discount_Applied DECIMAL(5,3),
    Unit_Cost DECIMAL(12,2),
    Unit_Price DECIMAL(12,2),
    Total_Amount DECIMAL(12,2)
);
DESCRIBE US_Regional_Sales_Data;
ALTER TABLE US_Regional_Sales_Data
CHANGE COLUMN `ï»¿OrderNumber` OrderNumber VARCHAR(20);

#Extract month from OrderDate
SELECT 
    OrderNumber,
    OrderDate,
    EXTRACT(MONTH FROM STR_TO_DATE(OrderDate, '%Y-%m-%d')) AS order_month
FROM 
    US_Regional_Sales_Data
LIMIT 1000;


#Group by year/month
SELECT 
    EXTRACT(YEAR FROM STR_TO_DATE(OrderDate, '%Y-%m-%d')) AS order_year,
    EXTRACT(MONTH FROM STR_TO_DATE(OrderDate, '%Y-%m-%d')) AS order_month,
    COUNT(*) AS total_orders
FROM 
    US_Regional_Sales_Data
GROUP BY 
    order_year, order_month
ORDER BY 
    order_year, order_month;


#Total revenue (SUM of TotalAmount)
SELECT 
    EXTRACT(YEAR FROM STR_TO_DATE(OrderDate, '%Y-%m-%d')) AS order_year,
    EXTRACT(MONTH FROM STR_TO_DATE(OrderDate, '%Y-%m-%d')) AS order_month,
    SUM(TotalAmount) AS total_revenue
FROM 
    US_Regional_Sales_Data
GROUP BY 
    order_year, order_month
ORDER BY 
    order_year, order_month;

#d. Order volume (COUNT DISTINCT OrderNumber)
SELECT 
    EXTRACT(YEAR FROM STR_TO_DATE(OrderDate, '%Y-%m-%d')) AS order_year,
    EXTRACT(MONTH FROM STR_TO_DATE(OrderDate, '%Y-%m-%d')) AS order_month,
    COUNT(DISTINCT OrderNumber) AS order_volume
FROM 
    US_Regional_Sales_Data
GROUP BY 
    order_year, order_month
ORDER BY 
    order_year, order_month;


#Sort results (by revenue descending)
SELECT 
    EXTRACT(YEAR FROM STR_TO_DATE(OrderDate, '%Y-%m-%d')) AS order_year,
    EXTRACT(MONTH FROM STR_TO_DATE(OrderDate, '%Y-%m-%d')) AS order_month,
    SUM(TotalAmount) AS total_revenue
FROM 
    US_Regional_Sales_Data
GROUP BY 
    order_year, order_month
ORDER BY 
    total_revenue DESC;
    


# Limit results for a specific time period
SELECT 
    OrderNumber,
    OrderDate,
    TotalAmount
FROM 
    US_Regional_Sales_Data
WHERE 
    STR_TO_DATE(OrderDate, '%Y-%m-%d') BETWEEN '2023-01-01' AND '2023-03-31'
ORDER BY 
    STR_TO_DATE(OrderDate, '%Y-%m-%d');







