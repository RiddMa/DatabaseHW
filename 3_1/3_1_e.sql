use Test;
select count(ID)
from takes
where semester = 'Fall'
  and year = 2009;