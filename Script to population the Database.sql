USE e_commerce_database;

BEGIN TRANSACTION;
INSERT INTO customer VALUES 
(1001, 'Anna', 'Castro', '1986/11/23', 'F', NULL, NULL, NULL, NULL),
(1002, 'John', 'Ancona', '1987/3/23', 'M', NULL, NULL, NULL, NULL),
(1003, 'Dilbert', 'Donahue', '1991/10/6', 'M', NULL, NULL, NULL, NULL),
(1004, 'Jane', 'Zheng', '1989/8/16', 'F', NULL, NULL, NULL, NULL),
(1005, 'Rosa', 'Hernandez', '1996/8/19', 'F', NULL, NULL, NULL, NULL);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
--- 1 means True While 0 means False for the last colunm (phone_boolean) ---
INSERT INTO phone VALUES
(10001, 1001, 1, 531, 283-6774, NULL, 'Mobile', 1),
(10002,	1001, 1, 531, 770-5843, 123, 'Work', 0),
(10003, 1001, 1, 531, 770-8465, NULL, 'Fax', 0),
(10004, 1002, 1, 203, 779-6292, NULL, 'Mobile', 1),
(10005,	1003, 1, 971, 652-6066, NULL, 'Mobile',	1),
(10006,	1004, 1, 554, 774-1089,	NULL, 'Mobile', 1),
(10007, 1005, 1, 566, 304-3971, NULL, 'Mobile',	1);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
UPDATE customer
SET phone_id = 10001
WHERE cust_id = 1001;

UPDATE customer
SET phone_id = 10004
WHERE cust_id = 1002;

UPDATE customer
SET phone_id = 10005
WHERE cust_id = 1003;

UPDATE customer
SET phone_id = 10006
WHERE cust_id = 1004;

UPDATE customer
SET phone_id = 10007
WHERE cust_id = 1005;
COMMIT TRANSACTION;


BEGIN TRANSACTION;
--- 1 means True While 0 means False for the last colunm (email_boolean) ---
INSERT INTO email VALUES
(10001, 1001, 'it1234@gmail.com', 'Personal', 1),
(10002, 1001, 'anna.castro@macrosoft.com', 'Work', 0),
(10003, 1002, 'j_ancona123@hotmail.com', 'Personal', 1),
(10004, 1002, 'jancona@urw.edu', 'School', 0),
(10005, 1003, 'dd257@yahoo.com', 'Personal', 1),
(10006, 1004, 'jane@aol.com', 'Personal', 1),
(10007, 1005, 'rosa@aim.com', 'Personal', 1);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
UPDATE customer
SET email_id = 10001
WHERE cust_id = 1001;

UPDATE customer
SET email_id = 10003
WHERE cust_id = 1002;

UPDATE customer
SET email_id = 10005
WHERE cust_id = 1003;

UPDATE customer
SET email_id = 10006
WHERE cust_id = 1004;

UPDATE customer
SET email_id = 10007
WHERE cust_id = 1005;
COMMIT TRANSACTION;

BEGIN TRANSACTION;
--- 1 means True While 0 means False for the last colunm (payment_boolean) ---
INSERT INTO payment VALUES
(100001, 1001, 368545000000000, 'American Express', NULL, 11, 2022, 4764, 1),
(100002, 1002, 4937520000000000, 'Visa', NULL, 9, 2024, 321, 1),
(100003, 1003, 4808440000000000, 'Visa', NULL, 1, 2023, 456, 1),
(100004, 1004, 4828530000000000,'Visa', NULL, 4, 2023, 987, 1),
(100005, 1005, 4248170000000000,'Visa', NULL, 12, 2020, 159, 1);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
UPDATE customer
SET payment_id = 100001
WHERE cust_id = 1001;

UPDATE customer
SET payment_id = 100002
WHERE cust_id = 1002;

UPDATE customer
SET payment_id = 100003
WHERE cust_id = 1003;

UPDATE customer
SET payment_id = 100004
WHERE cust_id = 1004;

UPDATE customer
SET payment_id = 100005
WHERE cust_id = 1005;
COMMIT TRANSACTION;

