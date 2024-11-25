-- TEMPORARY TABLES

-- Temporary tables are tables that are only visible to the session that created them. 
-- They can be used to store intermediate results for complex queries or to manipulate data before inserting it into a permanent table.

-- There's 2 ways to create temp tables:
-- 1. This is the less commonly used way - which is to build it exactly like a real table and insert data into it

CREATE TEMPORARY TABLE TEMP_TABLE
(FIRST_NAME VARCHAR(50),
LAST_NAME VARCHAR(50),
FAVORITE_MOVIE VARCHAR(100)
);

SELECT*
FROM TEMP_TABLE;

INSERT INTO TEMP_TABLE
VALUES('ALDO', 'MILTON', 'LEO: GOAT' );

SELECT*
FROM TEMP_TABLE;

-- the second way is much faster and my preferred method
-- 2. Build it by inserting data into it - easier and faste

CREATE TEMPORARY TABLE SALARY_OVER_50K
SELECT*
FROM employee_salary
WHERE SALARY > 50000;

SELECT*
FROM SALARY_OVER_50K;








