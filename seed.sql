DROP DATABASE IF EXISTS employeesDB;

CREATE DATABASE employeesDB;
USE employeesDB;

CREATE TABLE department
(id INT PRIMARY KEY AUTO_INCREMENT,
department_name VARCHAR(30)
);

CREATE TABLE roles
(id INT PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(30),
salary DECIMAL(10,2),
department_id INT
);

CREATE TABLE employee
(id INT PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(30),
last_name VARCHAR(30),
role_id INT,
manager_id INT
);

/* !!! COLUMN NAMES CAN BE ALTERED IF DIFFERENT!!! */
INSERT INTO department (department_name) VALUES
("Managers"), ("Engineers"), ("Salespersons");

INSERT INTO roles (title, salary, department_id) VALUES
("Manager", 100000.00, 1), ("Engineer", 90000.00, 2), ("Salesperson", 70000.00, 3);

INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES
("Jane", "Doe", 1, 3),
("John", "Doe", 2, 1),
("Leo", "Landgraf", 2, 1),
("Daniel", "Angulo", 3, 2),
("Stacy", "Aguilar", 3, 2),
("Matthew", "Bell", 3, 2),
("Julian", "Acosta", 3, 2),
("Tyler", "Arthur", 3, 2),
("James", "Banuelos", 3, 2),
("Art", "Aragon", 3, 2),
("Jamie", "Bunnell", 3, 2),
("Jaycee", "Bagtas", 3, 3),
("Alexis", "Chalita", 3, 3),
("Thomas", "Gonzalez", 3, 3),
("Collin", "Kier", 3, 3),
("Brian", "Monteverde", 3, 3),
("Greg", "Schuman", 3, 3),
("Samuel", "Fabella", 3, 3),
("Jake", "Riley", 3, 3);
