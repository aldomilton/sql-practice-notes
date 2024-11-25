-- WINDOW FUNCTIONS

-- windows functions are really powerful and are somewhat like a group by - except they don't roll everything up into 1 row when grouping. 
-- windows functions allow us to look at a partition or a group, but they each keep their own unique rows in the output
-- we will also look at things like Row Numbers, rank, and dense rank

SELECT gender, AVG(SALARY) AS AVG_SALARY
FROM employee_demographics DEM
JOIN employee_SALARY SAL
    ON DEM.EMPLOYEE_ID = SAL.EMPLOYEE_ID
GROUP BY GENDER;

SELECT DEM.first_name, DEM.LAST_NAME, AVG(SALARY) OVER(PARTITION BY GENDER)
FROM employee_demographics DEM
JOIN employee_SALARY SAL
    ON DEM.EMPLOYEE_ID = SAL.EMPLOYEE_ID;
    
    
SELECT DEM.first_name, DEM.LAST_NAME, GENDER, SALARY,
AVG(SALARY) OVER(PARTITION BY GENDER ORDER BY DEM.employee_id) AS ROLLING_TOTAL
FROM employee_demographics DEM
JOIN employee_SALARY SAL
    ON DEM.EMPLOYEE_ID = SAL.EMPLOYEE_ID;
    
    
SELECT DEM.employee_id, DEM.first_name, DEM.LAST_NAME, GENDER, SALARY,
ROW_NUMBER() OVER(PARTITION BY GENDER ORDER BY GENDER) 
FROM employee_demographics DEM
JOIN employee_SALARY SAL
    ON DEM.EMPLOYEE_ID = SAL.EMPLOYEE_ID;
    
    
SELECT DEM.employee_id, DEM.first_name, DEM.LAST_NAME, GENDER, SALARY,
ROW_NUMBER() OVER(PARTITION BY GENDER ORDER BY SALARY DESC) AS ROW_NUM,
RANK() OVER(PARTITION BY GENDER ORDER BY SALARY DESC) RANK_NUM,
DENSE_RANK() OVER(PARTITION BY GENDER ORDER BY SALARY DESC) DENSE_RANK_NUM
FROM employee_demographics DEM
JOIN employee_SALARY SAL
    ON DEM.EMPLOYEE_ID = SAL.EMPLOYEE_ID;
    
    