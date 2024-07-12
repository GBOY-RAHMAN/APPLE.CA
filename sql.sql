-- set the environment. 

Set SQL_SAFE_UPDATES = 0;

DROP DATABASE IF EXISTS db_sales;

CREATE DATABASE db_sales;

USE db_sales;


drop tables if exists tbl_cookie_sales; 

CREATE TABLE tbl_cookie_sales(
id int unsigned auto_increment primary key,
first_name varchar(20) not null, 
sale_amount DECIMAL(4,2) unsigned NOT NULL,
sale_date date not null

);


INSERT INTO tbl_cookie_sales (first_name,sale_amount,sale_date) VALUES ('Lindsey',32.02,'2007-03-12');

INSERT INTO tbl_cookie_sales (first_name,sale_amount,sale_date) VALUES ('Nicole',26.53,'2007-03-12');

INSERT INTO tbl_cookie_sales (first_name,sale_amount,sale_date) VALUES ('Britney',11.25,'2007-03-12');

INSERT INTO tbl_cookie_sales (first_name,sale_amount,sale_date) VALUES ('Ashley',18.96,'2007-03-12');

INSERT INTO tbl_cookie_sales (first_name,sale_amount,sale_date) VALUES ('Lindsey',9.16,'2007-03-11');

INSERT INTO tbl_cookie_sales (first_name,sale_amount,sale_date) VALUES ('Nicole',1.52,'2007-03-11');

INSERT INTO tbl_cookie_sales (first_name,sale_amount,sale_date) VALUES ('Britney',43.21,'2007-03-11');

INSERT INTO tbl_cookie_sales (first_name,sale_amount,sale_date) VALUES ('Ashley',8.05,'2007-03-11');

INSERT INTO tbl_cookie_sales (first_name,sale_amount,sale_date) VALUES ('Lindsey',17.62,'2007-03-10');

INSERT INTO tbl_cookie_sales (first_name,sale_amount,sale_date) VALUES ('Nicole',24.19,'2007-03-10');

INSERT INTO tbl_cookie_sales (first_name,sale_amount,sale_date) VALUES ('Britney',3.40,'2007-03-10');

INSERT INTO tbl_cookie_sales (first_name,sale_amount,sale_date) VALUES ('Ashley',15.21,'2007-03-10');

INSERT INTO tbl_cookie_sales (first_name,sale_amount,sale_date) VALUES ('Lindsey',0.00,'2007-03-09');

INSERT INTO tbl_cookie_sales (first_name,sale_amount,sale_date) VALUES ('Nicole',31.99,'2007-03-09');

INSERT INTO tbl_cookie_sales (first_name,sale_amount,sale_date) VALUES ('Britney',2.58,'2007-03-09');

INSERT INTO tbl_cookie_sales (first_name,sale_amount,sale_date) VALUES ('Ashley',0.00,'2007-03-09');

INSERT INTO tbl_cookie_sales (first_name,sale_amount,sale_date) VALUES ('Lindsey',2.34,'2007-03-08');

INSERT INTO tbl_cookie_sales (first_name,sale_amount,sale_date) VALUES ('Nicole',13.44,'2007-03-08');

INSERT INTO tbl_cookie_sales (first_name,sale_amount,sale_date) VALUES ('Britney',8.78,'2007-03-08');

INSERT INTO tbl_cookie_sales (first_name,sale_amount,sale_date) VALUES ('Ashley',26.82,'2007-03-08');

INSERT INTO tbl_cookie_sales (first_name,sale_amount,sale_date) VALUES ('Lindsey',3.71,'2007-03-07');

INSERT INTO tbl_cookie_sales (first_name,sale_amount,sale_date) VALUES ('Nicole',0.56,'2007-03-07');

INSERT INTO tbl_cookie_sales (first_name,sale_amount,sale_date) VALUES ('Britney',34.19,'2007-03-07');

INSERT INTO tbl_cookie_sales (first_name,sale_amount,sale_date) VALUES ('Ashley',7.77,'2007-03-07');

INSERT INTO tbl_cookie_sales (first_name,sale_amount,sale_date) VALUES ('Lindsey',16.23,'2007-03-06');

INSERT INTO tbl_cookie_sales (first_name,sale_amount,sale_date) VALUES ('Nicole',2.00,'2007-03-06');

INSERT INTO tbl_cookie_sales (first_name,sale_amount,sale_date) VALUES ('Britney',4.50,'2007-03-06');

INSERT INTO tbl_cookie_sales (first_name,sale_amount,sale_date) VALUES ('Ashley',19.22,'2007-03-06');


