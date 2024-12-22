SHOW DATABASES;
#Databases can be created using the CREATE DATABASE statement.

#CREATE DATABASE `classicmodels`;
#Once created, the database should appear in the list of databases

SHOW DATABASES;
#CREATE DATABASE IF NOT EXISTS `classicmodels`;
#We can also conditionally create a database if it doesn't already exist using:

CREATE DATABASE IF NOT EXISTS `classicmodels`;
#A database must be selected before it can be used. This is done with the USE statement.

USE `classicmodels`;
#To delete a database, use DROP DATABASE
#DROP DATABASE `classicmodels`;
#The database will no longer show up in the list of databases.

#The offices table can be created as follows:

DROP TABLE IF EXISTS `offices`;

CREATE TABLE `offices` (
  `officeCode` varchar(10) NOT NULL,
  `city` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `addressLine1` varchar(50) NOT NULL,
  `addressLine2` varchar(50),
  `state` varchar(50),
  `country` varchar(50) NOT NULL,
  `postalCode` varchar(15) NOT NULL,
  `territory` varchar(10) NOT NULL,
  PRIMARY KEY (`officeCode`)
);
#Primary Key: Note that we've included a PRIMARY KEY constraint on the officeCode column.
#The PRIMARY KEY constraint uniquely identifies each record in a table.
#Primary keys must contain UNIQUE values, and cannot contain NULL values.
#A table can have only ONE primary key constraint; and in the table, this primary key can consist of single or multiple columns (fields).
#Inserting Data: We can insert some rows into the table using the INSERT INTO statement.

INSERT INTO `offices` 

(`officeCode`,`city`,`phone`,`addressLine1`,`addressLine2`,`state`,`country`,`postalCode`,`territory`) VALUES 

('1','San Francisco','+1 650 219 4782','100 Market Street','Suite 300','CA','USA','94080','NA'),

('2','Boston','+1 215 837 0825','1550 Court Place','Suite 102','MA','USA','02107','NA'),

('3','NYC','+1 212 555 3000','523 East 53rd Street','apt. 5A','NY','USA','10022','NA'),

('4','Paris','+33 14 723 4404','43 Rue Jouffroy D\'abbans',NULL,NULL,'France','75017','EMEA'),

('5','Tokyo','+81 33 224 5000','4-1 Kioicho',NULL,'Chiyoda-Ku','Japan','102-8578','Japan'),

('6','Sydney','+61 2 9264 2451','5-11 Wentworth Avenue','Floor #2',NULL,'Australia','NSW 2010','APAC'),

('7','London','+44 20 7877 2041','25 Old Broad Street','Level 7',NULL,'UK','EC2N 1HN','EMEA');

#The INSERT statement has the following general syntax:
#INSERT INTO table_name(column_1, column_2,...) VALUES (value1_1,value1_2,...), (value2_1,value2_2,...), ...;
#If you're inserting values for all the columns, you can skip the column names:
#INSERT INTO table_name VALUES (value1_1, value1_2, ...), (value2_1,value2_2,...), ...;
#Viewing Data: The simplest way to view data from the table is using the SELECT statement. It has the following syntax:
#SELECT column1, column2, ... FROM table_name;
#You can also view data from all columns using

SELECT * FROM `offices`;
#The employees table can be created using the following code:

DROP TABLE IF EXISTS `employees`;

CREATE TABLE `employees` (
  `employeeNumber` int(11) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `extension` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `officeCode` varchar(10) NOT NULL,
  `reportsTo` int(11) DEFAULT NULL,
  `jobTitle` varchar(50) NOT NULL,
  PRIMARY KEY (`employeeNumber`),
  FOREIGN KEY (`reportsTo`) REFERENCES `employees` (`employeeNumber`),
  FOREIGN KEY (`officeCode`) REFERENCES `offices` (`officeCode`)
);

#Foreign Keys: A FOREIGN KEY is a field (or collection of fields) in one table, that refers to the PRIMARY KEY in another table.
#We've added a foreign key constraint for the the officeCode column, connecting it with the offices table. This ensure that we can't set an employee's officeCode to an invalid value.
#A foreign key constraint can also be established between a table and itself, as done in the case of the reportsTo column.
#Inserting Data: Let's insert some data into the table:

