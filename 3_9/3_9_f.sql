select company_name
from works
group by company_name
having count(distinct ID) >= all
       (select count(distinct ID)
        from works
        group by company_name)