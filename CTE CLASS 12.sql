-- CTE 

-- Using Common Table Expressions (CTE)
-- A CTE allows you to define a subquery block that can be referenced within the main query. 
-- It is particularly useful for recursive queries or queries that require referencing a higher level

WITH CTE_EXAMPLE (Gender, AVG_SAL, MAX_SAL, MIN_SAL, COUNT_SAL) AS
(
SELECT gender, avg(salary) avg_sal, max(salary) max_sal, min(salary) min_sal, count(salary) count_sal
FROM employee_demographics dem
join employee_salary sal
    on dem.employee_id = sal.employee_id
group by gender
)
SELECT avg(AVG_SAL)
FROM CTE_EXAMPLE
;


WITH CTE_EXAMPLE AS
(
SELECT employee_id, gender, birth_date
FROM employee_demographics 
where birth_date > '1985-01-01'
),
CTE_EXAMPLE2 as
(
SELECT employee_id, salary
FROM employee_salary
where salary > 50000
)
SELECT*
FROM CTE_EXAMPLE
JOIN CTE_EXAMPLE2
	ON CTE_EXAMPLE.EMPLOYEE_ID = CTE_EXAMPLE2.EMPLOYEE_ID 
;
