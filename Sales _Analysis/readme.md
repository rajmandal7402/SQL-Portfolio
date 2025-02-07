# Sales Data Analysis with SQL

## Project Overview
This project analyzes sales data from a superstore to identify trends, top-performing customers, and regional sales performance. The dataset includes information on orders, customers, products, and profits.

## Dataset
- **Source**: [Superstore Sales Dataset](https://www.kaggle.com/datasets/vivek468/superstore-dataset-final)
- **Tables Used**: `Orders`

## SQL Queries and Analysis

### 1. Total Sales and Profit
```sql
SELECT 
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM 
    Orders;