use quan_li_sinh_vien;
-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.
select * from subject sub 
where sub.credit = (select max(sub.credit) from subject sub);

-- Hiển thị các thông tin môn học có điểm thi lớn nhất.
select * from subject sub 
where sub.sub_id = (select m.sub_id from mark m where m.mark = (select max(m.mark) from mark m)); 

-- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần
select 
  s.student_id
, s.student_name
, s.address
, s.phone
, s.status
, s.class_id
, avg(m.mark) diem_trung_binh
 from student s 
 join mark m on s.student_id = m.student_id 
 group by s.student_id;