# Creating database
CREATE DATABASE olist_ecommerce;
USE olist_ecommerce;

# Creating Tables & Inserting values

CREATE TABLE olist_customers (
    customer_id VARCHAR(50) PRIMARY KEY,
    customer_unique_id VARCHAR(50),
    customer_zip_code_prefix INT,
    customer_city VARCHAR(50),
    customer_state VARCHAR(5)
);

INSERT INTO olist_customers (customer_id, customer_unique_id, customer_zip_code_prefix, customer_city, customer_state) VALUES
('cust01', 'uniq1', 12345, 'São Paulo', 'SP'),
('cust02', 'uniq2', 23456, 'Rio de Janeiro', 'RJ'),
('cust03', 'uniq3', 34567, 'Belo Horizonte', 'MG'),
('cust04', 'uniq4', 45678, 'Brasília', 'DF'),
('cust05', 'uniq5', 56789, 'Curitiba', 'PR'),
('cust06', 'uniq6', 67890, 'Porto Alegre', 'RS'),
('cust07', 'uniq7', 78901, 'Salvador', 'BA'),
('cust08', 'uniq8', 89012, 'Fortaleza', 'CE'),
('cust09', 'uniq9', 90123, 'Manaus', 'AM'),
('cust10', 'uniq10', 10134, 'Recife', 'PE'),
('cust11', 'uniq11', 11245, 'São Bernardo do Campo', 'SP'),
('cust12', 'uniq12', 12356, 'Goiânia', 'GO'),
('cust13', 'uniq13', 13467, 'São José dos Campos', 'SP'),
('cust14', 'uniq14', 14578, 'Campinas', 'SP'),
('cust15', 'uniq15', 15689, 'Maceió', 'AL'),
('cust16', 'uniq16', 16790, 'Natal', 'RN'),
('cust17', 'uniq17', 17801, 'Teresina', 'PI'),
('cust18', 'uniq18', 18912, 'Vitória', 'ES'),
('cust19', 'uniq19', 19023, 'Belém', 'PA'),
('cust20', 'uniq20', 20134, 'Cuiabá', 'MT'),
('cust21', 'uniq21', 21245, 'Belo Horizonte', 'MG'),
('cust22', 'uniq22', 22356, 'Joinville', 'SC'),
('cust23', 'uniq23', 23467, 'Aracaju', 'SE'),
('cust24', 'uniq24', 24578, 'São Luís', 'MA'),
('cust25', 'uniq25', 25689, 'Palmas', 'TO');

CREATE TABLE olist_orders (
    order_id VARCHAR(50) PRIMARY KEY,
    customer_id VARCHAR(50),
    order_status VARCHAR(20),
    order_purchase_timestamp DATETIME,
    order_approved_at DATETIME,
    order_delivered_carrier_date DATETIME,
    order_delivered_customer_date DATETIME,
    order_estimated_delivery_date DATETIME,
    FOREIGN KEY (customer_id) REFERENCES olist_customers(customer_id)
);

