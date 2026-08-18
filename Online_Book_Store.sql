create database online_book_store;
use online_book_store;

create table books(
book_id serial primary key,
title varchar(100) ,
Author varchar(20),
Genre varchar(20),
published_year int,
price decimal(10,2),
stock int 
);
select *  from books;

create table customers(
customers_id serial primary key,
name varchar(20) ,
email varchar(50),
city varchar(20),
phone_No int,
country varchar(20)
);
select *  from customers;

create table orders(
orders_id serial primary key,
customers_id int,
books_id int,
order_date date,
quantity int,
total_amount decimal(20,2)
);
select *  from orders;


-- Basic Queries
-- Q1  Retrieve all books in the "Fiction" genre
select * from books where genre='Fiction';

-- Q2 Find books published after the year 1950
select * from books where published_year>1950;

-- Q3  List all customers from the Canada
select * from customers where country='canada';

-- Q4 Show orders placed in November 2023
select * from orders where order_date like '2023-11-__';

-- Q5 Retrieve the total stock of books available
select sum(stock) as Total_stock from books ;

-- Q6 Find the details of the most expensive book
select * from books 
order by price desc
limit 1;

-- Q7 Show all customers who ordered more than 1 quantity of a book
select * from orders where quantity >1;

-- Q8 Retrieve all orders where the total amount exceeds $20
select * from orders
where total_amount >20;

-- Q9 List all genres available in the Books table
select distinct genre from books;

-- Q10 Find the book with the lowest stock
select * from books
order by stock Asc
limit 1;

-- Q11 Calculate the total revenue generated from all orders
select sum(total_amount) as revenue
from orders;


-- Advanced Queries
-- Q1 Retrieve the total number of books sold for each genre
SELECT b.Genre,SUM(o.quantity) AS Total_Books_Sold
FROM Orders o
JOIN Books b 
ON o.books_id = b.books_id
GROUP BY b.Genre;

-- Q2 Find the average price of books in the "Fantasy" genre
select avg(price) as Average_Price
from books
where genre='fantasy';

-- Q3 List customers who have placed at least 2 orders
select name,quantity  
from customers c
join orders o
on o.customers_id =c.customers_id
where o.quantity >1
order by quantity asc;

-- Q4 Find the most frequently ordered book
select o.books_id ,b.title,count(o.orders_id) as frequently_order
from orders o
join books b
on o.books_id=b.books_id
group by b.books_id
order by frequently_order desc 
limit 1;

-- Q5 Show the top 3 most expensive books of 'Fantasy' Genre 
select * from books 
where genre='fantasy'
order by price 
desc limit 3;

-- Q6 Retrieve the total quantity of books sold by each author
select b.author,sum(o.quantity) as total_quantity_sold
 from orders o
 join books b
 on o.books_id=b.books_id
 group by b.author;

-- Q List the cities where customers who spent over $30 are located
select distinct c.city,o.total_amount as money_spent
from orders o
join customers c
on o.customers_id=c.customers_id 
where o.total_amount >30;


-- Q8 Find the customer who spent the most on orders
select c.customers_id,c.name,sum(o.total_amount) as total_spend
from orders o
join customers c
on o.customers_id=c.customers_id
group by c.customers_id,c.name
order by total_spend desc limit 1;

-- Q9 Calculate the stock remaining after fulfilling all order
select b.books_id,b.title,b.stock,sum(o.quantity) as total_quantity_sold,coalesce(b.stock-sum(o.quantity)) as remaining_stock
from orders o
join books b
on o.books_id=b.books_id
group by b.books_id
order by b.books_id;
