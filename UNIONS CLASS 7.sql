-- UNIONS

-- A union is how you can combine rows together- not columns like we have been doing with joins where one column is put next to another
#Joins allow you to combine the rows of data


SELECT first_name, last_name
FROM employee_demographics
union 
SELECT first_name, last_name
FROM employee_salary;


SELECT first_name, last_name
FROM employee_demographics
union all
SELECT first_name, last_name
FROM employee_salary;


SELECT first_name, last_name, 'old man' as lable
FROM employee_demographics
where age > 40 AND gender = 'male'
union
SELECT first_name, last_name, 'old lady' as lable
FROM employee_demographics
where age > 40 AND gender = 'female'
union
SELECT first_name, last_name, 'highly paid employee' as lable
FROM employee_salary
where salary > 70000
order by first_name, last_name
;