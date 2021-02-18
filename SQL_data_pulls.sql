select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees e
left join salaries s on s.emp_no = e.emp_no;

select e.last_name, e.first_name, e.hire_date
from employees e
where e.hire_date between '01-01-1986' and '12-31-1986';

select d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
from employees e
join dept_manager dm on dm.emp_no = e.emp_no
join departments d on d.dept_no = dm.dept_no;

select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
join dept_emp de on de.emp_no = e.emp_no
join departments d on d.dept_no = de.dept_no;

select e.first_name, e.last_name, e.sex
from employees e
where e.first_name = 'Hercules'
and e.last_name like 'B%';

select  e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
left join dept_manager dm on dm.emp_no = e.emp_no
left join departments d on d.dept_no = dm.dept_no
where d.dept_name = 'Sales';

select  e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
left join dept_manager dm on dm.emp_no = e.emp_no
left join departments d on d.dept_no = dm.dept_no
where d.dept_name = 'Sales'
or d.dept_name = 'Development';

select count(e.last_name),e.last_name
from employees e
group by e.last_name
order by count(e.last_name) desc;
