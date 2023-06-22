-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/25eI32
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Drop table if exists
DROP TABLE IF EXISTS "titles";
DROP TABLE IF EXISTS "employees";
DROP TABLE IF EXISTS "departments";
DROP TABLE IF EXISTS "dept_emp";
DROP TABLE IF EXISTS "dept_manager";
DROP TABLE IF EXISTS "salaries";

-- Create new tables to import data
CREATE TABLE "titles" (
    title_id VARCHAR(5) PRIMARY KEY NOT NULL,
    title VARCHAR(20) NOT NULL
);

CREATE TABLE "employees" (
    emp_no INT PRIMARY KEY NOT NULL,
    emp_title_id VARCHAR(5),
    birth_date date,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    sex VARCHAR(1),
    hire_date date,
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

CREATE TABLE "departments" (
    dept_no VARCHAR(4) PRIMARY KEY NOT NULL,
    dept_name VARCHAR(20) NOT NULL
);

CREATE TABLE "dept_emp" (
    emp_no INT NOT NULL,
    dept_no VARCHAR(4) NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    PRIMARY KEY (dept_no, emp_no)
);

CREATE TABLE "dept_manager" (
    dept_no VARCHAR(4) NOT NULL,
    emp_no INT NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    PRIMARY KEY (dept_no, emp_no)
);

CREATE TABLE "salaries" (
    emp_no INT NOT NULL,
    salary INT NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    PRIMARY KEY (emp_no)
);

select * from titles;

select * from employees;

select * from departments;

select * from dept_emp;

select * from dept_manager;

select * from salaries;
