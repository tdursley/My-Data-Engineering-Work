CREATE TABLE address_tb(
address_id SERIAL PRIMARY KEY,
address VARCHAR(255),
city VARCHAR(100),
state VARCHAR(100),
zip_code VARCHAR(20),
country VARCHAR(100)
);


INSERT INTO address_tb (address, city, state, zip_code, country)
SELECT DISTINCT address, city, state, zip_code, country
FROM customers_tb;

ALTER TABLE customers_tb
ADD COLUMN address_id INT,
ADD CONSTRAINT fk_address
FOREIGN KEY (address_id) REFERENCES address_tb(address_id);


SELECT * FROM customers_tb;
SELECT * FROM address_tb;