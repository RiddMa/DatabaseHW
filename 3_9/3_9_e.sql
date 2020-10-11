select S.company_name
from company as S
where not exists((select city
                  from company
                  where company_name = 'Small Bank Corporation')
                 except
                     (select city
        from company as T
        where S.company_name = T.company_name))