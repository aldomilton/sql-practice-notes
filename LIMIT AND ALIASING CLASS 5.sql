-- LIMIT & ALIASING

-- Limit is just going to specify how many rows you want in the output

SELECT *
 FROM employee_demographics
 order by age desc
 limit 3,1
 
 ;
 
 
 -- ALIASING
 
 -- aliasing is just a way to change the name of the column (for the most part)
-- it can also be used in joins
 
 SELECT GENDER, AVG(AGE) AS AVG_AGE
 FROM employee_demographicsemployee_demographics
 GROUP BY GENDER 
 HAVING AVG(AGE) > 40

 
 
