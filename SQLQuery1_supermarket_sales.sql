
-- EXPOLORING THE DATASET
SELECT*
FROM supermarket_sales..supermarket_sales$

-- LOOKING TO TROTAL SALES BY STATE

SELECT state, SUM(revenue) AS revenue_per_state
FROM supermarket_sales..supermarket_sales$
GROUP BY state

-- LOOKING FOR NET PROFIT for each catagory

SELECT product_line, ROUND((SUM(revenue)- SUM( cogs)),2) AS net_profit
FROM supermarket_sales..supermarket_sales$
GROUP BY product_line

-- LOOKING FOR TOTAL SALES FOR EACH COUSTOMER TYPE
SELECT customer_type, SUM (revenue) AS revenue_by_coustomer
FROM supermarket_sales..supermarket_sales$
GROUP BY customer_type

-- LOOKING TO THE TOTAL SALSE MADE BY EACH GENDER

SELECT gender,SUM (revenue) AS revenue_by_gender
FROM supermarket_sales..supermarket_sales$
GROUP BY gender

-- LOOKING FOR AVERGE RATING FOR EACH PRODUCT LINE

SELECT product_line, ROUND(AVG (rating),2) AS average_rating
FROM supermarket_sales..supermarket_sales$
GROUP BY product_line
ORDER BY average_rating DESC

-- LOOKING FOR HOW MANY TRANSACTION FOR EACH PRODUCT LINE

SELECT product_line, COUNT (product_line) AS no_of_transaction
FROM supermarket_sales..supermarket_sales$
GROUP BY product_line
ORDER BY no_of_transaction DESC

-- LOOKING FOR TOTAL SALES MADE BY EACH PAYMENT METHOD

SELECT payment_method, SUM (revenue) AS sales_by_payment
FROM supermarket_sales..supermarket_sales$
GROUP BY payment_method
ORDER BY sales_by_payment DESC

-- LOOKING FOR THE BUSY HOUR OF SALES

SELECT DATENAME(HOUR,time) AS hours, SUM(revenue) AS revenue_by_hour
FROM supermarket_sales..supermarket_sales$
Group by DATENAME(HOUR,time)

-- LOOKING FOR WHICH DAY IN THE WEEK HAS A MOST SALES 


SELECT DATENAME(WEEKDAY,date) AS weekday, ROUND (SUM(revenue),2) AS revenue_by_weekday
FROM supermarket_sales..supermarket_sales$
GROUP BY  DATENAME(WEEKDAY,date)
ORDER BY revenue_by_weekday DESC