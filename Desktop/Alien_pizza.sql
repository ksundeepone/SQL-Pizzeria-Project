CREATE DATABASE IF NOT EXISTS alien_pizza;

USE alien_pizza;

create table orders (
row_id int primary key,
order_id varchar(10),
created_at datetime,
item_name varchar(50),
item_cat varchar(50),
item_size varchar(20),
item_price decimal(5,2),
quantity int ,
cust_firstname varchar(50),
cust_lastname varchar(50),
delivery boolean,
delivery_address1 varchar(200),
delivery_address2 varchar(200),
delivery_city varchar(200),
delivery_zipcode varchar(200)
);