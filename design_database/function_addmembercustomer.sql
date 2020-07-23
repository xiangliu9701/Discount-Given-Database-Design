--DROP TABLE order_item;
--DROP TABLE orders;
--DROP TABLE cart;
--DROP TABLE item;
--DROP TABLE item_type;
--DROP TABLE guest;
--DROP TABLE member;
--DROP TABLE customer;
--DROP TABLE levels;

CREATE TABLE levels(
levels numeric(64) NOT NULL PRIMARY KEY,
points numeric(64) NOT NULL,
priviledge VARCHAR(255) NOT NULL);

CREATE TABLE customer(
cus_id numeric(64) NOT NULL PRIMARY KEY,
email_address VARCHAR(255) NOT NULL,
nickname VARCHAR(255) NOT NULL,
levels numeric(64) NOT NULL,
points numeric(64) NOT NULL,
lasted_logged DATE NOT NULL,
first_name VARCHAR(255) NOT NULL,
last_name VARCHAR(255) NOT NULL,
address VARCHAR(255) NOT NULL,
FOREIGN KEY (levels) REFERENCES levels(levels));

CREATE TABLE member(
cus_id numeric(64) NOT NULL PRIMARY KEY,
FOREIGN KEY (cus_id) REFERENCES customer(cus_id));

CREATE TABLE guest(
cus_id numeric(64) NOT NULL PRIMARY KEY,
FOREIGN KEY (cus_id) REFERENCES customer(cus_id));

CREATE TABLE item_type(
item_type VARCHAR(255) NOT NULL PRIMARY KEY,
sale_date DATE);

CREATE TABLE item(
item_id numeric(64) NOT NULL PRIMARY KEY,
item_type VARCHAR(255) NOT NULL,
purchasing_p numeric(8,4) NOT NULL,
selling_p numeric(8,4) NOT NULL,
size VARCHAR(255) NOT NULL,
FOREIGN KEY (item_type) REFERENCES item_type(item_type));

CREATE TABLE cart(
cus_id numeric(64) NOT NULL,
item_id numeric(64) NOT NULL,
FOREIGN KEY (cus_id) REFERENCES customer(cus_id),
FOREIGN KEY (item_id) REFERENCES item(item_id));

CREATE TABLE orders(
order_id numeric(64) NOT NULL PRIMARY KEY,
cus_id numeric(64) NOT NULL,
total_price numeric(64) NOT NULL,
FOREIGN KEY (cus_id) REFERENCES customer(cus_id));

CREATE TABLE order_item(
item_id numeric(64) NOT NULL,
item_type VARCHAR(255) NOT NULL,
cus_id numeric(64) NOT NULL,
FOREIGN KEY (cus_id) REFERENCES customer(cus_id),
FOREIGN KEY (item_id) REFERENCES item(item_id),
FOREIGN KEY (item_type) REFERENCES item_type(item_type));


	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
