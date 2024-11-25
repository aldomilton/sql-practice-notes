-- Group By
-- When you use the GROUP BY clause in a MySQL query, it groups together rows that have the same values in the specified column or columns.
-- GROUP BY is going to allow us to group rows that have the same data and run aggregate functions on them

-- SUM(): Adds up all the values in a specified column.
-- AVG(): Calculates the average of a set of values.
-- COUNT(): Counts the number of rows or the number of non-NULL values in a column.
-- MAX(): Returns the highest value in a column.
-- MIN(): Returns the lowest value in a column.

SELECT * 
FROM employee_demographics;

SELECT gender, avg(age), max(age), min(AGE), count(AGE)
FROM employee_demographics
group by gender
;

SELECT  occupation, salary
FROM employee_salary
group by occupation, salary
;

-- ORDER BY
#The ORDER BY keyword is used to sort the result-set in ascending or descending order.

#The ORDER BY keyword sorts the records in ascending order by default. To sort the records in descending order, use the DESC keyword.


SELECT * 
FROM employee_demographics
order by gender, age DESC                   -- DESC,ASC, 
;

