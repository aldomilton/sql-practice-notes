-- TRIGGERS AND EVENTS 

-- a Trigger is a block of code that executes automatically executes when an event takes place in a table.

-- for example we have these 2 tables, invoice and payments - when a client makes a payment we want it to update the invoice field "total paid"
-- to reflect that the client has indeed paid their invoice

SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;

DELIMITER $$
CREATE TRIGGER EMPLOYEE_INSERT
	AFTER INSERT ON EMPLOYEE_SALARY
    FOR EACH ROW
BEGIN
	INSERT INTO employee_demographics (EMPLOYEE_ID, FIRST_NAME,LAST_NAME)
    VALUES (NEW.EMPLOYEE_ID, NEW.FIRST_NAME, NEW.LAST_NAME);
END $$
DELIMITER ;

INSERT INTO employee_SALARY (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, OCCUPATION, SALARY, DEPT_ID)
VALUES(13, 'ALDO', 'MILTON', 'ENTERTAINMENT', 700000, NULL);


-- EVENTS

-- now let's look at Events

-- Now I usually call these "Jobs" because I called them that for years in MSSQL, but in MySQL they're called Events

-- Events are task or block of code that gets executed according to a schedule. These are fantastic for so many reasons. Importing data on a schedule. 
-- Scheduling reports to be exported to files and so many other things
-- you can schedule all of this to happen every day, every monday, every first of the month at 10am. Really whenever you want

-- This really helps with automation in MySQL

-- let's say Parks and Rec has a policy that anyone over the age of 60 is immediately retired with lifetime pay
-- All we have to do is delete them from the demographics table


SELECT *
FROM employee_demographics;

DELIMITER &&
CREATE EVENT DELETE_RETIREES
ON SCHEDULE EVERY 30 SECOND
DO
BEGIN
	DELETE
	FROM employee_demographics
    WHERE AGE >= 60;
END $$
DELIMITER ;

SHOW VARIABLES LIKE 'event%'; 


