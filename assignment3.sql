USE GardenGlory;
GO


-- A.a
-- Write an SQL statement to show the LastName, FirstName, and CellPhone for the employees who have
-- worked on a property in Redmond. Remove duplicate rows in the result.
SELECT DISTINCT E.LastName, E.FirstName, E.CellPhone 
FROM EMPLOYEE E
JOIN PROPERTY_SERVICE PS ON E.EmployeeID = PS.EmployeeID
JOIN OWNED_PROPERTY OP ON PS.PropertyID = OP.PropertyID
WHERE OP.City = 'Redmond'


-- A.b
-- Write an SQL statement to show the LastName, FirstName, CellPhone, and total hours worked for each
-- employee who has worked on at least one property and sort the result by the total hours worked in the
-- ascending order. Give an appropriate column name to the computed results.
SELECT E.EmployeeID, E.LastName, E.FirstName, E.CellPhone, SUM(PS.HoursWorked) AS HoursWorked
FROM EMPLOYEE E
JOIN PROPERTY_SERVICE PS ON E.EmployeeID = PS.EmployeeID
GROUP BY E.EmployeeID, E.LastName, E.FirstName, E.CellPhone
ORDER BY SUM(PS.HoursWorked)


-- A.c
-- Write SQL statements to delete the employee with the cellphone number 206-254-1234. Assume that
-- ON DELETE NO ACTION is used in the PROPERTY_SERVICE table for the foreign key
-- EmployeeID, so you need to delete the related rows in the PROPERTY_SERVICE table first. Use
-- BEGIN TRAN and ROLLBACK properly.
BEGIN TRAN;
DELETE FROM 
DELETE FROM EMPLOYEE
WHERE CellPhone = '206-254-1234'
ROLLBACK;