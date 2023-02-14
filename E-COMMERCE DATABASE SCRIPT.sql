DROP DATABASE IF EXISTS e_commerce_database; 
CREATE DATABASE e_commerce_database;
USE e_commerce_database;

CREATE TABLE customer (
cust_id INT NOT NULL,
first_name VARCHAR (255) NOT NULL,
last_name VARCHAR (255) NOT NULL,
dob DATE NOT NULL,
gender VARCHAR (255) NOT NULL,
address_id INT,
phone_id INT,
email_id INT,
payment_id INT,
PRIMARY KEY (cust_id))

CREATE TABLE phone (
phone_id INT,
cust_id	INT NOT NULL,
country_code INT NOT NULL,
area_code INT NOT NULL,
phone_number INT NOT NULL,
extention INT,
phone_type VARCHAR(255) NOT NULL,
phone_boolean INT NOT NULL,
PRIMARY KEY (phone_id),
FOREIGN KEY (cust_id) REFERENCES customer(cust_id) 
);

ALTER TABLE customer 
ADD FOREIGN KEY (phone_id) REFERENCES phone (phone_id);
 

CREATE TABLE email (
email_id INT,
cust_id INT NOT NULL,email VARCHAR (255) NOT NULL,
email_type VARCHAR (255) NOT NULL,
email_boolean INT NOT NULL,
PRIMARY KEY (email_id),
FOREIGN KEY (cust_id) REFERENCES customer(cust_id) 
);

ALTER TABLE customer
ADD FOREIGN KEY (email_id) REFERENCES email (email_id) ; 

CREATE TABLE payment (
payment_id INT,
cust_id INT NOT NULL,
cc_number VARCHAR (255) NOT NULL,
cc_type VARCHAR (255) NOT NULL,
cc_name_different VARCHAR (255), 
cc_exp_month INT NOT NULL,
cc_exp_year INT NOT NULL,
cc_sec_code INT NOT NULL,
payment_boolean INT NOT NULL,
PRIMARY KEY (payment_id),
FOREIGN KEY (cust_id) REFERENCES customer(cust_id) 
);

ALTER TABLE customer
ADD FOREIGN KEY (payment_id) REFERENCES payment (payment_id) ; 

CREATE TABLE address (
address_id INT,
cust_id INT NOT NULL,
address	VARCHAR (255)NOT NULL,
apt_suite VARCHAR (255),
city VARCHAR (255)NOT NULL,
state VARCHAR (255)NOT NULL,
zip_code INT NOT NULL,
country VARCHAR (255)NOT NULL,	
address_type VARCHAR (255)NOT NULL,
address_boolean INT NOT NULL,
PRIMARY KEY (address_id),
FOREIGN KEY (cust_id) REFERENCES customer(cust_id) 
);

ALTER TABLE customer
ADD FOREIGN KEY (address_id) REFERENCES address (address_id); 

CREATE TABLE order_details (
order_id INT,
cust_id INT NOT NULL,
cart_id INT ,
payment_id INT NOT NULL,
payment_date DATE,
order_date DATE NOT NULL,
ship_date DATE,
ship_method VARCHAR (255) NOT NULL,
fullfillment_date DATE,
cancellation_date DATE,
return_date DATE,
PRIMARY KEY (order_id),
FOREIGN KEY (cust_id) REFERENCES customer(cust_id) ,
FOREIGN KEY (payment_id) REFERENCES payment(payment_id) 
);

CREATE TABLE cart (
cart_id INT,
order_id INT NOT NULL,
product_id INT,
quantity INT NOT NULL,
discount INT,
PRIMARY KEY (cart_id),
FOREIGN KEY (order_id) REFERENCES order_details(order_id) 
);

ALTER TABLE order_details
ADD FOREIGN KEY (cart_id) REFERENCES cart (cart_id) ; 

CREATE TABLE product_catalog (
product_id INT,
product_name VARCHAR (255) NOT NULL,
vendor_id INT,
color_id INT,
size_id INT ,
manufacturer_id VARCHAR (255),
unit_id INT,
price_per_unit INT,
weight_per_unit INT,
PRIMARY KEY (product_id));

ALTER TABLE cart
ADD FOREIGN KEY (product_id) REFERENCES product_catalog (product_id); 

CREATE TABLE vendor (
vendor_id INT,
first_name VARCHAR (255) NOT NULL,
last_name VARCHAR (255) NOT NULL,
vendor_phone INT NOT NULL,
vendor_email VARCHAR (255) NOT NULL,
vendor_address VARCHAR (255) NOT NULL,
PRIMARY KEY (vendor_id));

ALTER TABLE product_catalog
ADD FOREIGN KEY (vendor_id) REFERENCES vendor(vendor_id);


CREATE TABLE color(
color_id INT NOT NULL,
product_id INT NOT NULL,
color VARCHAR (255),
PRIMARY KEY (color_id),
FOREIGN KEY (product_id) REFERENCES product_catalog(product_id));

ALTER TABLE product_catalog
ADD FOREIGN KEY (color_id) REFERENCES color(color_id);

CREATE TABLE size(
size_id INT NOT NULL,
product_id INT NOT NULL,
product_size INT NOT NULL,
PRIMARY KEY (size_id),
FOREIGN KEY (product_id) REFERENCES product_catalog(product_id));

ALTER TABLE size
ADD FOREIGN KEY (size_id) REFERENCES size(size_id);


CREATE TABLE manufacturer(
manufacturer_id INT NOT NULL,
product_id INT NOT NULL,
brand_name VARCHAR (255) NOT NULL,
manufact_country VARCHAR (255) NOT NULL,
PRIMARY KEY (manufacturer_id),
FOREIGN KEY (product_id) REFERENCES product_catalog(product_id));


--- You can grab this database and update the tables to include more fields--