  #Executive Summary
This lab can be viewed as a progressive summary of the lessons learned throughout this IT2351 course. It begins with a short
analysis of the seven tables within the "my_guitar_shop" database followed by a short description as to the purpose of the
"addresses" table. ProjectQ1  uses

  #Guitar Shop Design

    i.  
The guitar_shop database includes seven tables: addresses, administrators, categories, customers, order_items, orders, and products.
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

  #Database Administration
    1. I would assign roles and privileges/rights to respective users according to their needs within the company. This can be
  necessary considering sensitive information such as account passwords are stored in the database. This might not be 
  appropriate information to show without requiring access to perform their job duties.
   2. Assigning privileges to certain statements and tables would be another aspect of the database that needs to be addressed.
  Eliminating unneccessary access rights reduces the risk of loss of data integrity due to human error in running incorrect
  queries.
   3. A backup and restore plan is arguably the most important aspect of the database that would need to be addressed. Perhaps
  daily incremental backups with weekly full backups, all of which stored offsite on a separate server to ensure a safe slave
  database remains in tact in case of emergency.
  
  #MySQL/SQL Certification
  Microsoft Certified Solutions Associate (MCSA): SQL 2016 Database Development Certification
  My career and even some of my personal life has been molded by my familiarity and skill within the Windows/Microsoft
  ecosystem. Passing the MCSA for SQL 2016 Database Development Certification is a great step forward in the world of data
  analysis and database administration. Starting with Excel, then into VBA and programming my own macros, stepping into Access
  and creating my own databases, then graduating into MS SQL is the next logical step in Microsoft's product line of data storage
  and analysis. This certification includes modules ranging from writing basic SELECT queries to storage of spatial data and SQL
  server concurrency. Upon passing this certification, the student should be eligle for serving as a mid-level position in a 
  database development environment. This certification goes over what I have learned throughout this course and builds on it,
  however in a different editor: MS SQL.
  
  

#Conclusion
This Lab, and by extension this course, has given me the foundation and building blocks to reach my career aspirations in
becoming a database administrator. It has given me a strong introduction to the MySQL environment and pointed me in the right
direction for future endeavors and has prepared me for success.


