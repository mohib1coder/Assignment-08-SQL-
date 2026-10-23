--  ASSIGNMENT 01 — Solutions


--  Question 1 — SELECT & WHERE
SELECT 
    first_name, 
    last_name, 
    city, 
    phone
FROM 
    sales.customers
WHERE 
    state = 'CA' 
    AND phone IS NOT NULL;

--  Question 2 — ORDER BY (Multiple Columns)
SELECT 
    product_id, 
    product_name, 
    model_year, 
    list_price
FROM 
    production.products
ORDER BY 
    model_year DESC, 
    list_price ASC;

--  Question 3 — TOP N & TOP PERCENT

SELECT TOP 5
    product_name, 
    list_price
FROM 
    production.products
ORDER BY 
    list_price DESC;

-- Part b:
SELECT TOP 5 PERCENT 
    *
FROM 
    production.products
ORDER BY 
    list_price ASC;

--  Question 4 — OFFSET & FETCH (Pagination)

-- Page 1:
SELECT 
    product_id, 
    product_name, 
    list_price
FROM 
    production.products
ORDER BY 
    list_price DESC
OFFSET 0 ROWS
FETCH NEXT 10 ROWS ONLY;

-- Page 2:
SELECT 
    product_id, 
    product_name, 
    list_price
FROM 
    production.products
ORDER BY 
    list_price DESC
OFFSET 10 ROWS
FETCH NEXT 10 ROWS ONLY;

-- Page 3:
SELECT 
    product_id, 
    product_name, 
    list_price
FROM 
    production.products
ORDER BY 
    list_price DESC
OFFSET 20 ROWS
FETCH NEXT 10 ROWS ONLY;


--  Question 5 — DISTINCT


-- Part a:
SELECT DISTINCT 
    state
FROM 
    sales.customers
ORDER BY 
    state ASC;

-- Part b:
SELECT DISTINCT 
    state, 
    city
FROM 
    sales.customers
ORDER BY 
    state ASC, 
    city ASC;

-- Part c:
SELECT DISTINCT 
    model_year
FROM 
    production.products
ORDER BY 
    model_year ASC;

--  Question 6 — Logical Operators (AND / OR)

SELECT 
    product_id, 
    product_name, 
    brand_id, 
    category_id, 
    list_price
FROM 
    production.products
WHERE 
    list_price BETWEEN 500 AND 1500
    AND (model_year = 2019 OR model_year = 2020)
ORDER BY 
    list_price ASC;