BEGIN TRANSACTION;
--- 1 means True While 0 means False for the last colunm (address_boolean) ---
INSERT INTO address VALUES 
(1001, 1001, '7028 Rocky River Lane', NULL, 'Brentwood', 'NY', 11717, 'USA', 'Home', 1),
(1002, 1001, '9114 S. Queen Road', 'S. 309', 'Brentwood', 'NY', 11717, 'USA', 'Work', 0),
(1003, 1002, '82 Roosevelt Rd', NULL, 'Miami', 'FL', 33125,	'USA', 'Home', 1),
(1004, 1003, '35 Goldfield Drive', NULL, 'Bonita Springs', 'FL', 34135, 'USA', 'Home', 1),
(1005, 1004, '34 W. James Dr', 'Apt 7', 'Altoona', 'PA', 16601, 'USA', 'Home', 1),
(1006, 1005, '68 Ohio Street', NULL, 'Mableton', 'GA', 30126, 'USA', 'Home', 1);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
UPDATE customer
SET address_id = 1001
WHERE cust_id = 1001;

UPDATE customer
SET address_id = 1003
WHERE cust_id = 1002;

UPDATE customer
SET address_id = 1004
WHERE cust_id = 1003;

UPDATE customer
SET address_id = 1005
WHERE cust_id = 1004;

UPDATE customer
SET address_id = 1006
WHERE cust_id = 1005;
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO order_details VALUES
(1000001, 1001, NULL, 100001, '2019-12-20', '2019-12-20', '2019-12-20', 'FedEx Ground','2019-12-24', NULL, NULL),		
(1000002, 1001, NULL, 100001, '2020-02-01', '2020-02-29', '2020-02-01',	'FedEx Ground', '2020-03-04', NULL, '2020-03-08'),
(1000003, 1001, NULL, 100001, '2020-03-01', '2020-03-01', '2020-03-01', 'FedEx Ground', '2020-03-05', NULL, NULL),		
(1000004, 1002, NULL, 100002, '2019-04-01', '2019-04-01', '2019-04-01', 'UPS Next Day', '2019-04-05', NULL, NULL),		
(1000005, 1003, NULL, 100003, '2019-05-07', '2019-05-07', '2019-05-07', 'USPS Media Mail', '2019-05-11', NULL, NULL),
(1000006, 1004, NULL, 100004, '2019-03-08', '2019-03-08', '2019-03-08', 'USPS Media Mail', '2019-03-15', '2019-03-15', '2019-03-20'),
(1000007, 1005, NULL, 100005, '2020-05-20', '2020-05-20', '2020-05-21', 'USPS Registered Mail', NULL, NULL, NULL);			
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO cart VALUES
(1000011, 1000001,	NULL, 1, NULL),
(1000012, 1000002,	NULL, 1, NULL),	
(1000013, 1000003,	NULL, 1, NULL),	
(1000014, 1000004,	NULL, 1, NULL),	
(1000015, 1000005,	NULL, 1, NULL),	
(1000016, 1000006,	NULL, 1, NULL),	
(1000017, 1000007,	NULL, 1, NULL);
COMMIT TRANSACTION;	

BEGIN TRANSACTION;
UPDATE order_details
SET cart_id = 1000011
WHERE order_id = 1000001;

UPDATE order_details
SET cart_id = 1000012
WHERE order_id = 1000002;

UPDATE order_details
SET cart_id = 1000013
WHERE order_id = 1000003;

UPDATE order_details
SET cart_id = 1000014
WHERE order_id = 1000004;

UPDATE order_details
SET cart_id = 1000015
WHERE order_id = 1000005;

UPDATE order_details
SET cart_id = 1000016
WHERE order_id = 1000006;

UPDATE order_details
SET cart_id = 1000017
WHERE order_id = 1000007;
COMMIT TRANSACTION; 

BEGIN TRANSACTION;
INSERT INTO product_catalog VALUES
(10000000, 'Desktop computer', NULL, NULL, NULL, NULL, 1, 1000, 10),
(10000001, 'Laptop Computer', NULL, NULL, NULL, NULL, 1, 800, 3),
(10000002, 'Laptop Computer', NULL, NULL, NULL, NULL, 1, 1200, 3),
(10000003, 'Laptop Computer', NULL, NULL, NULL, NULL, 1, 900, 3),
(10000004, 'Laptop Computer', NULL, NULL, NULL, NULL, 1, 800, 3);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
UPDATE cart
SET product_id = 10000002
WHERE  cart_id = 1000011;

