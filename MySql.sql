SHOW DATABASES;
#Databases can be created using the CREATE DATABASE statement.

CREATE DATABASE `classicmodels`;
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

