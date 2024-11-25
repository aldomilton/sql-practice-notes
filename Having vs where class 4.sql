-- HAVING VS WHERE
-- Both were created to filter rows of data, but they filter 2 separate things
-- Where is going to filters rows based off columns of data
-- Having is going to filter rows based off aggregated columns when groupedemployee_demographicsemployee_demographics


SELECT  GENDER, AVG(AGE)
FROM employee_demographics
group by GENDER
HAVING AVG(AGE) > 40
;


SELECT OCCUPATION, AVG(SALARY)
FROM employee_salary
WHERE OCCUPATION LIKE '%MANAGER%'
group by occupation
HAVING AVG(salary) > 75000
;