UPDATE cart
SET product_id = 10000002
WHERE  cart_id = 1000012;

UPDATE cart
SET product_id = 10000002
WHERE  cart_id = 1000013;

UPDATE cart
SET product_id = 10000003
WHERE  cart_id = 1000014;

UPDATE cart
SET product_id = 10000002
WHERE  cart_id = 1000015;

UPDATE cart
SET product_id = 10000004
WHERE  cart_id = 1000016;

UPDATE cart
SET product_id = 10000000
WHERE  cart_id = 1000017;
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO vendor VALUES
(101, 'Authur', 'Barrington', 578-0001, 'aut.barr@gmail.com', 'Attn: Supt. Window Services' ),
(102, 'Christine', 'Jacobs', 579-2045, 'chrisjacob@gmail.com', '1990 Westwood Bivd Ste 260'), 
(103, 'Colin', 'Richards', 578-0001, 'colin@gmail.com', 'PO Box 9369'),
(104, 'Christine', 'Jacobs', 579-2045, 'chrisjacob@gmail.com','PO Box 9369' ),
(105, 'John', 'Smith', 578-0001, 'pentersoncob@gmail.com', '4420 N First Street, Suite 108');
COMMIT TRANSACTION;

BEGIN TRANSACTION;
UPDATE product_catalog
SET vendor_id = 101
WHERE  product_id = 10000000;

UPDATE product_catalog
SET vendor_id = 102
WHERE  product_id = 10000001;

UPDATE product_catalog
SET vendor_id = 103
WHERE  product_id = 10000002;

UPDATE product_catalog
SET vendor_id = 104
WHERE  product_id = 10000003;

UPDATE product_catalog
SET vendor_id = 105
WHERE  product_id = 10000004;
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO color VALUES
(105, 10000000, 'Red'),
(106, 10000001, 'Blue'),
(107, 10000002, 'Silver'),
(108, 10000003, 'Pink'),
(109, 10000004, 'Black');
COMMIT TRANSACTION;

BEGIN TRANSACTION;
UPDATE product_catalog
SET color_id = 105
WHERE  product_id = 10000000;

UPDATE product_catalog
SET color_id = 106
WHERE  product_id = 10000001;

UPDATE product_catalog
SET color_id = 107
WHERE  color_id = 10000002;

UPDATE product_catalog
SET color_id = 108
WHERE  product_id = 10000003;

UPDATE product_catalog
SET color_id = 109
WHERE  product_id = 10000004;
COMMIT TRANSACTION;


BEGIN TRANSACTION;
INSERT INTO size VALUES
(1, 10000000, 30),
(2, 10000001, 13),
(3, 10000002, 15),
(4, 10000003, 11),
(5, 10000004, 13);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
UPDATE product_catalog
SET size_id = 1
WHERE  product_id = 10000000;

UPDATE product_catalog
SET size_id = 12
WHERE  product_id = 10000001;

UPDATE product_catalog
SET size_id = 3
WHERE  product_id = 10000002;

UPDATE product_catalog
SET size_id = 4
WHERE  product_id = 10000003;

UPDATE product_catalog
SET size_id = 5
WHERE  product_id = 10000004;
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO manufacturer VALUES
(10, 10000000, 'Dell', 'United States'),
(11, 10000001, 'Dell', 'United States'),
(12, 10000002, 'Apple', 'United States'),
(13, 10000003, 'Acer', 'Taiwan'),
(14, 10000003, 'Lenovo', 'Hong Kong(China)');
COMMIT TRANSACTION;

BEGIN TRANSACTION;
UPDATE product_catalog
SET manufacturer_id = 10
WHERE  product_id = 10000000;

UPDATE product_catalog
SET manufacturer_id = 11
WHERE  product_id = 10000001;

UPDATE product_catalog
SET manufacturer_id = 12
WHERE  product_id = 10000002;

UPDATE product_catalog
SET manufacturer_id = 13
WHERE  product_id = 10000003;

UPDATE product_catalog
SET manufacturer_id = 14
WHERE  product_id = 10000004;
COMMIT TRANSACTION;

--- You can grab this database and update the tables to include more fields--