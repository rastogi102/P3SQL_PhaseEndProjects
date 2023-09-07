Create Database EmployeeManagement
use EmployeeManagement
CREATE TABLE DeptMaster (
    DeptCode INT PRIMARY KEY,
    DeptName NVARCHAR(50)
);

-- Create the EmpProfile table with a foreign key constraint to DeptMaster
CREATE TABLE EmpProfile (
    EmpCode INT PRIMARY KEY,
    DateOfBirth DATETIME,
    EmpName NVARCHAR(50),
    DeptCode INT,
    FOREIGN KEY (DeptCode) REFERENCES DeptMaster(DeptCode)
);
-- Insert data into DeptMaster table
INSERT INTO DeptMaster (DeptCode, DeptName)
VALUES
    (1, 'HR'),
    (2, 'IT'),
    (3, 'Finance');

-- Insert data into EmpProfile table
INSERT INTO EmpProfile (EmpCode, DateOfBirth, EmpName, DeptCode)
VALUES
    (101, '1990-05-15', 'Ram', 1),
    (102, '1985-08-20', 'Vishal', 2),
    (103, '1992-11-10', 'Sam', 1),
    (104, '1988-03-25', 'Ravi', 3);

	select * from EmpProfile
	select * from DeptMaster