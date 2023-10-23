CREATE DATABASE IF NOT EXISTS alien_pizza;

USE alien_pizza;

DROP TABLE IF EXISTS orders;
create table orders (
row_id int PRIMARY KEY,
order_id varchar(10),
created_at datetime,
item_id varchar(10) ,
quantity int ,
cust_id int ,
add_id int ,
delivery boolean
);

0ADDED to first branch 

there is the change 


CREATE TABLE customer (
cust_id int PRIMARY KEY,
cust_firstname varchar(50),
cust_lastname varchar(50)
);


CREATE TABLE address(
add_id INT PRIMARY KEY,
delivery_address1 varchar(200),
delivery_address2 varchar(200) NULL ,
delivery_city varchar(200),
delivery_zipcode varchar(200)
);


CREATE TABLE item(
item_id varchar(10) PRIMARY KEY,
item_name varchar(50),
item_cat varchar(50),
item_size varchar(20),
item_price decimal(5,2)
);