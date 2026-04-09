CREATE DATABASE studentDB;
USE studentDB;

CREATE TABLE student (
    id INT,
    name VARCHAR(50),
    marks INT
);

INSERT INTO student VALUES (1, 'Ravi', 85);
INSERT INTO student VALUES (2, 'Sita', 90);

SELECT * FROM student