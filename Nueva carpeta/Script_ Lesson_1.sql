/*
Udacity SQL Course
*/
-- Lesson 1. LIMIT / ORDER BY / WHERE 
--1. 
/*
writing a query that limits the response to only. t
first 15 rows and includes the date, account_id, and channel fields in th
web events table.
*/

SELECT occurred_at, account_id, channel
FROM web_events
LIMIT 15

--2. LIMIT
/*Write a query to return the 10 earliest orders in the orders table.
 Include the id, occurred_at, and total_amt_usd. */

select id, occurred_at, total_amt_usd from orders  limit 10

--3. ORDER BY
/*Write a query to return the top 5 orders in terms of largest total_amt_usd.
 Include the id, account_id, and total_amt_usd. */

 SELECT id, account_id, total_amt_usd
FROM orders
ORDER BY total_amt_usd DESC 
LIMIT 5

--4.
/*  Write a query to return the lowest 20 orders in terms of smallest total_amt_usd. 
Include the id, account_id, and total_amt_usd. */

select id, account_id ,total_amt_usd
from orders  
ORDER by total_amt_usd asc
limit 20

--5. WHERE
/*Pulls the first 5 rows and all columns from the orders table that have a dollar amount
 of gloss_amt_usd greater than or equal to 1000. */

select *
from orders
where gloss_amt_usd>1000
limit 5

--6. WHERE NON NUMERIC
/*Filter the accounts table to include the company name, website, and the primary point of contact 
(primary_poc) just for the Exxon Mobil company in the accounts table.*/

SELECT name, website , primary_poc
FROM accounts
WHERE name='Exxon Mobil'

