create database P5;
CREATE TABLE employee (
emp_id INT,
first_name VARCHAR(50),
last_name VARCHAR(50),
dept VARCHAR(50),
salary INT,
hired_date DATE,
PRIMARY KEY (emp_id) 
) ENGINE=InnoDB;
CREATE INDEX idx_lastname ON employee (last_name);
CREATE INDEX idx_dept_salary ON employee (dept, salary);
SHOW INDEX FROM employee;
INSERT INTO employee (first_name, last_name, dept, salary, hired_date) VALUES
('Alice','Kumar','R&D',80000,'2020-03-15'),
('Bob','Sharma','Sales',60000,'2019-08-01'),
('Carol','Kumar','R&D',85000,'2021-02-10'),
('Dave','Patel','Marketing',55000,'2018-11-20'),
('Eve','Sharma','Sales',62000,'2022-01-05');
EXPLAIN SELECT * FROM employees WHERE last_name = 'Sharma';
SELECT * FROM employee WHERE last_name = 'Sharma';
ALTER TABLE employees
INSERT INTO employees (first_name, last_name, dept, salary, hired_date)
VALUES ('Frank','Kumar','R&D',78000,'2024-07-01');
UPDATE employees SET salary = salary + 2000 WHERE last_name = 'Sharma';
UPDATE employees SET last_name = 'Sharma-Old' WHERE emp_id = 2;
DELETE FROM employees WHERE emp_id = 4;
DROP INDEX idx_lastname ON employees;
ALTER TABLE employees ENGINE=InnoDB;