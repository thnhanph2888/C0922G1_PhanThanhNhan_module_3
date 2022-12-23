use furama_resort_management;

-- 21.Tạo khung nhìn có tên là v_nhan_vien để lấy được thông tin của tất cả các nhân viên có địa chỉ là “Hải Châu” 
-- và đã từng lập hợp đồng cho một hoặc nhiều khách hàng bất kì với ngày lập hợp đồng là “12/12/2019”.
create view v_nhan_vien as
select distinct * from nhan_vien nv
where nv.ma_nhan_vien in 
(select nv.ma_nhan_vien from nhan_vien nv join hop_dong hd on nv.ma_nhan_vien = hd.ma_nhan_vien
where nv.dia_chi like '% Hải Châu' 
and hd.ngay_lam_hop_dong = '2019-12-12');
select * from v_nhan_vien;
drop view v_nhan_vien;

-- 22.Thông qua khung nhìn v_nhan_vien thực hiện cập nhật địa chỉ 
-- thành “Liên Chiểu” đối với tất cả các nhân viên được nhìn thấy bởi khung nhìn này.
set sql_safe_updates = 0;
update nhan_vien nv 
set nv.dia_chi = 'Liên Chiểu' 
where nv.ma_nhan_vien in 
(select ma_nhan_vien from v_nhan_vien);
set sql_safe_updates = 1;

-- 23.Tạo Stored Procedure sp_xoa_khach_hang dùng để xóa thông tin của một khách hàng nào đó
--  với ma_khach_hang được truyền vào như là 1 tham số của sp_xoa_khach_hang.
delimiter ..
create procedure sp_xoa_khach_hang (ma_khach_hang int) 
begin
     delete from khach_hang kh
     where kh.ma_khach_hang = ma_khach_hang;
end ..
delimiter ;
call sp_xoa_khach_hang (9);

-- 24.Tạo Stored Procedure sp_them_moi_hop_dong dùng để thêm mới vào bảng hop_dong với yêu cầu
--  sp_them_moi_hop_dong phải thực hiện kiểm tra tính hợp lệ của dữ liệu bổ sung, với nguyên tắc
--  không được trùng khóa chính và đảm bảo toàn vẹn tham chiếu đến các bảng liên quan.

delimiter //
create procedure sp_them_moi_hop_dong (ma_hop_dong_moi int,
							ngay_lam_hop_dong date,
							ngay_ket_thuc date,
							tien_dat_coc double,
							ma_nhan_vien_moi int,
							ma_khach_hang_moi int,
							ma_dich_vu_moi int) 
begin
	declare a, b, c, d int;
	set a = 0;
	set b = 0;
	set c = 0;
	set d = 0;
	select count(*) into a from hop_dong hd where hd.ma_hop_dong = ma_hop_dong_moi;
	select count(*) into b from nhan_vien   where ma_nhan_vien_moi not in (select ma_nhan_vien from nhan_vien);
    select count(*) into c from khach_hang  where ma_khach_hang_moi not in (select ma_khach_hang from khach_hang);
	select count(*) into d from dich_vu  where ma_dich_vu_moi not in (select ma_dich_vu from dich_vu);
	if a = 0 and b = 0 and c = 0 and d = 0 then
		 insert into hop_dong (ma_hop_dong, ngay_lam_hop_dong, ngay_ket_thuc, tien_dat_coc, ma_nhan_vien, ma_khach_hang, ma_dich_vu) 
         values (ma_hop_dong_moi, ngay_lam_hop_dong, ngay_ket_thuc, tien_dat_coc, ma_nhan_vien_moi, ma_khach_hang_moi, ma_dich_vu_moi);
	end if;
end //
delimiter ;
drop procedure sp_them_moi_hop_dong;
call sp_them_moi_hop_dong(127, '2020-12-08', '2020-12-08', 0, 99, 1, 3);

-- 25.Tạo Trigger có tên tr_xoa_hop_dong khi xóa bản ghi trong bảng hop_dong thì hiển thị tổng số lượng bản ghi còn lại có trong bảng hop_dong
--  ra giao diện console của database.
-- Lưu ý: Đối với MySQL thì sử dụng SIGNAL hoặc ghi log thay cho việc ghi ở console.
create table `history` (
	id int auto_increment primary key,
    ban_ghi_con_lai int,
    time_delete date
); 
delimiter //
create trigger tr_xoa_hop_dong
after delete on hop_dong
for each row
begin
     insert into history (ban_ghi_con_lai, time_delete)
     values ((select count(*) from hop_dong), now());
end //
delimiter ;
drop trigger tr_xoa_hop_dong;
delete from hop_dong where ma_hop_dong = 2;

