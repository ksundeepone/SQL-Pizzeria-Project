

CREATE DATABASE IF NOT EXISTS pizza;

USE pizza;

CREATE TABLE `orders` (
    `row_id` int  NOT NULL ,
    `order_id` varchar(10)  NOT NULL ,
    `created_at` datetime  NOT NULL ,
    `item_id` varchar(10)  NOT NULL ,
    `quantity` int  NOT NULL ,
    `cust_id` int  NOT NULL ,
    `add_id` int  NOT NULL ,
    `delivery` boolean  NOT NULL ,
    PRIMARY KEY (
        `row_id`
    )
);

CREATE TABLE `customer` (
    `cust_id` int  NOT NULL ,
    `cust_firstname` varchar(50)  NOT NULL ,
    `cust_lastname` varchar(50)  NOT NULL ,
    PRIMARY KEY (
        `cust_id`
    )
);

CREATE TABLE `address` (
    `add_id` int  NOT NULL ,
    `delivery_address1` varchar(200)  NOT NULL ,
    `delivery_address2` varchar(200)  NULL ,
    `delivery_city` varchar(200)  NOT NULL ,
    `delivery_zipcode` varchar(200)  NOT NULL ,
    PRIMARY KEY (
        `add_id`
    )
);

CREATE TABLE `item` (
    `item_id` varchar(10)  NOT NULL ,
    `sku` varchar(20)  NOT NULL ,
    `item_name` varchar(50)  NOT NULL ,
    `item_cat` varchar(50)  NOT NULL ,
    `item_size` varchar(20)  NOT NULL ,
    `item_price` decimal(5,2)  NOT NULL 
);

CREATE TABLE `ingredient` (
    `ing_id` varchar(10)  NOT NULL ,
    `ing_name` varchar(200)  NOT NULL ,
    `ing_weight` int  NOT NULL ,
    `ing_meas` varchar(20)  NOT NULL ,
    `ing_price` decimal(5,2)  NOT NULL ,
    PRIMARY KEY (
        `ing_id`
    )
);

CREATE TABLE `recipe` (
    `row_id` int  NOT NULL ,
    `recipe_id` varchar(20)  NOT NULL ,
    `ing_id` varchar(10)  NOT NULL ,
    PRIMARY KEY (
        `row_id`
    )
);

CREATE TABLE `inventory` (
    `inv_id` int  NOT NULL ,
    `quantity` int  NOT NULL ,
    `item_id` varchar(10)  NOT NULL ,
    PRIMARY KEY (
        `inv_id`
    )
);



#-------------------------------INSERTIONS--------------------------------------------------------------------- 


INSERT INTO orders (`row_id`, `order_id`, `created_at`, `item_id`, `quantity`, `cust_id`, `add_id`, `delivery`)
VALUES
(1, 'ORD123', '2023-10-01 08:30:45', 'ITEM001', 5, 101, 201, true),
(2, 'ORD124', '2023-10-02 09:15:30', 'ITEM002', 3, 102, 202, false),
(3, 'ORD125', '2023-10-03 10:45:22', 'ITEM003', 2, 103, 203, true),
(4, 'ORD126', '2023-10-04 12:20:15', 'ITEM004', 4, 104, 204, false),
(5, 'ORD127', '2023-10-05 13:55:37', 'ITEM005', 6, 105, 205, true),
(6, 'ORD128', '2023-10-06 15:40:19', 'ITEM006', 1, 106, 206, false),
(7, 'ORD129', '2023-10-07 16:10:58', 'ITEM007', 7, 107, 207, true),
(8, 'ORD130', '2023-10-08 17:25:42', 'ITEM008', 4, 108, 208, false),
(9, 'ORD131', '2023-10-09 18:45:53', 'ITEM009', 3, 109, 209, true),
(10, 'ORD132', '2023-10-10 20:00:11', 'ITEM010', 2, 110, 210, false);


INSERT INTO customer (cust_id, cust_firstname, cust_lastname)
VALUES
(1, 'John', 'Doe'),
(2, 'Jane', 'Smith'),
(3, 'Robert', 'Johnson'),
(4, 'Emily', 'Wilson'),
(5, 'Michael', 'Brown'),
(6, 'Laura', 'Davis'),
(7, 'James', 'Lee'),
(8, 'Sarah', 'Miller'),
(9, 'William', 'Clark'),
(10, 'Olivia', 'Taylor');


