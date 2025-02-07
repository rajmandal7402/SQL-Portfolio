#Removing spaces from column headers
ALTER TABLE orders
CHANGE COLUMN `Row ID` `Row_ID` VARCHAR(255),
CHANGE COLUMN `Order ID` `Order_ID` VARCHAR(255),
CHANGE COLUMN `Order Date` `Order_Date` VARCHAR(255),
CHANGE COLUMN `Ship Date` `Ship_Date` VARCHAR(255),
CHANGE COLUMN `Ship Mode` `Ship_Mode` VARCHAR(255),
CHANGE COLUMN `Customer ID` `Customer_ID` VARCHAR(255),
CHANGE COLUMN `Customer Name` `Customer_Name` VARCHAR(255),
CHANGE COLUMN `Postal Code` `Postaal_Code` VARCHAR(255),
CHANGE COLUMN `Product ID` `Product_ID` VARCHAR(255),
CHANGE COLUMN `Product Name` `Product_Name` VARCHAR(255);

SELECT * FROM orders;

#Calculate Total Sales and Profit
SELECT 
    SUM(Sales) AS Total_Sales, SUM(Profit) AS Total_Profit
FROM
    orders;


#Identify the Top 10 Customers by Sales
SELECT 
    Customer_Name, SUM(Sales) AS Total_Sales
FROM
    orders
GROUP BY Customer_Name
ORDER BY Total_Sales DESC
LIMIT 10;

#Analyze Sales by Region and Category
SELECT 
    Region, Category, SUM(sales) AS Total_Sales
FROM
    Orders
GROUP BY Region , Category
ORDER BY Total_Sales DESC;

#Find the Month with the Highest Sale
SELECT 
    DATE_FORMAT(STR_TO_DATE(Order_Date, '%m/%d/%y'),
            '%y-%m') AS Month,
    SUM(Sales) AS Total_Sales
FROM
    Orders
WHERE
    Order_Date IS NOT NULL
GROUP BY Month
ORDER BY Total_Sales DESC
LIMIT 1;
