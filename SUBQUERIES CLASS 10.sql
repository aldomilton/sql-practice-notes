-- Subqueries
#So subqueries are queries within queries.

SELECT * 
FROM employee_demographics
where employee_id in 
                   (SELECT employee_id
                    FROM employee_salary
                    where dept_id = 1 )
;


SELECT first_name, last_name, 
(select avg(salary)
FROM employee_salary)
FROM employee_salary;

select gender, avg(age), max(age), min(age), count(age)
from employee_demographics
group by gender;

select avg(max_age)
from
(select gender, 
avg(age) as avg_age, 
max(age) as max_age, 
min(age) as min_age, 
count(age) 
from employee_demographics
group by gender) as agg_table
;