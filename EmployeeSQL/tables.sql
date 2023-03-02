Create Table employees (
	emp_no int PRIMARY KEY NOT NULL,
	emp_title_id varchar(20),
	birth_date DATE,
	first_name varchar (20) NOT NULL,
	last_name varchar (20) NOT NULL,
	sex varchar(2),
	hire_date date,
	FOREIGN KEY (emp_title_id) REFERENCES title(title_id)
	
);

Create Table departments (
	dept_no varchar (20) PRIMARY KEY NOT NULL,
	dept_name varchar (20)
	
);

CREATE TABLE dept_emp (
	emp_no int NOT NULL,
	dept_no varchar(20) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	PRIMARY KEY(emp_no, dept_no) 
);

CREATE TABLE dept_manager (
	dept_no varchar(20),
	emp_no int PRIMARY KEY NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE salaries (
	emp_no int PRIMARY KEY NOT NULL,
	salary int,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE title (
	title_id varchar(20) PRIMARY KEY NOT NULL,
	title varchar(30)
);