INSERT INTO olist_orders (order_id, customer_id, order_status, order_purchase_timestamp, order_approved_at, order_delivered_carrier_date, order_delivered_customer_date, order_estimated_delivery_date) VALUES
('order01', 'cust01', 'shipped', '2025-04-01 10:00:00', '2025-04-02 12:00:00', '2025-04-05 14:00:00', '2025-04-07 16:00:00', '2025-04-10 18:00:00'),
('order02', 'cust02', 'delivered', '2025-04-01 11:00:00', '2025-04-02 13:00:00', '2025-04-06 15:00:00', '2025-04-08 17:00:00', '2025-04-11 19:00:00'),
('order03', 'cust03', 'processing', '2025-04-02 12:00:00', '2025-04-03 14:00:00', '2025-04-07 16:00:00', NULL, '2025-04-12 20:00:00'),
('order04', 'cust04', 'delivered', '2025-04-02 13:00:00', '2025-04-03 15:00:00', '2025-04-08 17:00:00', '2025-04-10 19:00:00', '2025-04-13 21:00:00'),
('order05', 'cust05', 'shipped', '2025-04-03 14:00:00', '2025-04-04 16:00:00', '2025-04-09 18:00:00', '2025-04-11 20:00:00', '2025-04-14 22:00:00'),
('order06', 'cust06', 'shipped', '2025-04-04 15:00:00', '2025-04-05 17:00:00', '2025-04-10 19:00:00', '2025-04-12 21:00:00', '2025-04-15 23:00:00'),
('order07', 'cust07', 'delivered', '2025-04-04 16:00:00', '2025-04-05 18:00:00', '2025-04-11 20:00:00', '2025-04-13 22:00:00', '2025-04-16 00:00:00'),
('order08', 'cust08', 'processing', '2025-04-05 17:00:00', '2025-04-06 19:00:00', '2025-04-12 21:00:00', NULL, '2025-04-17 01:00:00'),
('order09', 'cust09', 'delivered', '2025-04-05 18:00:00', '2025-04-06 20:00:00', '2025-04-13 22:00:00', '2025-04-15 00:00:00', '2025-04-18 02:00:00'),
('order10', 'cust10', 'shipped', '2025-04-06 19:00:00', '2025-04-07 21:00:00', '2025-04-14 23:00:00', '2025-04-16 01:00:00', '2025-04-19 03:00:00'),
('order11', 'cust11', 'shipped', '2025-04-06 20:00:00', '2025-04-07 22:00:00', '2025-04-15 00:00:00', '2025-04-17 02:00:00', '2025-04-20 04:00:00'),
('order12', 'cust12', 'delivered', '2025-04-07 21:00:00', '2025-04-08 23:00:00', '2025-04-16 02:00:00', '2025-04-18 04:00:00', '2025-04-21 06:00:00'),
('order13', 'cust13', 'shipped', '2025-04-07 22:00:00', '2025-04-08 00:00:00', '2025-04-17 04:00:00', '2025-04-19 06:00:00', '2025-04-22 08:00:00'),
('order14', 'cust14', 'processing', '2025-04-08 23:00:00', '2025-04-09 01:00:00', '2025-04-18 06:00:00', NULL, '2025-04-23 10:00:00'),
('order15', 'cust15', 'shipped', '2025-04-09 00:00:00', '2025-04-10 02:00:00', '2025-04-19 08:00:00', '2025-04-21 10:00:00', '2025-04-24 12:00:00'),
('order16', 'cust16', 'delivered', '2025-04-09 01:00:00', '2025-04-10 03:00:00', '2025-04-20 10:00:00', '2025-04-22 12:00:00', '2025-04-25 14:00:00'),
('order17', 'cust17', 'shipped', '2025-04-10 02:00:00', '2025-04-11 04:00:00', '2025-04-21 12:00:00', '2025-04-23 14:00:00', '2025-04-26 16:00:00'),
('order18', 'cust18', 'delivered', '2025-04-10 03:00:00', '2025-04-11 05:00:00', '2025-04-22 14:00:00', '2025-04-24 16:00:00', '2025-04-27 18:00:00'),
('order19', 'cust19', 'processing', '2025-04-11 04:00:00', '2025-04-12 06:00:00', '2025-04-23 16:00:00', NULL, '2025-04-28 20:00:00'),
('order20', 'cust20', 'shipped', '2025-04-11 05:00:00', '2025-04-12 07:00:00', '2025-04-24 18:00:00', '2025-04-26 20:00:00', '2025-04-29 22:00:00'),
('order21', 'cust21', 'delivered', '2025-04-12 06:00:00', '2025-04-13 08:00:00', '2025-04-25 20:00:00', '2025-04-27 22:00:00', '2025-04-30 00:00:00'),
('order22', 'cust22', 'shipped', '2025-04-12 07:00:00', '2025-04-13 09:00:00', '2025-04-26 22:00:00', '2025-04-28 00:00:00', '2025-05-01 02:00:00'),
('order23', 'cust23', 'delivered', '2025-04-13 08:00:00', '2025-04-14 10:00:00', '2025-04-27 00:00:00', '2025-04-29 02:00:00', '2025-05-02 04:00:00'),
('order24', 'cust24', 'processing', '2025-04-13 09:00:00', '2025-04-14 11:00:00', '2025-04-28 02:00:00', NULL, '2025-05-03 06:00:00'),
('order25', 'cust25', 'shipped', '2025-04-14 10:00:00', '2025-04-15 12:00:00', '2025-04-29 04:00:00', '2025-05-01 06:00:00', '2025-05-04 08:00:00');

