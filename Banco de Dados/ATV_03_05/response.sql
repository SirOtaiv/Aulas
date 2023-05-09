--Questão 1--
select hr.employees.employee_id, hr.employees.first_name, hr.employees.last_name from hr.employees where (hr.employees.salary between 0 and 2000) or hr.employees.salary >= 5000;
select hr.employees.employee_id, hr.employees.first_name, hr.employees.last_name from hr.employees where hr.employees.salary <= 2000 and hr.employees.salary >= 5000;
select hr.employees.employee_id, hr.employees.first_name, hr.employees.last_name from hr.employees where hr.employees.salary not between 2000 and 5000;

--Questão 2--
select hr.departments.department_id, hr.departments.department_name, hr.departments.manager_id from hr.departments where hr.departments.location_id between 1500 and 2000;

--Questão 3--
select hr.departments.department_name, hr.employees.first_name||' '||hr.employees.last_name as MANAGER from hr.departments, hr.employees, hr.locations where hr.departments.location_id = hr.locations.location_id and hr.locations.city = 'sao paulo' and hr.departments.manager_id = hr.employees.employee_id;
select hr.departments.department_name, hr.employees.first_name||' '||hr.employees.last_name as MANAGER from hr.departments inner join hr.employees on hr.departments.manager_id = hr.employees.employee_id inner join hr.locations on hr.departments.location_id = hr.locations.location_id where hr.locations.city = 'sao paulo';

--Questão 4--
select hr.employees.employee_id, hr.employees.first_name||' '||hr.employees.last_name as EMPLOYEE from hr.employees where hr.employees.salary >= 5000;
select hr.employees.employee_id, hr.employees.first_name||' '||hr.employees.last_name as EMPLOYEE from hr.employees where not hr.employees.salary < 5000;

--Questão 5--
select hr.employees.employee_id, hr.employees.first_name||' '||hr.employees.last_name as EMPLOYEE_NAME, hr.employees.hire_date, hr.job_history.start_date, hr.job_history.end_date from hr.employees, hr.job_history where hr.job_history.employee_id = hr.employees.employee_id;
select hr.employees.employee_id, hr.employees.first_name||' '||hr.employees.last_name as EMPLOYEE_NAME, hr.employees.hire_date, hr.job_history.start_date, hr.job_history.end_date from hr.employees inner join hr.job_history on hr.job_history.employee_id = hr.employees.employee_id;

--Questão 6--
select hr.regions.region_name, hr.countries.country_name from hr.regions, hr.countries where hr.regions.region_id = hr.countries.region_id and (hr.countries.country_name like 'A%' or hr.countries.country_name like 'B%' or hr.countries.country_name like 'J%');
select hr.regions.region_name, hr.countries.country_name from hr.regions inner join hr.countries on hr.regions.region_id = hr.countries.region_id and (hr.countries.country_name like 'A%' or hr.countries.country_name like 'B%' or hr.countries.country_name like 'J%');