select *
from tbl_cookie_sales
WHERE sale_date BETWEEN '2007-03-10' AND '2007-03-12';

-- Show all the the sales wehre the first name start with L:
SELECT *
FROM tbl_cookie_sales 
WHERE first_name LIKE 'L%';

SELECT *
FROM tbl_cookie_sales 
WHERE sale_amount > 10;


-- TO SELCT TO SPOECIFY MORE THAN ONE VALUE WE USE --> in
SELECT * 
FROM tbl_cookie_sales 
WHERE first_name IN ('LINDSEY', 'ASHLEY');


-- EACH UNDERSCORE REPRESNT A CHARACTER
Select *
FROM tbl_cookie_sales
WHERE first_name  LIKE '______';

-- WE USE AS FOR ALIASING A COLUMN (GIVE TEMPORARY NAME)
-- TO APPLY ALIASING , YOU CAN ALSO AVOID AS 
-- SHOW TOTAL SALES AMOUNT 
SELECT SUM(sale_amount) AS ' TOTAL SALES AMOUNT ($)'
FROM tbl_cookie_sales;


-- WHERE THE SALES AMOUNT IS NOT  AND NULL
SELECT * 
FROM tbl_cookie_sales
WHERE sale_amount IS NULL;

SELECT * 
FROM tbl_cookie_sales
WHERE sale_amount IS NOT  NULL;

-- SHOW THE MAXIMUM SALES IN YOUR DATA
SELECT MAX(sale_amount )'MAXIMUM SALE ($)'
FROM tbl_cookie_sales;

-- SHOW THE MINIMUM SALES IN YOUR DATA
SELECT MIN(sale_amount )'MINIMUM SALE ($)'
FROM tbl_cookie_sales;

-- SHOW THE AVERAGE SALES IN YOUR DATA
SELECT AVG(sale_amount ) AS 'AVERAGE SALE ($)'
FROM tbl_cookie_sales;

-- SHOW THE round upp AVERAGE SALES IN YOUR DATA
SELECT ROUND(avg(sale_amount),2) AS 'AVERAGE SALE ($)'
FROM tbl_cookie_sales;

-- CAST --> DECIMAL NB OF 7 NB --- DEDICMAL NB OF 2 NB

SELECT CAST(AVG(sale_amount) AS DECIMAL(4,2)) AS 'AVERAGE SALES($)'
FROM tbl_cookie_sales;

-- NO OF SALE MADE 
SELECT COUNT(sale_amount) AS 'NO OF TOTAL NO OF SALES'
FROM tbl_cookie_sales;


SELECT COUNT(sale_amount) AS 'NO OF POSITIVE SALES'
FROM tbl_cookie_sales
WHERE sale_amount > 0;

-- No of sales with zero
SELECT COUNT(sale_amount) AS 'NO OF ZERO SALES'
FROM tbl_cookie_sales
WHERE sale_amount < 0;


-- no of positive sales  made on 2007-03-12
SELECT COUNT(sale_amount) AS 'NO OF ZERO SALES'
FROM tbl_cookie_sales
WHERE sale_amount> 0 AND sale_date = str_to_date('03-12-2007', '%m/%d/%/%Y');

-- TIOTAL SALSE AMOUNT BY EACH PERSON:
select first_name , MAX(sale_amount)
FROM tbl_cookie_sales
GROUP BY first_name
ORDER BY 2 DESC ; 

-- TOTAL SALES AMOUNT BY EACH PERSON SHOWING THE HIGHEST FROM HIGEST TO  LOWEST:

select first_name , SUM(sale_amount)
FROM tbl_cookie_sales
GROUP BY first_name
ORDER BY 2 DESC;

-- TOTAL SALES AMOUNT BY EACH PERSON WITH TWO NUBERS AFTER THE DECIMAL POINT, ORDER BY FIRST NAME
select first_name , ROUND(AVG(sale_amount),2)
FROM tbl_cookie_sales
GROUP BY first_name
ORDER BY 1 ASC;


-- USING THE CAST METHOD 
select first_name , CAST(AVG(sale_amount) AS DECIMAL(4,2)) AS 'AVERAGE SALES($)'
FROM tbl_cookie_sales
GROUP BY first_name
ORDER BY 1 ASC;

-- SELECT THE NAME AND NO OF DAYS EACH PERSON MADE A POSITIVE SALES I:E SALE AMOUNT IS POSITIVE 
select first_name, count(sale_amount)
FROM tbl_cookie_sales
WHERE sale_amount > 0
GROUP BY first_name
order by 1;

