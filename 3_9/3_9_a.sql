select employee_name, city
from employee
         natural join works
where company_name = 'First Bank Corporation';