select company_name
from works
group by company_name
having avg(salary) > (select avg(salary)
                      from works
                      where company_name = 'First Bank Corporation')