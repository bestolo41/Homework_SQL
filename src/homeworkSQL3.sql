-- task1.1

CREATE TABLE city
(
    city_id   BIGSERIAL   NOT NULL PRIMARY KEY,
    city_name VARCHAR(60) NOT NULL
);

-- task1.2

ALTER TABLE employee
    ADD city_id INT NOT NULL DEFAULT 0;

-- task1.4

INSERT INTO city (city_name)
VALUES ('Moscow'),
       ('Kazan'),
       ('Nizhniy Novgorod'),
       ('Samara');

UPDATE employee
SET city_id = (CASE
                   WHEN id = 2 THEN 1
                   WHEN id = 3 THEN 2
                   WHEN id = 4 THEN 3
                   WHEN id = 5 THEN 4
                   WHEN id = 6 THEN 2
    END);

-- task1.3

ALTER TABLE employee
    ADD FOREIGN KEY (city_id) REFERENCES city (city_id);

-- task2.1

SELECT first_name, last_name, city_name
FROM employee
         INNER JOIN city
                    ON employee.city_id = city.city_id;

-- task2.2

SELECT city_name, first_name, last_name
FROM employee
         RIGHT JOIN city
                    ON employee.city_id = city.city_id;

-- task2.3

SELECT first_name, last_name, city_name
FROM employee
         FULL JOIN city
                   ON employee.city_id = city.city_id;

-- task2.4

SELECT first_name, last_name, city_name
FROM employee
         CROSS JOIN city;