INSERT INTO `employees` VALUES
(1002,'Murphy','Diane','x5800','dmurphy@classicmodelcars.com','1',NULL,'President'),
(1056,'Patterson','Mary','x4611','mpatterso@classicmodelcars.com','1',1002,'VP Sales'),
(1076,'Firrelli','Jeff','x9273','jfirrelli@classicmodelcars.com','1',1002,'VP Marketing'),
(1088,'Patterson','William','x4871','wpatterson@classicmodelcars.com','6',1056,'Sales Manager (APAC)'),
(1102,'Bondur','Gerard','x5408','gbondur@classicmodelcars.com','4',1056,'Sale Manager (EMEA)'),
(1143,'Bow','Anthony','x5428','abow@classicmodelcars.com','1',1056,'Sales Manager (NA)'),
(1165,'Jennings','Leslie','x3291','ljennings@classicmodelcars.com','1',1143,'Sales Rep'),
(1166,'Thompson','Leslie','x4065','lthompson@classicmodelcars.com','1',1143,'Sales Rep'),
(1188,'Firrelli','Julie','x2173','jfirrelli@classicmodelcars.com','2',1143,'Sales Rep'),
(1216,'Patterson','Steve','x4334','spatterson@classicmodelcars.com','2',1143,'Sales Rep'),
(1286,'Tseng','Foon Yue','x2248','ftseng@classicmodelcars.com','3',1143,'Sales Rep'),
(1323,'Vanauf','George','x4102','gvanauf@classicmodelcars.com','3',1143,'Sales Rep'),
(1337,'Bondur','Loui','x6493','lbondur@classicmodelcars.com','4',1102,'Sales Rep'),
(1370,'Hernandez','Gerard','x2028','ghernande@classicmodelcars.com','4',1102,'Sales Rep'),
(1401,'Castillo','Pamela','x2759','pcastillo@classicmodelcars.com','4',1102,'Sales Rep'),
(1501,'Bott','Larry','x2311','lbott@classicmodelcars.com','7',1102,'Sales Rep'),
(1504,'Jones','Barry','x102','bjones@classicmodelcars.com','7',1102,'Sales Rep'),
(1611,'Fixter','Andy','x101','afixter@classicmodelcars.com','6',1088,'Sales Rep'),
(1612,'Marsh','Peter','x102','pmarsh@classicmodelcars.com','6',1088,'Sales Rep'),
(1619,'King','Tom','x103','tking@classicmodelcars.com','6',1088,'Sales Rep'),
(1621,'Nishi','Mami','x101','mnishi@classicmodelcars.com','5',1056,'Sales Rep'),
(1625,'Kato','Yoshimi','x102','ykato@classicmodelcars.com','5',1621,'Sales Rep'),
(1702,'Gerard','Martin','x2312','mgerard@classicmodelcars.com','4',1102,'Sales Rep');
#We can add a WHERE clause to a SELECT statement to select just the rows satisfying the given clause. Here's an example:

SELECT * FROM `employees` WHERE `jobTitle`="Sales Rep";
#Note that values with spaces must be placed within quotes e.g. "Sales Rep".
#The WHERE clause supports the following operators:
#=,>,<,>=,<=,<> or !=,BETWEEN,LIKE,IN
#expressions within a WHERE clause can be combined using AND and OR.

#SELECT column1, column2, ...
#FROM table_name
#WHERE condition1 AND condition2 AND condition3 ...;
#An expression within a WHERE clause can be negated using NOT.

#SELECT column1, column2, ...
#FROM table_name
#WHERE NOT condition;
#You can use a WHERE clause with SELECT, UPDATE, and DELETE statements.



#The structure of the table can be modified using ALTER TABLE
#Adding a new column to a table:
#1)ALTER TABLE table_name ADD column_name datatype;

#Removing a column from a table:
#2)ALTER TABLE table_name DROP COLUMN column_name;

#Changing the data type of a column:
#3)ALTER TABLE table_name MODIFY COLUMN column_name datatype;

#Renaming a column:
#4)ALTER TABLE table_name RENAME COLUMN old_column_name TO new_column_name;