-- WHERE CLAUSE
#WHERE Clause:
#-------------
#The WHERE clause is used to filter records (rows of data)

#It's going to extract only those records that fulfill a specified condition.

# So basically if we say "Where name is = 'Aldo' - only rows were the name = 'Aldo' will return
# So this is only effecting the rows, not the columns


SELECT *
FROM employee_salary
WHERE first_name = 'Leslie'
;


SELECT *
FROM employee_salary
WHERE salary <=50000
;

SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-06'
;


--- AND OR NOT -- logical operators

SELECT *
FROM employee_demographics
WHERE (first_name  = 'leslie' AND age = 44) or age > 44
;

-- LIKE statement
-- % and _
-- % means anything
-- _ means a specific value


SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a___%'
;

SELECT *
FROM employee_demographics
WHERE birth_date LIKE '1986%'


