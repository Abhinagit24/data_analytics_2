--1. creating the table with the parameters
CREATE TABLE customer_info(
	CustomerID serial,
	CustomerName varchar(250) NOT NULL,
	Address varchar(250),
	City varchar(250),
	PostalCode int,
	Country varchar(250) NOT NULL,
	Email varchar(250) NOT NULL);
select *from customer_info;

--2. Insert 3 rows of data into these columns using INSERT.  The data you insert should make sense for the column.

insert into customer_info(customername,address,city,postalcode,Country,email)
values('Nancy John','12 South Ave','New York',12789,'United States','nat12@gmail.com'),
('James Paul','7 Benjamin St','Toronto',23009,'Canada','Jpal456@yahoo.com'),
('Amy Leon','1200 Joseph Ave','Florida',34897,'United States','amyln34@gmail.com');
select *from customer_info;

--3. Use an UPDATE to modify any portion of the data
update customer_info
set customername = 'Emily Nova',address = '24 Windon Ln'
where customername like 'Nancy%';
select*from customer_info;

--4. Finally, write a statement to delete one row of data.
delete from customer_info where customerid = 2;
select*from customer_info;