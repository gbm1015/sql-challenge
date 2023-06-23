# SQL Database Design Homework Solution: The analysis of Pewlett Hackard's (fictional company) employment activities during the 1980s and 1990s.

## Background

As a new data engineer at Pewlett Hackard (a fictional company), the first major task was to do a research project about people whom the company employed during the 1980s and 1990s. All that remained of the employee database from that period are six CSV files.  For this project, I designed the tables to hold the data from the CSV files, imported the CSV files into a SQL database, and then answered questions about the data. That is, I performed data modeling, data engineering, and data analysis, respectively.

### Before reading the homework csv data files and coding in sql

1. I created a new repository in GitHub for this project called `sql-challenge`. 
2. Inside the new repository I cloned the new repository to my computer.
3. Inside my local Git repository, I created a folder for the assignment and named it EmployeeSQL.
4. I downloaded the 6 CSV data files that incuded information about the employees, titles, salaries, departments, and department managers, into a folder tited "Data" within the folder EmployeeSQL.
  
### Files including data used for the SQL database tables

* EmployeeSQL/Data/departments.csv - information about the 9 departments (id number and name of department)
* EmployeeSQL/Data/dept_emp.csv - information about the cross reference between employee number and department number (which department each of the employees worked at)
* EmployeeSQL/Data/dept_manager.csv - information about the cross reference between a manager's employee number and department number (which department each of the 24 managers worked at)
* EmployeeSQL/Data/employees.csv - information about each of the 300,024 employees (employee id, title, birth date, first name, last name, sex, and hire date)
* EmployeeSQL/Data/salaries.csv - information about each of the 300,024 employees' salary (employee id, salary)
* EmployeeSQL/Data/titles.csv - information about each of the 7 titles (title id, title)

### Entity Relationship Diagram (ERD) of the 6 tables (csv files) and SQL code files

* QuickDBD-Free Diagram_EmployeeSQL.png - image file of the ERD 
* EmployeeSQLschema.sql - sql file of the table(s) schemata that was run to create the tables for the 6 csv files in PostgreSQL v14/pgAdmin4  (exported from QuickDBD after creating ERD)
* EmployeeSQLtablecreation.sql - another version of sql code to create tables for the 6 csv files in EmployeeSQL database
* EmployeeSQLanalysis.sql - sql code to answer the data analysis questions 1-8

## Analysis Questions

1. List the employee number, last name, first name, sex, and salary of each employee.

2. List the first name, last name, and hire date for the employees who were hired in 1986.

3. List the manager of each department along with their department number, department name, employee number, last name, and first name.

4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

6. List each employee in the Sales department, including their employee number, last name, and first name.

7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).


