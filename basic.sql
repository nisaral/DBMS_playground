

### Introduction to SQL
SQL (Structured Query Language) is a standard programming language specifically designed for managing and manipulating relational databases. It allows you to create, read, update, and delete data in a database, commonly referred to as CRUD operations.

### Basic SQL Commands

#### 1. Creating a Database
```sql
CREATE DATABASE database_name;
```

#### 2. Using a Database
```sql
USE database_name;
```

#### 3. Creating a Table
```sql
CREATE TABLE table_name (
    column1 datatype constraints,
    column2 datatype constraints,
    column3 datatype constraints
);
```
Example:
```sql
CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    grade CHAR(1)
);
```

#### 4. Inserting Data into a Table
```sql
INSERT INTO table_name (column1, column2, column3)
VALUES (value1, value2, value3);
```
Example:
```sql
INSERT INTO students (id, name, age, grade)
VALUES (1, 'John Doe', 20, 'A');
```

#### 5. Reading Data from a Table
```sql
SELECT column1, column2 FROM table_name;
```
To select all columns:
```sql
SELECT * FROM table_name;
```
Example:
```sql
SELECT name, age FROM students;
```

#### 6. Updating Data in a Table
```sql
UPDATE table_name
SET column1 = value1, column2 = value2
WHERE condition;
```
Example:
```sql
UPDATE students
SET grade = 'B'
WHERE id = 1;
```

#### 7. Deleting Data from a Table
```sql
DELETE FROM table_name
WHERE condition;
```
Example:
```sql
DELETE FROM students
WHERE id = 1;
```

#### 8. Dropping a Table
```sql
DROP TABLE table_name;
```

### Additional Features

#### Filtering Data
```sql
SELECT * FROM table_name
WHERE condition;
```
Example:
```sql
SELECT * FROM students
WHERE age > 18;
```

#### Sorting Data
```sql
SELECT * FROM table_name
ORDER BY column_name [ASC|DESC];
```
Example:
```sql
SELECT * FROM students
ORDER BY age DESC;
```

#### Aggregating Data
- Count:
```sql
SELECT COUNT(column_name) FROM table_name;
```
- Sum:
```sql
SELECT SUM(column_name) FROM table_name;
```
- Average:
```sql
SELECT AVG(column_name) FROM table_name;
```
- Grouping:
```sql
SELECT column_name, COUNT(*) FROM table_name
GROUP BY column_name;
```
Example:
```sql
SELECT grade, COUNT(*) FROM students
GROUP BY grade;
```

### NoSQL Introduction:
NoSQL (Not Only SQL) databases provide a mechanism for storing and retrieving data that is modeled in non-tabular forms. They are particularly useful for unstructured or semi-structured data and for applications requiring high scalability.

#### Types of NoSQL Databases
1. **Document Stores**: MongoDB, CouchDB
2. **Key-Value Stores**: Redis, DynamoDB
3. **Column Stores**: Cassandra, HBase
4. **Graph Databases**: Neo4j

### Basic MongoDB Commands

#### 1. Inserting Data
```python
# Insert a single document
collection.insert_one({"name": "Alice", "age": 25, "city": "New York"})

# Insert multiple documents
collection.insert_many([
    {"name": "Bob", "age": 30, "city": "Chicago"},
    {"name": "Carol", "age": 27, "city": "Los Angeles"}
])
```

#### 2. Reading Data
```python
# Find all documents
for doc in collection.find():
    print(doc)

# Find with a filter
for doc in collection.find({"age": {"$gt": 26}}):
    print(doc)
```

#### 3. Updating Data
```python
# Update a single document
collection.update_one({"name": "Alice"}, {"$set": {"age": 26}})

# Update multiple documents
collection.update_many({"city": "Chicago"}, {"$set": {"state": "Illinois"}})
```

#### 4. Deleting Data
```python
# Delete a single document
collection.delete_one({"name": "Bob"})

# Delete multiple documents
collection.delete_many({"city": "Chicago"})
