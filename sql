------------------------------------------------------------------
-- WARM UPS: Type the following commands to build muscle memory. --
-------------------------------------------------------------------

-- 1. [Using max/min]:
SELECT max(price) FROM products;

-- 2. [Using count]:
 SELECT count(*) FROM users;

-- 3. [Using sum]: 
SELECT sum(price) FROM purchase_items;

-- 4. [Using avg]: 
SELECT avg(price) FROM purchase_items;

--------------------------------------------------------
-- EXERCISES: Answer using the techniques from above. --
--------------------------------------------------------

-- 1. Find the total number of purchases.
select count(*) from purchases;

-- 2. Find the average price of the items in the products table.
select avg(price) from products;

-- 3. Find the maximum price from the products that are NOT a
--    computer.
select max(price) from products where title not like '% Computer';

-- 4. Find the number of users with Gmail email addresses.
select count(*) from users
where email like '%gmail%';

-- 5. Using the purchase_items table, find the total dollar value of
--    all items with state "Returned".
select SUM(price) from purchase_items where status = 'Returned';
select * from purchase_items;

-- 6. Find the average price of all products containing the word
--    "Book" in their title.
select AVG(price) from products where title ilike '%Book';

----------------------------------------
-- EXTRA CREDIT: If you finish early. --
----------------------------------------

-- 1. You use multiple aggregation functions in one SELECT. Using
--    only one query,
--    find the min(), max() and avg() of the prices in the product
--    table.
select min(price), max(price), avg(price) from products;


-- 2. In one query, find the difference between the price of the most
--    expensive and least expensive product.
select max(price) - min(price) from products;



