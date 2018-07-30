DROP DATABASE IF EXISTS bamazon_db;

CREATE DATABASE bamazon_db;
USE bamazon_db;

CREATE TABLE products(
    item_id INTEGER(10) NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (item_id),
    product_name VARCHAR(50) NOT NULL,
    dpt_name VARCHAR(50),
    price DECIMAL(10,4) NOT NULL,
    stock_quantity INTEGER(10) NOT NULL
);

SELECT * FROM products;

INSERT INTO products VALUE
	(NULL, 'Bathtub Tray Bath Table', 'Home', 34.99, 23),
    (NULL, 'Healing Crystal Natural, yellow lemon', 'Home', 10.99, 216),
    (NULL, 'Instant Camera', 'Electronics', 63.00, 11),
    (NULL, 'Vintage Classic Alarm Clock', 'Home', 12.00, 42),
    (NULL, 'Women Novelty Socks', 'Clothing', 8.00, 164),
    (NULL, 'White and Gold Ceramic Pineapple', 'Home', 28.00, 18),
    (NULL, 'Harry Potter Gryffindor Set', 'Books', 275.00, 5),
    (NULL, 'Smell My Nuts Candle', ' Home', 12.99, 410),
    (NULL, 'OPI Purple Nail Polish', 'Beauty', 10.50, 234),
    (NULL, 'Proraso Shaving Cream', 'Beauty', 7.29, 90),
    (NULL, 'Cat Ear Stud Earrings', 'Jewlery', 15.50, 45);
    
    

