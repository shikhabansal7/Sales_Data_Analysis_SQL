# Sales Data Analysis SQL Project

## Project Overview
This project simulates a retail company's sales database to analyze sales trends, customer behavior, and product performance. The dataset is fully generated with dummy data to demonstrate SQL querying skills.

## Database Schema

### Customers
- **CustomerID** (Primary Key)
- **Name**
- **City**
- **JoinDate**
- **Age**

### Products
- **ProductID** (Primary Key)
- **ProductName**
- **Category**
- **Price**

### Sales
- **SaleID** (Primary Key)
- **CustomerID** (Foreign Key)
- **ProductID** (Foreign Key)
- **SaleDate**
- **Quantity**

## Key Analysis Queries
1. Total sales per product  
2. Top 3 cities by revenue  
3. Customers with purchases over 5000  
4. Monthly sales trend

## Usage
1. Import `Sales_Data_Analysis_Dummy.sql` to your SQL environment.  
2. Run queries from `queries.sql` to analyze the data.  

## Author
Shikha Bansal  
[GitHub Profile](https://github.com/shikhabansal7)
