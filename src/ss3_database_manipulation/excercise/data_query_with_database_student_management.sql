use quan_li_sinh_vien;

select * from student where student_name like "h%";

select * from class where month(start_date) = 12;

select * from this_subject where credit between 3 and 5 ;

set SQL_SAFE_UPDATES = 0;
update student set class_id = 1 where student_name = "Hung";
set SQL_SAFE_UPDATES = 1;

select s.student_name, sub.sub_name, m.mark 
from (student s join mark m on m.student_id = s.student_id) join this_subject sub on sub.sub_id = m.sub_id 
order by m.mark desc, s.student_name asc;