-- STRING FUNCTIONS

SELECT length('SKYFALL');

SELECT FIRST_NAME, length(FIRST_NAME)
FROM EMPLOYEE_DEMOGRAPHICS
ORDER BY 2;

SELECT UPPER('skyfall');
SELECT LOWER('SKYFALL');

SELECT FIRST_NAME, UPPER(FIRST_NAME)
FROM EMPLOYEE_DEMOGRAPHICS;

SELECT FIRST_NAME, last_name,
concat(FIRST_NAME, last_name)
FROM EMPLOYEE_DEMOGRAPHICS;

SELECT FIRST_NAME, lower(FIRST_NAME)
FROM EMPLOYEE_DEMOGRAPHICS;

SELECT Ltrim('           sky           ');
SELECT RTRIM('            SKY                        ');


SELECT FIRST_NAME, 
LEFT(FIRST_NAME,4),
right(FIRST_NAME,4),
substring(FIRST_NAME, 3,2),
BIRTH_DATE,
substring(BIRTH_DATE, 6,2) AS BIRTH_MONTH
FROM EMPLOYEE_DEMOGRAPHICS;


SELECT FIRST_NAME, REPLACE(FIRST_NAME, 'a', 'z')
FROM EMPLOYEE_DEMOGRAPHICS;

select locate('t', 'aldomilton');

SELECT FIRST_NAME, locate('an',FIRST_NAME)
FROM EMPLOYEE_DEMOGRAPHICS;

SELECT FIRST_NAME, last_name,
concat(FIRST_NAME,'  ',last_name) as full_name
FROM EMPLOYEE_DEMOGRAPHICS;
