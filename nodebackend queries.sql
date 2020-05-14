CREATE DATABASE nodebackend;
CREATE DATABASE e_commerce_backend;
USE e_commerce_backend;
CREATE TABLE gallery (
id INT(11) PRIMARY KEY AUTO_INCREMENT,
image VARCHAR(255),
product_id INT(11),
FOREIGN KEY (product_id) REFERENCES products(product_id)
);
CREATE TABLE products (
product_id INT(11) NOT NULL AUTO_INCREMENT,
name VARCHAR(255),
price DECIMAL (15,2),
description VARCHAR(255),
quantity_in_stock VARCHAR (255),
image VARCHAR(255),
likes INT(255),
views INT(255),
PRIMARY KEY(product_id)
);
SELECT * FROM customers;


CREATE TABLE customers (
customer_id INT(11) NOT NULL AUTO_INCREMENT,
first_name VARCHAR(255),
last_name VARCHAR(255),
email VARCHAR(255),
phone VARCHAR(20),
password VARCHAR (255),
PRIMARY KEY(customer_id)
);

CREATE TABLE orders (
order_id INT(11) NOT NULL AUTO_INCREMENT,
product_id INT (11),
shipping_address VARCHAR (255),
payment_status VARCHAR(255),
quantity_ordered INT (16),
order_status VARCHAR(255),
total DECIMAL (15,2),
PRIMARY KEY(order_id),
FOREIGN KEY (product_id) REFERENCES products(product_id)
);
USE nodebackend;
USE e_commerce_website;
SELECT * FROM products;
SELECT * FROM orders;
SELECT * FROM customers;

SELECT * FROM gallery;
INSERT INTO products (`category_id`, `product_name`, `product_price`,`product_size`, `product_color`, `product_description`, `product_location`) VALUES ("1", "Necklace", "9000", "none", "silver ", "female necklace at affordable price", "Lagos");
INSERT INTO products (`category_id`, `product_name`, `product_price`,`product_size`, `product_color`, `product_description`, `product_location`) VALUES ("2", "Dress", "15000", "none", "Green ", "female dress at affordable price", "Abuja");
INSERT INTO products (`category_id`, `product_name`, `product_price`,`product_size`, `product_color`, `product_description`, `product_location`) VALUES ("3", "Fridge", "150000", "none", "Nude ", " Fridge at affordable price", "Delta");
INSERT INTO products (`category_id`, `product_name`, `product_price`,`product_size`, `product_color`, `product_description`, `product_location`) VALUES ("4", "Shoe", "5000", "none", "Black ", "female shoe at affordable price", "Lagos");


DROP TABLE products;
DROP TABLE customers;

DELETE FROM products;
SELECT  * FROM customers;

CREATE TABLE `nodebackend`.`products` ( `_id` INT(11) NOT NULL AUTO_INCREMENT , `name` VARCHAR(30) NOT NULL , `amount` DOUBLE(20,2) NOT NULL , `available_stock` INT(11) NOT NULL , `dateCreated` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , `dateModified` TIMESTAMP on update CURRENT_TIMESTAMP NULL , PRIMARY KEY (`_id`));
CREATE TABLE `nodebackend`.`customers` ( `_id` INT(11) NOT NULL AUTO_INCREMENT , `first_name` VARCHAR(255) NOT NULL , `last_name` VARCHAR(255) NOT NULL , `email` VARCHAR(255) NOT NULL , `active` BOOLEAN DEFAULT FALSE, PRIMARY KEY (`_id`));
ALTER TABLE products
  ADD category_name varchar(255) 
    AFTER product_id;
