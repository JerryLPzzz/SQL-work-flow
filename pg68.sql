CREATE TABLE customers_nyc AS (
SELECT *
FROM customers
WHERE city = 'New York City' and state = 'NY');

DELETE FROM customers_nyc
WHERE postal_code = '10014';

ALTER TABLE customers_nyc
ADD COLUMN event text;

UPDATE customers_nyc
SET event = 'thank-you party';

/* check out table */
SELECT * 
FROM customers_nyc
ORDER BY customer_id;

DROP TABLE customers_nyc;