CREATE TABLE olist_products (
    product_id VARCHAR(50) PRIMARY KEY,
    product_category_name VARCHAR(100),
    product_name_length INT,
    product_description_length INT,
    product_photos_qty INT,
    product_weight_g INT,
    product_length_cm INT,
    product_height_cm INT,
    product_width_cm INT
);

INSERT INTO olist_products (product_id, product_category_name, product_name_length, product_description_length, product_photos_qty, product_weight_g, product_length_cm, product_height_cm, product_width_cm) VALUES
('prod01', 'electronics', 10, 50, 3, 500, 10, 5, 7),
('prod02', 'fashion', 15, 45, 2, 200, 8, 3, 5),
('prod03', 'home_appliances', 20, 60, 4, 1500, 15, 10, 12),
('prod04', 'books', 12, 40, 1, 300, 25, 2, 20),
('prod05', 'toys', 10, 35, 5, 400, 8, 4, 6),
('prod06', 'electronics', 8, 35, 3, 600, 10, 7, 9),
('prod07', 'furniture', 18, 55, 3, 1200, 20, 15, 18),
('prod08', 'beauty', 14, 50, 2, 120, 10, 6, 5),
('prod09', 'electronics', 22, 70, 5, 1000, 12, 7, 6),
('prod10', 'books', 9, 45, 1, 250, 18, 3, 15),
('prod11', 'fashion', 13, 60, 3, 250, 30, 8, 4),
('prod12', 'home_appliances', 16, 60, 4, 700, 20, 10, 15),
('prod13', 'toys', 11, 50, 5, 500, 12, 8, 10),
('prod14', 'electronics', 10, 45, 3, 400, 10, 5, 7),
('prod15', 'furniture', 14, 55, 4, 800, 18, 12, 10),
('prod16', 'beauty', 12, 40, 2, 150, 12, 6, 6),
('prod17', 'electronics', 20, 50, 4, 550, 12, 7, 9),
('prod18', 'fashion', 11, 35, 3, 350, 8, 4, 5),
('prod19', 'books', 17, 65, 1, 200, 18, 5, 15),
('prod20', 'home_appliances', 15, 45, 4, 600, 14, 8, 10),
('prod21', 'toys', 13, 50, 3, 300, 10, 5, 6),
('prod22', 'electronics', 22, 75, 2, 800, 16, 7, 9),
('prod23', 'furniture', 16, 55, 4, 1500, 25, 18, 15),
('prod24', 'beauty', 10, 40, 3, 100, 7, 4, 5),
('prod25', 'fashion', 14, 50, 2, 180, 12, 6, 6);

CREATE TABLE olist_sellers (
    seller_id VARCHAR(50) PRIMARY KEY,
    zip_code_prefix INT,
    seller_city VARCHAR(100),
    seller_state VARCHAR(5)
);