-- 26.Tạo Trigger có tên tr_cap_nhat_hop_dong khi cập nhật ngày kết thúc hợp đồng, cần kiểm tra xem thời gian cập nhật có phù hợp hay không,
--  với quy tắc sau: Ngày kết thúc hợp đồng phải lớn hơn ngày làm hợp đồng ít nhất là 2 ngày. Nếu dữ liệu hợp lệ thì cho phép cập nhật,
--  nếu dữ liệu không hợp lệ thì in ra thông báo “Ngày kết thúc hợp đồng phải lớn hơn ngày làm hợp đồng ít nhất là 2 ngày” trên console của database.
-- Lưu ý: Đối với MySQL thì sử dụng SIGNAL hoặc ghi log thay cho việc ghi ở console.
create table history_update (
    id int auto_increment primary key,
	ngay_ket_thuc_old date,
    ngay_ket_thuc_new date,
    time_update date
)

delimiter //
create trigger tr_cap_nhat_hop_dong
after update on hop_dong
for each row
begin 
	  if day(new.ngay_ket_thuc) - day(old.ngay_lam_hop_dong) > 2 then
          insert into history_update (ngay_ket_thuc_old, ngay_ket_thuc_new, time_update)
          values (old.ngay_ket_thuc, new.ngay_ket_thuc, now());
	  else 
	  signal sqlstate '45000'
	  set message_text = 'Ngày kết thúc hợp đồng phải lớn hơn ngày làm hợp đồng ít nhất là 2 ngày'; 
	  end if; 
end //
delimiter ;

drop trigger tr_cap_nhat_hop_dong;

update hop_dong 
set ngay_ket_thuc = '2021-03-15'
where ma_hop_dong = 3;

-- 27.Tạo Function thực hiện yêu cầu sau:
-- a.Tạo Function func_dem_dich_vu: Đếm các dịch vụ đã được sử dụng với tổng tiền là > 2.000.000 VNĐ.
delimiter //
create function func_dem_dich_vu ()
returns int 
deterministic
begin
	declare count int;
    select count(*) into count from dich_vu dv
    where dv.ma_dich_vu in 
    (select dv.ma_dich_vu 
     from dich_vu dv 
     join hop_dong hd on dv.ma_dich_vu = hd.ma_dich_vu
     where dv.chi_phi_thue > 2000000
    );
    return count;
end //
delimiter ;
select func_dem_dich_vu() ;

-- b.Tạo Function func_tinh_thoi_gian_hop_dong: Tính khoảng thời gian dài nhất tính từ lúc bắt đầu làm hợp đồng đến lúc kết thúc
--  hợp đồng mà khách hàng đã thực hiện thuê dịch vụ (lưu ý chỉ xét các khoảng thời gian
--  dựa vào từng lần làm hợp đồng thuê dịch vụ, không xét trên toàn bộ các lần làm hợp đồng).
--  Mã của khách hàng được truyền vào như là 1 tham số của function này.
delimiter //
create function func_tinh_thoi_gian_hop_dong (in_ma_khach_hang int)
returns int
deterministic 
begin
     declare thoi_gian_hop_dong int;
	 select day(hd.ngay_ket_thuc) - day(hd.ngay_lam_hop_dong) into thoi_gian_hop_dong from hop_dong hd 
     join khach_hang kh on hd.ma_khach_hang = kh.ma_khach_hang
     where kh.ma_khach_hang = in_ma_khach_hang 
     Limit 1;
     return thoi_gian_hop_dong;
end //
delimiter ;
drop function func_tinh_thoi_gian_hop_dong;
select func_tinh_thoi_gian_hop_dong(3);

-- 28.Tạo Stored Procedure sp_xoa_dich_vu_va_hd_room để tìm các dịch vụ được thuê bởi khách hàng với loại dịch vụ là “Room” 
-- từ đầu năm 2015 đến hết năm 2019 để xóa thông tin của các dịch vụ đó (tức là xóa các bảng ghi trong bảng dich_vu) 
-- và xóa những hop_dong sử dụng dịch vụ liên quan (tức là phải xóa những bản gi trong bảng hop_dong) và những bản liên quan khác.
delimiter //
create procedure sp_xoa_dich_vu_va_hd_room ()
begin
	  select dv.ma_dich_vu 
      from dich_vu dv
      join loai_dich_vu ldv on dv.ma_loai_dich_vu = ldv.ma_loai_dich_vu
      join hop_dong hd on hd.ma_dich_vu = dv.ma_dich_vu
      where ldv.ten_loai_dich_vu = 'Room' 
            and year(hd.ngay_lam_hop_dong) in (2015,2016,2017,2018,2019)
            and year(hd.ngay_ket_thuc) in (2015,2016,2017,2018,2019);
end //
delimiter ;


