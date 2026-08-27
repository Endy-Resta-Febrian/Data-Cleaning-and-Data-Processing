SELECT * FROM retail.customers;
SELECT * FROM retail.orders_updated
;

-- Inner Join
SELECT DISTINCT * 
FROM retail.orders_updated
INNER JOIN retail.customers
ON retail.orders_updated.customer_id = retail.customers.customer_id
ORDER BY retail.customers.customer_id;

-- Left Join
SELECT DISTINCT * 
FROM retail.orders_updated
LEFT JOIN retail.customers
ON retail.orders_updated.customer_id = retail.customers.customer_id
ORDER BY retail.customers.customer_id;


-- Right Join
SELECT DISTINCT * 
FROM retail.orders_updated
RIGHT JOIN retail.customers
ON retail.orders_updated.customer_id = retail.customers.customer_id
ORDER BY retail.customers.customer_id;