INSERT INTO olist_sellers (seller_id, zip_code_prefix, seller_city, seller_state) VALUES
('seller01', 12345, 'São Paulo', 'SP'),
('seller02', 23456, 'Rio de Janeiro', 'RJ'),
('seller03', 34567, 'Belo Horizonte', 'MG'),
('seller04', 45678, 'Brasília', 'DF'),
('seller05', 56789, 'Curitiba', 'PR'),
('seller06', 67890, 'Porto Alegre', 'RS'),
('seller07', 78901, 'Salvador', 'BA'),
('seller08', 89012, 'Fortaleza', 'CE'),
('seller09', 90123, 'Manaus', 'AM'),
('seller10', 10134, 'Recife', 'PE'),
('seller11', 11245, 'São Bernardo do Campo', 'SP'),
('seller12', 12356, 'Goiânia', 'GO'),
('seller13', 13467, 'São José dos Campos', 'SP'),
('seller14', 14578, 'Campinas', 'SP'),
('seller15', 15689, 'Maceió', 'AL'),
('seller16', 16790, 'Natal', 'RN'),
('seller17', 17801, 'Teresina', 'PI'),
('seller18', 18912, 'Vitória', 'ES'),
('seller19', 19023, 'Belém', 'PA'),
('seller20', 20134, 'Cuiabá', 'MT'),
('seller21', 21245, 'Belo Horizonte', 'MG'),
('seller22', 22356, 'Joinville', 'SC'),
('seller23', 23467, 'Aracaju', 'SE'),
('seller24', 24578, 'São Luís', 'MA'),
('seller25', 25689, 'Palmas', 'TO');

CREATE TABLE olist_order_items (
    order_id VARCHAR(50),
    order_item_id INT,
    product_id VARCHAR(50),
    seller_id VARCHAR(50),
    shipping_limit_date DATETIME,
    price DECIMAL(10, 2),
    freight_value DECIMAL(10, 2),
    PRIMARY KEY (order_id, order_item_id),
    FOREIGN KEY (order_id) REFERENCES olist_orders(order_id),
    FOREIGN KEY (product_id) REFERENCES olist_products(product_id),
    FOREIGN KEY (seller_id) REFERENCES olist_sellers(seller_id)
);

INSERT INTO olist_order_items (order_id, order_item_id, product_id, seller_id, shipping_limit_date, price, freight_value) VALUES
('order01', 1, 'prod01', 'seller01', '2025-04-03 12:00:00', 100.00, 20.00),
('order02', 1, 'prod02', 'seller02', '2025-04-04 13:00:00', 150.00, 25.00),
('order03', 1, 'prod03', 'seller03', '2025-04-05 14:00:00', 200.00, 30.00),
('order04', 1, 'prod04', 'seller04', '2025-04-06 15:00:00', 250.00, 35.00),
('order05', 1, 'prod05', 'seller05', '2025-04-07 16:00:00', 300.00, 40.00),
('order06', 2, 'prod06', 'seller06', '2025-04-08 17:00:00', 120.00, 22.00),
('order07', 2, 'prod07', 'seller07', '2025-04-09 18:00:00', 170.00, 27.00),
('order08', 2, 'prod08', 'seller08', '2025-04-10 19:00:00', 220.00, 32.00),
('order09', 3, 'prod09', 'seller09', '2025-04-11 20:00:00', 250.00, 37.00),
('order10', 3, 'prod10', 'seller10', '2025-04-12 21:00:00', 280.00, 42.00),
('order11', 4, 'prod11', 'seller11', '2025-04-13 22:00:00', 130.00, 23.00),
('order12', 4, 'prod12', 'seller12', '2025-04-14 23:00:00', 180.00, 28.00),
('order13', 5, 'prod13', 'seller13', '2025-04-15 00:00:00', 240.00, 33.00),
('order14', 5, 'prod14', 'seller14', '2025-04-16 01:00:00', 290.00, 45.00),
('order15', 6, 'prod15', 'seller15', '2025-04-17 02:00:00', 110.00, 21.00),
('order16', 6, 'prod16', 'seller16', '2025-04-18 03:00:00', 160.00, 26.00),
('order17', 7, 'prod17', 'seller17', '2025-04-19 04:00:00', 210.00, 31.00),
('order18', 7, 'prod18', 'seller18', '2025-04-20 05:00:00', 260.00, 36.00),
('order19', 8, 'prod19', 'seller19', '2025-04-21 06:00:00', 320.00, 50.00),
('order20', 8, 'prod20', 'seller20', '2025-04-22 07:00:00', 350.00, 55.00),
('order21', 9, 'prod21', 'seller21', '2025-04-23 08:00:00', 140.00, 24.00),
('order22', 9, 'prod22', 'seller22', '2025-04-24 09:00:00', 190.00, 29.00),
('order23', 10, 'prod23', 'seller23', '2025-04-25 10:00:00', 240.00, 34.00),
('order24', 10, 'prod24', 'seller24', '2025-04-26 11:00:00', 270.00, 39.00),
('order25', 11, 'prod25', 'seller25', '2025-04-27 12:00:00', 300.00, 43.00);

