use quan_li_sinh_vien;

select * from student;

select * from student where status = 0;

select * from this_subject where  credit < 10;

select s.student_id, s.student_name, c.class_name from student s 
join class c on s.student_id = c.class_id;

select s.student_id, s.student_name, c.class_name 
from student s join class c on s.class_id = c.class_id
where c.class_name = 'a1';

select s.student_name, s.student_id, sub.sub_name, m.mark 
from student s join mark m on s.student_id = m.student_id join this_subject sub on m.sub_id = m.sub_id
where sub.sub_name = "CF";

