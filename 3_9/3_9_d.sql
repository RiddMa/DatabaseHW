select max(salary)
into @maxSalary
from works
where company_name = 'Small Bank Corporation';
select employee_name
from works
where salary > @maxSalary;