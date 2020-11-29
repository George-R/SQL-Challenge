select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
from employees
join salaries
	on employees.emp_no = salaries.emp_no;
	
	
select first_name, last_name, hire_date
from employees
where hire_date LIKE '%1986';


select departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
from dept_manager
join departments
	on dept_manager.dept_no = departments.dept_no
join employees
	on dept_manager.emp_no = employees.emp_no;
	

select dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
from dept_emp
join departments
	on dept_emp.dept_no = departments.dept_no
join employees
	on dept_emp.emp_no = employees.emp_no;


select first_name, last_name, sex
from employees
where first_name = 'Hercules'
and 
last_name like 'B%';


select dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
from dept_emp
join departments
	on dept_emp.dept_no = departments.dept_no
join employees
	on dept_emp.emp_no = employees.emp_no
Where dept_name = 'Sales';


select dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
from dept_emp
join departments
	on dept_emp.dept_no = departments.dept_no
join employees
	on dept_emp.emp_no = employees.emp_no
Where dept_name = 'Sales' or dept_name = 'Development';


SELECT 
  employees.last_name, 
  COUNT(employees.last_name) as total
FROM employees
GROUP BY employees.last_name
ORDER BY count(employees.last_name) DESC

