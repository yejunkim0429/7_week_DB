CREATE TABLE book (

    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    author VARCHAR(50) NOT NULL,
    price INT,
    category VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
DESCRIBE book;

INSERT INTO book(title, author, price, category)
VALUES ('Spring Boot', 'Kim', 30000, 'Programming');

INSERT INTO book(title, author, price, category)
VALUES ('Java Basic', 'Lee', 25000, 'Programming');

INSERT INTO book(title, author, price, category)
VALUES ('Database', 'Park', 28000, 'Database');

INSERT INTO book(title, author, price, category)
VALUES ('Web Programming', 'Choi', 32000, 'Programming');

INSERT INTO book(title, author, price, category)
VALUES ('Cloud Computing', 'Jung', 35000, 'Cloud');

SELECT * FROM book;

SELECT title, author, price FROM book;
SELECT * FROM book WHERE price >= 30000;
SELECT * FROM book WHERE category = 'programming';

UPDATE book SET price = 35000 WHERE id = 1;
SELECT * FROM book WHERE id = 1;

SELECT * FROM book WHERE id = 2;
DELETE FROM book WHERE id = 2;
SELECT * FROM book;

-- ----------- table -----------------

CREATE TABLE product (

product_id BIGINT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100) NOT NULL,
price INT NOT NULL,
category VARCHAR(50),
stock INT DEFAULT 0,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
DESCRIBE product;

-- ------------- order ---------------

CREATE TABLE orders ( 
order_id BIGINT AUTO_INCREMENT PRIMARY KEY,
product_id BIGINT NOT NULL,
customer_name VARCHAR(50) NOT NULL,
quantity INT NOT NULL,
order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
DESCRIBE orders;

-- ------------- insert ---------------

INSERT INTO product(name, price, category, stock)
VALUES ('mouse', 25000, 'phone', 15);

INSERT INTO product(name, price, category, stock)
VALUES ('monitor', 180000, 'phone', 5);

INSERT INTO product(name, price, category, stock)
VALUES ('notepad', 3000, 'stationery', 30);

INSERT INTO product(name, price, category, stock)
VALUES ('pen', 1500, 'stationery', 50);

INSERT INTO product(name, price, category, stock)
VALUES ('keyboard', 50000, 'phone', 10);

SELECT * FROM product;

SELECT product_id, name, price, category, stock
FROM product
ORDER BY product_id;

SELECT product_id AS id, name
FROM product
ORDER BY product_id;

INSERT INTO orders(product_id, customer_name, quantity)
VALUES (1, 'Kim', 2);

INSERT INTO orders(product_id, customer_name, quantity)
VALUES (2, 'Lee', 1);

INSERT INTO orders(product_id, customer_name, quantity)
VALUES (1, 'Choi', 3);

INSERT INTO orders(product_id, customer_name, quantity)
VALUES (3, 'Jung', 2);

INSERT INTO orders(product_id, customer_name, quantity)
VALUES (5, 'Park', 1);
SELECT * FROM orders;

