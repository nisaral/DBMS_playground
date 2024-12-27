## Relational Databases

There are many ways of storing data on a computer (text files, JSON files, CSV files, spreadsheets etc.). A relational database is a data storage system with the following properties:

1. Data is stored in tables e.g., `customers`, `products`, `offices`, `employees`, etc..
2. Each table has a set of columns. Each column is used to store a specific type of data.
3. Data is stored as rows (also called records) within database tables.
4. Tables support CRUD operations on rows: Create, Read, Update and Delete
4. Table can be connected to other tables using relationship constraints (e.g. an employee works at a specific office).
5. Information can be retrieved from the database using the Structured Query Language (SQL)
6. Databases can be hosted locally (on your computer) or on the cloud, for distributed access.

Here's what a table in a relational database looks like:

<img src="https://i.imgur.com/dUDclY0.png" width="400">

SQL tutorial-https://www.w3schools.com/sql/default.asp


### SQL Statements and Syntax

There are three types of SQL statements:

**1. Data Definition Language(DDL):**
The Data Definition Language contains commands that are less frequently used. DDL commands modify the actual structure of a database, rather than the database’s contents. example:
- Generating a table
- Modifying a structure of a table (altering)

**2. Data Control Language(DCL):**
The Data Control Language allows you to manipulate and manage user access rights on database objects. It consists of two commands: 
- the GRANT command, used to add database permissions for a user,
- and the REVOKE command, used to remove existing permissions. 

These two commands form the core of the relational database security model.

**3. Data Manipulation Language (DML):**
Data Manipulation Language contains the subset of SQL commands used most frequently. It is used for searching, inserting, updating, and deleting data that we will see in this notebook.


Some quick notes on the SQL syntax:

- SQL is case insensitive. You can type statements in upper case, lowercase or a mixture of both
- Database names can be typed with or without backquotes i.e. `classicmodels` or `` `classicmodels` ``
- SQL statement can span over multiple lines and must end with a semicolon `;`
- The statements in this tutorial can be executed on the MySQL command line or the workbench

The SQL syntax for each relational database software package is slightly different. Check the official documentation of your DB for details.

### SQL Data Types

The following data types are supported in most relational databases ([source](https://www.journaldev.com)):

<img src="https://i.imgur.com/DkPrZq0.png" width="640">

## Working with Tables


Let's create the tables for the Classic Models database according to the given Entity Relationship Diagram. We will also insert some data along the way.

* Tables in a database can be listed using the `SHOW TABLES` statement
* Tables are created using the `CREATE TABLE` statement
* Tables are deleted using the `DROP TABLE` statement
* You can view the structure of a table using the `DESCRIBE` statement
* Data can be inserted into a table using the `INSERT INTO` statement


SQL joins are essential for analyzing complex datasets and extracting meaningful insights-
![image](https://github.com/user-attachments/assets/f5cc0b62-fc01-4ca9-b6d3-64cb587bf93f)





