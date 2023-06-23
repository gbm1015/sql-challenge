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
* EmployeeSQLschema.sql - sql file of the table(s) schemata  (exported 
* EmployeeSQLtablecreation.sql - final script, removing intermediate output tables, that generated the final analysis output for the pandas-challenge assignment
* EmployeeSQLtablecreation.sql - final script, removing intermediate output tables, that generated the final analysis output for the pandas-challenge assignment

## Analysis Steps
In the PyCitySchools assignment we were tasked with using Pandas and Jupyter Notebook to create a report that included the following disctrict schools' standardized testing performance analyses:
1. Disctrict level summary report, representing a high-level snapshot of the district's key metrics:
	* Total number of unique schools
	* Total students
	* Total budget
	* Average math score
	* Average reading score
	* % passing math (the percentage of students who passed math)
	* % passing reading (the percentage of students who passed reading)
	* % overall passing (the percentage of students who passed math AND reading)

2. School level summary report, representing the following key metrics about each school:
  * School name
  * School type
  * Total students
  * Total school budget
  * Per student budget
  * Average math score
  * Average reading score
  * % passing math (the percentage of students who passed math)
  * % passing reading (the percentage of students who passed reading)
  * % overall passing (the percentage of students who passed math AND reading)

3. School level summary reports comparing the top 5 performing schools to the bottom 5 performing schools.  The performance ranking was based on the percentage of students who passed both the Math and Reading standardized tests (% Overall Passing).

4. School level summary reports comparing the schools' average Math test scores and average Reading test scores by grade levels.

5. School level summary report comparing the schools' performances by 4 per-student budget spending categories.

6. School level summary report comparing the schools' performances by 3 school size categories.
