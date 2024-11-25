-- JOINS

 -- joins allow you to combine 2 tables together (or more) if they have a common column.
-- doesn't mean they need the same column name, but the data in it are the same and can be used to join the tables together
-- there are several joins we will look at today, inner joins, outer joins, and self joins


-- here are the first 2 tables - let's see what columns and data in the rows we have in common that we can join on

SELECT * 
FROM employee_demographics;

SELECT * 
FROM employee_salary;

-- INNER JOIN

-- start with an inner join -- inner joins return rows that are the same in both columns

-- since we have the same columns we need to specify which table they're coming from

SELECT  DEM.employee_id, AGE, occupation, GENDER
FROM employee_demographics AS DEM
INNER JOIN  employee_salary AS SAL
  ON DEM.employee_id = Sal.employee_id
  ;
  
  -- OUTER JOINS   ARE --LEFT JOIN & -- RIGHT JOIN
  
-- for outer joins we have a left and a right join
-- a left join will take everything from the left table even if there is no match in the join, but will only return matches from the right table
-- the exact opposite is true for a right join
  
  SELECT *
FROM employee_demographics AS DEM
left JOIN  employee_salary AS SAL
  ON DEM.employee_id = Sal.employee_id
  ;
  
SELECT *
FROM employee_demographics AS DEM
right JOIN  employee_salary AS SAL
  ON DEM.employee_id = Sal.employee_id
  ;
  
  -- SELF JOIN
  
  -- a self join is where you tie a table to itself
  -- what we could do is a secret santa so the person with the higher ID is the person's secret santa

SELECT EMP1.EMPLOYEE_ID AS EMP_SANTA,
EMP1.FIRST_NAME AS FIRST_NAME_SANTA,
EMP1.LAST_NAME AS LAST_NAME_SANTA,
EMP2.EMPLOYEE_ID AS EMP_NAME,
EMP2.FIRST_NAME AS FIRST_NAME_EMP,
EMP2.LAST_NAME AS LAST_NAME_EMP
FROM employee_salary EMP1
JOIN employee_salary EMP2
   ON EMP1.employee_id + 1 = EMP2.employee_id
   ;
  
-- JOINING MULTIPLE TABLES TOGETHER

SELECT *
FROM employee_demographics AS DEM
INNER JOIN  employee_salary AS SAL
  ON DEM.employee_id = Sal.employee_id
INNER JOIN PARKS_DEPARTMENTS PD
  ON SAL.DEPT_ID = PD.DEPARTMENT_ID
;
  
  
  SELECT *
  FROM PARKS_DEPARTMENTS;