INSERT INTO address (add_id, delivery_address1, delivery_address2, delivery_city, delivery_zipcode)
VALUES
(101, '123 Main St', 'Apt 4B', 'New York', '10001'),
(102, '456 Elm St', NULL, 'Los Angeles', '90001'),
(103, '789 Oak St', 'Unit 10', 'Chicago', '60601'),
(104, '321 Pine St', 'Suite 202', 'San Francisco', '94101'),
(105, '555 Maple St', 'Apt 3C', 'Houston', '77001'),
(106, '777 Cedar St', NULL, 'Miami', '33101'),
(107, '222 Birch St', 'Apt 7D', 'Dallas', '75201'),
(108, '999 Spruce St', NULL, 'Seattle', '98101'),
(109, '444 Walnut St', 'Suite 303', 'Boston', '02201'),
(110, '888 Redwood St', 'Unit 5E', 'Philadelphia', '19101');


INSERT INTO item (item_id, sku, item_name, item_cat, item_size, item_price)
VALUES
('ITEM001', 'SKU001', 'Widget A', 'Electronics', 'Small', 19.99),
('ITEM002', 'SKU002', 'Gadget B', 'Electronics', 'Medium', 29.99),
('ITEM003', 'SKU003', 'Appliance C', 'Electronics', 'Large', 99.99),
('ITEM004', 'SKU004', 'Shirt X', 'Apparel', 'S', 14.99),
('ITEM005', 'SKU005', 'Jeans Y', 'Apparel', 'M', 34.99),
('ITEM006', 'SKU006', 'Dress Z', 'Apparel', 'L', 49.99),
('ITEM007', 'SKU007', 'Book I', 'Books', 'N/A', 9.99),
('ITEM008', 'SKU008', 'Movie J', 'Movies', 'DVD', 14.99),
('ITEM009', 'SKU009', 'Toy K', 'Toys', 'Small', 12.99),
('ITEM010', 'SKU010', 'Tool L', 'Tools', 'Large', 49.99);


INSERT INTO ingredient (ing_id, ing_name, ing_weight, ing_meas, ing_price)
VALUES
('ING001', 'Flour', 500, 'grams', 2.99),
('ING002', 'Sugar', 250, 'grams', 1.99),
('ING003', 'Eggs', 6, 'pieces', 3.99),
('ING004', 'Milk', 1, 'liter', 2.49),
('ING005', 'Chocolate Chips', 200, 'grams', 4.99),
('ING006', 'Butter', 250, 'grams', 2.99),
('ING007', 'Salt', 10, 'grams', 0.99),
('ING008', 'Baking Powder', 20, 'grams', 1.49),
('ING009', 'Vanilla Extract', 30, 'ml', 2.99),
('ING010', 'Cinnamon', 15, 'grams', 1.99);


INSERT INTO recipe (row_id, recipe_id, ing_id)
VALUES
(1, 'REC001', 'ING001'),
(2, 'REC002', 'ING002'),
(3, 'REC003', 'ING003'),
(4, 'REC004', 'ING004'),
(5, 'REC005', 'ING005'),
(6, 'REC006', 'ING006'),
(7, 'REC007', 'ING007'),
(8, 'REC008', 'ING008'),
(9, 'REC009', 'ING009'),
(10, 'REC010', 'ING010');


INSERT INTO inventory (inv_id, quantity, item_id)
VALUES
(1, 100, 'ITEM001'),
(2, 50, 'ITEM002'),
(3, 75, 'ITEM003'),
(4, 200, 'ITEM004'),
(5, 60, 'ITEM005'),
(6, 30, 'ITEM006'),
(7, 40, 'ITEM007'),
(8, 25, 'ITEM008'),
(9, 70, 'ITEM009'),
(10, 90, 'ITEM010');



#-------------------------------SELECT queries --------------------------------------------------------------------- 

select * from orders ;
select * from customer ;
select * from address ;
select * from item ;
select * from ingredient ;
select * from reccipe ;
select * from inventory ;



#-------------------------------SELECT queries ---------------------------------------------------------------------

SELECT c.cust_firstname as firstname,
a.delivery_zipcode, 
o.item_id 
from customer as c 
join orders as o on c.cust_id = o.cust_id
join address as a on  o.add_id = a.add_id
;


select c.cust_firstname, 
o.delivery,o.order_id,
i.item_price, i.item_name
from customer as c 
join orders as o on c.cust_id = o.cust_id 
join item as i on o.item_id = i.item_id;










