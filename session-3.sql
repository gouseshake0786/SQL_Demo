-- session-3

-- DDL (CREATE | DROP | ALTER )
CREATE : used to create database objects like databases, tables, and indexes.

CREATE DATABASE company_db;
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10, 2)
);

DROP : used to delete database objects.
DROP TABLE employees;
DROP DATABASE company_db;

ALTER : used to modify existing database objects.
ALTER TABLE employees ADD hire_date DATE;
ALTER TABLE employees DROP COLUMN hire_date;
ALTER TABLE employees MODIFY COLUMN salary DECIMAL(12, 2);
ALTER TABLE employees RENAME TO staff;

-- DML
INSERT : used to add new records to a table.
INSERT INTO employees (employee_id, first_name, last_name, department, salary)
VALUES (1, 'John', 'Doe', 'Engineering', 75000.00);
INSERT INTO employees (employee_id, first_name, last_name, department, salary)
VALUES (2, 'Jane', 'Smith', 'Marketing', 65000.00);
INSERT INTO employees (employee_id, first_name, last_name, department, salary)
VALUES (3, 'Alice', 'Johnson', 'Sales', 70000.00);
INSERT INTO employees (employee_id, first_name, last_name, department, salary)
VALUES (4, 'Bob', 'Brown', 'Engineering', 80000.00);
INSERT INTO employees (employee_id, first_name, last_name, department, salary)
VALUES (5, 'Charlie', 'Davis', 'HR', 60000.00);

===========================================================================================
-- INSERT : used to insert data into a table from another table.(VVV IMPORTANT)
INSERT INTO employees (employee_id, first_name, last_name, department, salary)
SELECT employee_id, first_name, last_name, department, salary
FROM temp_employees

============================================================================================
ADD : used to add new columns to an existing table.
ALTER TABLE employees ADD phone_number VARCHAR(15);
adding a new column always adds the column at the end of the table.
-- To add a column at a specific position, you may need to recreate the table.


ALTER TABLE employees ADD hire_date DATE;

drop table employees
