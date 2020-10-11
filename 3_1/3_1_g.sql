use Test;
with course_taken_count(course_id, quantity) as (
    select course_id, count(id)
    from takes
    where year = 2009
      and semester = 'Fall'
    group by course_id
)
select course_id
from course_taken_count
where quantity = (
    select max(quantity)
    from course_taken_count
);