CREATE TABLE olist_order_payments (
    order_id VARCHAR(50),
    payment_sequential INT,
    payment_type VARCHAR(20),
    payment_installments INT,
    payment_value DECIMAL(10, 2),
    PRIMARY KEY (order_id, payment_sequential),
    FOREIGN KEY (order_id) REFERENCES olist_orders(order_id)
);

INSERT INTO olist_order_payments (order_id, payment_sequential, payment_type, payment_installments, payment_value) VALUES
('order01', 1, 'credit_card', 1, 120.00),
('order02', 1, 'boleto', 2, 150.00),
('order03', 1, 'credit_card', 3, 200.00),
('order04', 1, 'voucher', 1, 250.00),
('order05', 1, 'debit_card', 1, 300.00),
('order06', 1, 'credit_card', 1, 120.00),
('order07', 1, 'boleto', 4, 170.00),
('order08', 1, 'credit_card', 2, 220.00),
('order09', 1, 'voucher', 1, 250.00),
('order10', 1, 'credit_card', 3, 280.00),
('order11', 1, 'debit_card', 1, 130.00),
('order12', 1, 'boleto', 2, 180.00),
('order13', 1, 'credit_card', 1, 240.00),
('order14', 1, 'credit_card', 3, 290.00),
('order15', 1, 'voucher', 1, 110.00),
('order16', 1, 'debit_card', 1, 160.00),
('order17', 1, 'credit_card', 1, 210.00),
('order18', 1, 'credit_card', 2, 260.00),
('order19', 1, 'boleto', 1, 320.00),
('order20', 1, 'debit_card', 1, 350.00),
('order21', 1, 'credit_card', 2, 140.00),
('order22', 1, 'credit_card', 1, 190.00),
('order23', 1, 'voucher', 1, 240.00),
('order24', 1, 'credit_card', 3, 270.00),
('order25', 1, 'boleto', 1, 300.00);

# a. Use SELECT, WHERE, ORDER BY, GROUP BY
#1. Query to find the total revenue per seller (using SELECT, WHERE, ORDER BY, and GROUP BY)

SELECT s.seller_id, SUM(oi.price) AS total_revenue
FROM olist_sellers s
JOIN olist_order_items oi ON s.seller_id = oi.seller_id
GROUP BY s.seller_id
ORDER BY total_revenue DESC;

#2. Query to find the total number of items sold per product category (using GROUP BY and ORDER BY)

SELECT p.product_category_name, COUNT(oi.product_id) AS total_items_sold
FROM olist_products p
JOIN olist_order_items oi ON p.product_id = oi.product_id
GROUP BY p.product_category_name
ORDER BY total_items_sold DESC;

#3. Query to list orders with total price greater than 300 (using WHERE and GROUP BY)

SELECT o.order_id, SUM(oi.price) AS total_price
FROM olist_orders o
JOIN olist_order_items oi ON o.order_id = oi.order_id
GROUP BY o.order_id
HAVING total_price > 300;

# b. Use JOINS (INNER, LEFT, RIGHT)
#1. INNER JOIN: Find products and their respective sellers (INNER JOIN)

