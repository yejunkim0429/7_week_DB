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
