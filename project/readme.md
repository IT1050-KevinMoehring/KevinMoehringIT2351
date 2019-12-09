#Executive Summary

2)
#Guitar Shop Design
i.  
The guitar_shop database includes 7 tables: addresses, administrators, categories, customers, order_items, orders, and products.
In the addresses table, there is a primary key named 'address_id', a foreign key named 'customer_id', and other details regarding
addresses including street address, city, state, zip code and phone number.
The administrators table consists of a primary key titled 'admin_id' as well as details on three users including their email
address, passwords, first name, and last name.
The categories tables consists of a primary key titled 'category_id' and a respective 'category_name'. This table serves to
further normalize the data from other tables.
The customers table consists of a primary key titled 'customer_id' as well as details about each respective customer including
email address, password, first name, last name, a foreign key for shipping address, and another foreign key for billing address.
The structure of this table closely mirrors the administrators table.
The order_items table consists of a primary key titled 'item_id', a foreign key for order_id, another foreign key for product_id,
the item price, discount amount, and quantity.
The orders table consists of a primary key titled 'order_id', a foreign key for customer_id, the order date, ship amount, tax
amount, ship date, a foreign key for ship_address_id, car type, card number, card expiration date, and a foreign key for
billing_address_id.
The products table consists of a primary key titled 'product_id', a foreign key for 'category_id, a product code, product name,
description, list price, discount percent, and date added.
ii. 
The addresses table is used to link the address_id field to the orders and customers table while maintaining an adequate
level of normalization.


#Conclusion



