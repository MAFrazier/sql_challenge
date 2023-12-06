--Create Tables for each of the CSV Files 
--Title Table
Create Table titles (
	title_id varchar(5) Primary key,
	title varchar(30)
);

--Departments Table
Create Table departments (
	dept_no varchar(5) Primary key,
	dept_name varchar(30)
);

--Employees Table
Create Table employees (
	emp_no varchar(10) Primary Key,
	emp_title_id varchar(5) references titles(title_id),
	birth_date date,
	first_name varchar(45),
	last_name varchar(45),
	sex varchar(1),
	hire_date date
);

--Department-manager Table
Create Table dept_manager (
	dept_no varchar(5) references departments(dept_no),
	emp_no varchar(10) references employees(emp_no)
);

--Department employee Table
Create Table dept_emp (
	emp_no varchar(10) references employees(emp_no),
	dept_no varchar(5) references departments(dept_no)
);

--Salaries Table
Create Table salaries (
	emp_no varchar(10) references employees(emp_no),
	salary int
);