SELECT p.product_id, p.product_category_name, s.seller_id, s.seller_city
FROM olist_products p
INNER JOIN olist_order_items oi ON p.product_id = oi.product_id
INNER JOIN olist_sellers s ON oi.seller_id = s.seller_id;

#2. LEFT JOIN: Orders and Payments (LEFT JOIN)

SELECT o.order_id, o.order_status, p.payment_type, p.payment_value
FROM olist_orders o
LEFT JOIN olist_order_payments p ON o.order_id = p.order_id;


#3. RIGHT JOIN: All Payments and Order Info (RIGHT JOIN)

SELECT p.order_id, p.payment_type, o.order_status
FROM olist_order_payments p
LEFT JOIN olist_orders o ON p.order_id = o.order_id;

# c. Subqueries
#1. Subquery to find orders with a total price greater than the average order price

SELECT order_id, SUM(price) AS total_price
FROM olist_order_items
GROUP BY order_id
HAVING total_price > (SELECT AVG(total_price) FROM (SELECT SUM(price) AS total_price FROM olist_order_items GROUP BY order_id) AS subquery);

#2. Subquery to find products that were ordered by customers from 'São Paulo'

SELECT product_id
FROM olist_order_items
WHERE order_id IN (SELECT order_id FROM olist_orders WHERE customer_id IN (SELECT customer_id FROM olist_customers WHERE seller_state = 'SP'));

SELECT product_id
FROM olist_order_items
WHERE order_id IN (SELECT order_id FROM olist_orders
    WHERE customer_id IN (SELECT customer_id FROM olist_customers WHERE customer_state = 'SP')
);

# d. Aggregate Functions (SUM, AVG)
#1. Find the average price of products sold by each seller (using AVG)

SELECT s.seller_id, AVG(oi.price) AS avg_product_price
FROM olist_sellers s
JOIN olist_order_items oi ON s.seller_id = oi.seller_id
GROUP BY s.seller_id;

#2. Find the total revenue generated by each order (using SUM)

SELECT o.order_id, SUM(oi.price) AS total_revenue
FROM olist_orders o
JOIN olist_order_items oi ON o.order_id = oi.order_id
GROUP BY o.order_id;

#3. Get the product with the highest average sales price (as a stand-in for best performance)

SELECT product_id, AVG(price) AS avg_price
FROM olist_order_items
GROUP BY product_id
ORDER BY avg_price DESC
LIMIT 1;


# e. Create Views for Analysis
#1. View to show the total number of items sold and total revenue per product

CREATE VIEW product_sales_summary AS
SELECT p.product_id, p.product_category_name, COUNT(oi.product_id) AS total_items_sold, SUM(oi.price) AS total_revenue
FROM olist_products p
JOIN olist_order_items oi ON p.product_id = oi.product_id
GROUP BY p.product_id, p.product_category_name;

#2. View to show the total order count and average order price per customer

CREATE VIEW customer_order_summary AS
SELECT o.customer_id, COUNT(o.order_id) AS total_orders, AVG(oi.price) AS avg_order_price
FROM olist_orders o
JOIN olist_order_items oi ON o.order_id = oi.order_id
GROUP BY o.customer_id;

#3. View to show the products_sales_summary

CREATE VIEW products_sales_summary AS
SELECT product_id, COUNT(*) AS total_units_sold,
    SUM(price) AS total_revenue, AVG(price) AS average_price FROM olist_order_items GROUP BY product_id;


# f. Optimize Queries with Indexes
#1. Creating an index on order_id in the olist_order_items table to speed up queries involving order items

CREATE INDEX idx_order_id ON olist_order_items(order_id);

#2. Creating an index on customer_id in the olist_orders table to speed up queries based on customers

CREATE INDEX idx_customer_id ON olist_orders(customer_id);

#3. Creating an index on product_id in the olist_order_items table for faster product lookups

CREATE INDEX idx_product_id ON olist_order_items(product_id);




