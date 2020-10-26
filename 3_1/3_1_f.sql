use Test;
select MAX(number)
from (select count(ID) as number
      from takes
      group by sec_id) as tmp;