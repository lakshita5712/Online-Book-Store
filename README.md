# 📚 Online Book Store — SQL Project

A SQL-based data analysis project built on an **Online Book Store** dataset.
The project focuses on querying, analyzing, and extracting meaningful insights from book, customer, and order data using **MySQL**.

## 📌 Project Overview

This project contains three CSV datasets:

* **Books.csv** — Book-related information
* **Customers.csv** — Customer information
* **Orders.csv** — Order and sales information

The datasets are imported into MySQL and analyzed using SQL queries ranging from basic filtering and aggregation to advanced queries involving **JOINs, GROUP BY, aggregate functions, subqueries, and data analysis**.

## The project includes **11 Basic Queries and 9 Advanced Queries**.

## 🗂️ Database Structure

### Tables

```text
Books
├── Books_ID
├── Title
├── Author
├── Genre
├── Price
├── Stock
└── ...

Customers
├── Customers_ID
├── Name
├── City
├── Country
└── ...

Orders
├── Orders_ID
├── Customers_ID
├── Books_ID
├── Order_Date
├── Quantity
├── Total_Amount
└── ...
```

The tables are related through common identifiers such as **Books_ID** and **Customers_ID**.

---

## 🎯 Objectives

The main objectives of this project are to:

* Practice SQL querying on a relational dataset
* Retrieve and filter relevant records
* Perform calculations using aggregate functions
* Analyze sales and revenue
* Work with multiple tables using JOINs
* Analyze customer purchasing behavior
* Analyze books by genre and author
* Calculate inventory and remaining stock

---

## 🔎 SQL Concepts Used

### Basic SQL

* `SELECT`
* `WHERE`
* `DISTINCT`
* `ORDER BY`
* `GROUP BY`
* `LIMIT`
* Aggregate Functions

  * `SUM()`
  * `AVG()`
  * `COUNT()`
  * `MIN()`
  * `MAX()`

### Advanced SQL

* `INNER JOIN / JOIN`
* Multiple-table queries
* `GROUP BY`
* `HAVING`
* Subqueries
* Aggregate functions
* Sorting and ranking
* Conditional filtering

---

## 📝 Queries Covered

### Basic Queries

1. Retrieve all books in the **Fiction** genre
2. Find books published after **1950**
3. List customers from **Canada**
4. Show orders placed in **November 2023**
5. Calculate the total stock of available books
6. Find the most expensive book
7. Find customers who ordered more than one quantity of a book
8. Retrieve orders where total amount exceeds **$20**
9. List all available genres
10. Find the book with the lowest stock
11. Calculate total revenue generated from orders

### Advanced Queries

1. Calculate total books sold for each genre
2. Find the average price of Fantasy books
3. Find customers with at least two orders
4. Find the most frequently ordered book
5. Find the top 3 most expensive Fantasy books
6. Calculate total quantity sold by each author
7. Find cities where customers spent over $30
8. Find the customer who spent the most
9. Calculate remaining stock after fulfilling orders

---

## 💡 Sample SQL Query

### Total Books Sold by Genre

```sql
SELECT 
    b.Genre,
    SUM(o.quantity) AS Total_Books_Sold
FROM Orders o
JOIN Books b
    ON o.books_id = b.book_id
GROUP BY b.Genre;
```

This query demonstrates how `JOIN`, `SUM()`, and `GROUP BY` can be combined to analyze sales by genre.

---

## 🛠️ Tools & Technologies

* **Database:** MySQL
* **Language:** SQL
* **Database Tool:** MySQL Workbench
* **Data Source:** CSV files
* **Version Control:** Git & GitHub

---

## 📂 Project Structure

```text
Online-Book-Store-SQL/
│
├── Books.csv
├── Customers.csv
├── Online_Book_Store.sql
├── Orders.csv
└── README.md
```

---

## 📈 Key Learning Outcomes

Through this project, I practiced:

* Writing SQL queries from business questions
* Working with relational tables
* Joining data from multiple tables
* Using aggregate functions for analysis
* Grouping and filtering analytical results
* Understanding customer and sales data
* Performing basic inventory analysis

---

## 🚀 Future Improvements

* Create a **Power BI dashboard** using the SQL results
* Add more complex SQL queries
* Perform customer segmentation
* Analyze monthly sales trends
* Build sales and inventory KPIs
* Connect MySQL directly with Power BI

---

🙏 Credits

This project was created as part of my SQL learning journey using project guidance and learning material from Satish Dhawle, Founder of SkillCourse.
The SQL queries and analysis in this repository were implemented by me as part of my practice.

---

## 👩‍💻 Author

**Lakshita Garg**

Aspiring Data Analyst 

**Skills:** SQL • Python • Excel • Power BI • Data Analysis • Data Visualization

---

⭐ If you find this project useful, feel free to explore the repository and connect with me on LinkedIn.
