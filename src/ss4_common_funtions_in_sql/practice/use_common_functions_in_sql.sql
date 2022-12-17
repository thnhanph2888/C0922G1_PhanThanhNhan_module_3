use quan_li_sinh_vien;

select address, count(*) as 'so luong' 
from student 
group by address;
 
select s.student_id, s.student_name, avg(m.mark) as avg
from student s join mark m on m.student_id = s.student_id 
group by s.student_id, s.student_name;

select s.student_id, s.student_name, avg(m.mark) as avg
from student s join mark m on m.student_id = s.student_id 
group by s.student_id, s.student_name having avg > 15;

select s.student_id, s.student_name, avg(m.mark) as avg
from student s join mark m on m.student_id = s.student_id 
group by s.student_id, s.student_name having avg >= all (select avg(m.mark) from mark m group by m.mark_id);
