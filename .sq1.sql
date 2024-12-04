CREATE TABLE Departments (
    dept_no INT PRIMARY KEY,
    dept_name VARCHAR(100)
);
CREATE TABLE dept_manager (
    dept_no INT,
    emp_no INT,
    PRIMARY KEY (dept_no, emp_no),
    FOREIGN KEY (dept_no) REFERENCES Departments(dept_no), 
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no) 
);

CREATE TABLE dept_manager (
    dept_no INT,
    emp_no INT,
    PRIMARY KEY (dept_no, emp_no),
    FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE employees (
    emp_no INT PRIMARY KEY,
    emp_title_id INT,
    birth_date DATE,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    sex VARCHAR(5),
    hire_date DATE,
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

CREATE TABLE salaries (
    emp_no INT PRIMARY KEY,
    salary INT,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE titles (
    title_id INT PRIMARY KEY,
    title VARCHAR(100)
);