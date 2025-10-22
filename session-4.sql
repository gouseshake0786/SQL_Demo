-- DML (Data Manipulation Language) Statements
-- 1. INSERT Statement: Used to add new records to a table.
INSERT INTO table_name (column1, column2, column3)
VALUES (value1, value2, value3),
       (value4, value5, value6),
       (value7, value8, value9);

CAUSION: Order of columns in INSERT statement must match the order of values provided.
Note: If a column is omitted in the INSERT statement, it will take the default value defined in the table schema or NULL if no default is set.



INSERT INTO Employees (FirstName, LastName, HireDate, Salary)
VALUES ('John', 'Doe', '2024-01-15', 60000);

-- 2. UPDATE Statement: Used to modify existing records in a table.
NOTE: Always include a WHERE clause in UPDATE statements to avoid updating all records unintentionally.

UPDATE Employees
SET Salary = 65000
WHERE EmployeeID = 1;

-- 3. DELETE Statement: Used to remove records from a table.
NOTE: Always include a WHERE clause in DELETE statements to avoid deleting all records unintentionally.

DELETE FROM Employees
WHERE EmployeeID = 1;

TRUNCATE TABLE Employees;
-- Note: TRUNCATE TABLE removes all records from a table but does not log individual row deletions. 
It is faster than DELETE for large tables but cannot be rolled back in some databases.
