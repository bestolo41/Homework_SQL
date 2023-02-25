-- task1.1
INSERT INTO employee (first_name, last_name, gender, age)
VALUES ('Igor', 'Vasiliev', 'male', 27),
       ('Gennadiy', 'Bukin', 'male', 45);

-- task1.2

SELECT first_name AS Имя,
       last_name  AS Фамилия
FROM employee;

-- task1.3

SELECT *
FROM employee
WHERE age < 30
   OR age > 50;

-- task1.4

SELECT *
FROM employee
WHERE age BETWEEN 30 AND 50;

-- task1.5

SELECT *
FROM employee
ORDER BY last_name DESC;

-- task1.6

SELECT *
FROM employee
WHERE LENGTH(first_name) > 4;

-- task2.1

UPDATE employee
SET first_name = 'Igor'
WHERE first_name = 'Dmitry';
UPDATE employee
SET first_name = 'Marina'
WHERE first_name = 'Tatyana';

-- task2.2

SELECT first_name AS name,
       SUM(age)   AS average_age
FROM employee
GROUP BY first_name;

-- task2.3

SELECT first_name, age
FROM employee
WHERE age = (SELECT MIN(age)
             FROM employee);

-- task2.4

SELECT first_name,
       MAX(age) AS max_age
FROM employee
GROUP BY first_name
HAVING COUNT(first_name) > 1;