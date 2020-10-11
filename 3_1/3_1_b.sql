select course_id
into @course
from instructor
         natural join teaches
where name = 'Einstein';
select distinct ID
into @id
from takes
where course_id = @course;
select name from student where ID = @id;