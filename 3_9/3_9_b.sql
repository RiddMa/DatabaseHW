select employee_name, street, city
from employee
         natural join works
where company_name = 'First Bank Corporation'
  and salary > 10000;