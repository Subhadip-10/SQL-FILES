-- Due to message size limits, this file contains the table schema.
-- Paste your 31 INSERT statements below or regenerate them in parts.

CREATE TABLE Employees (
    Emp_ID INT PRIMARY KEY,
    Emp_Name VARCHAR(100) NOT NULL,
    Salary DECIMAL(12,2) NOT NULL,
    Joining_Date DATE NOT NULL,
    Department VARCHAR(50) NOT NULL,
    Gender CHAR(1) NOT NULL,
    Manager_ID INT NULL,
    Email VARCHAR(255) NOT NULL,
    CONSTRAINT FK_Employees_Manager
        FOREIGN KEY (Manager_ID) REFERENCES Employees(Emp_ID)
);

