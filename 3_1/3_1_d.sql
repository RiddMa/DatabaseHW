use Test;
select MAX(salary)
into @maxSalary
from instructor;
select distinct name
from instructor
where salary = @maxSalary;