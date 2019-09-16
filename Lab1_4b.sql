/*
*********************************************************************
Downloaded from GeeksEngine.com
edited by Kevin Moehring, 9/15/19
*********************************************************************
*/


Select 
CompanyName as "Customer",
date_format(OrderDate, '%m/%d/%y') as 'Order Date',
date_format(ShippedDate, '%m/%d/%y') as 'Shippped Date'
From Customers
Join Orders
	on Customers.CustomerID = Orders.CustomerID;
