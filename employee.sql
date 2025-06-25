create database employees;
use employees;
CREATE TABLE Employees (
    ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Age INT,
    Department VARCHAR(50),
    Salary DECIMAL(10, 2)
);

-- Insert rows into the table
INSERT INTO Employees (ID, Name, Age, Department, Salary)
VALUES (1, 'CHIKKKI', 30, 'HR', 20000.00),
       (2, 'VINNU', NULL, 'Finance', 55000.00),     -- Missing age
       (3, 'ABHI', 28, NULL, 50000.00);    -- Missing department
       
       ALTER TABLE Employees
ALTER COLUMN Department SET DEFAULT 'Not Assigned';

-- Update NULLs to clean the data
UPDATE Employees
SET Age = 26
WHERE Age IS NULL AND ID>0;

UPDATE Employees
SET Department = 'General'
WHERE Department IS NULL AND ID>0 ;

UPDATE Employees
SET Salary = Salary + 5000
WHERE Department = 'General' AND ID > 0;


-- Delete a record if salary is too low 
DELETE FROM Employees
WHERE Salary < 30000 AND ID > 0;

SELECT * FROM Employees;