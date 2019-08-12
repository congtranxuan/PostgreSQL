--1.
select e.emp_no, e.last_name, e.first_name, e.gender, s.salary
from employees e, salaries s
where e.emp_no = s.emp_no


--2.
select *
from employees em
where em.hire_date::text LIKE '1986%';

--3.
select dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name, dm.from_date, dm.to_date
from departments d, dept_manager dm, employees e
where dm.dept_no = d.dept_no and e.emp_no = dm.emp_no

--4. 
select e.emp_no, e.last_name, e.first_name, d.dept_name
from departments d, dept_emp de, employees e
where e.emp_no = de.emp_no and de.dept_no = d.dept_no;

--5. 
select *
from employees
where first_name ='Hercules' and last_name like 'B%' 

--6. 
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e, dept_emp de, departments d
where d.dept_name = 'Sales' and d.dept_no = de.dept_no and e.emp_no = de.emp_no;

--4.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from departments d, dept_emp de, employees e
where e.emp_no = de.emp_no and de.dept_no = d.dept_no;

--5. 
select *
from employees
where first_name ='Hercules' and last_name like 'B%' 

--6. 
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e, dept_emp de, departments d
where d.dept_name = 'Sales' and d.dept_no = de.dept_no and e.emp_no = de.emp_no;

--7.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e, dept_emp de, departments d
where (d.dept_name = 'Sales' or d.dept_name = 'Development') and d.dept_no = de.dept_no and e.emp_no = de.emp_no;

--8.
select last_name, count(emp_no) as Count
from employees
group by last_name
order by Count DESC;








