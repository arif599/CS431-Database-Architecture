-- 1a. Get the names of projects controlled by the Administration department
SELECT PName -- getting project name
FROM Project 
JOIN Department ON Project.DNum = Department.DNumber -- joining project and department 
WHERE DName = 'Administration'; -- where the department name is 'Administration'

-- 1b. Get the names of managers of departments which do not have any male employeesSELECT Distinct FName, MInit, LName
SELECT FName, MInit, LName -- getting FName, MInit, LName
FROM Employee
JOIN Department ON Department.MgrSSN = Employee.SSN -- joining employee and department
WHERE Department.DNumber IN ( -- using IN becasue the inner query might return more than one value
    -- returns the number of the department where there are no male employees
    SELECT DNumber
    FROM Department
    JOIN Employee ON Department.DNumber = Employee.DNo
    GROUP BY DNumber
    HAVING SUM(CASE WHEN Employee.Sex = 'M' THEN 1 ELSE 0 END) = 0 -- if the sum of male employees is 0 then get the department number
);

-- 2a. Insert data to show that the current database model does not protect against employees supervising themselves
INSERT INTO Employee VALUES 
('John', 'S', 'Doe', 875159325, '1945-08-15', '123 main st, Bellaire, TX', 'M', 45000, 875159325, 4 ); -- inserting the same SSN for the SuperSSN

-- 2b. Remove the Houston location for department 5 (don’t worry about projects located in Houston)
DELETE FROM dept_locations
WHERE dept_locations.dlocation = 'Houston' AND dept_locations.dnum = 5; -- deleting the Houston location of the department 5

-- 2c. Add a column startDate to Employee to indicate when they started – this should not be null. You need to modify existing records to allow you to prevent null values in the column
ALTER TABLE Employee ADD startDate DATE NOT NULL DEFAULT current_date;


