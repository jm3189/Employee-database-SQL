Create Table salaries(
	emp_no int not null
	,salary int not null
	,foreign key (emp_no) references employees(emp_no));
	
Create Table employees(
	emp_no int not null primary key
	, emp_title_id varchar not null
	, birth_date date not null
	, first_name varchar not null
	, last_name varchar not null
	, sex varchar not null
	, hire_date date not null
	, Foreign key (emp_title_id) references titles(title_id));
create table dept_manager(
	dept_no varchar not null
	,emp_no int not null
	,foreign key (emp_no) references employees(emp_no)
	,foreign key (dept_no) references departments(dept_no));
create table salaries(
	emp_no int not null
	, salary int not null
	,foreign key (emp_no) references employees(emp_no));
create table dept_emp(
	emp_no int not null
	, dept_no varchar not null
	, foreign key (emp_no) references employees (emp_no)
	, foreign key (dept_no) references departments(dept_no));
