DROP DATABASE IS EXISTS bamazon_db;

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

SELECT * FROM products
