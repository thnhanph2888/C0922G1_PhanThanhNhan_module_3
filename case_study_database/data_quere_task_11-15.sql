use furama_resort_management;

-- 11.Hiển thị thông tin các dịch vụ đi kèm đã được sử dụng bởi những khách hàng có ten_loai_khach là “Diamond” và có dia_chi ở “Vinh” hoặc “Quảng Ngãi”.
select dvdk.ma_dich_vu_di_kem, dvdk.ten_dich_vu_di_kem, dvdk.gia, dvdk.don_vi, dvdk.trang_thai from dich_vu_di_kem dvdk
join hop_dong_chi_tiet hdct
join hop_dong hd
join khach_hang kh
join loai_khach lk
on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem 
and hdct.ma_hop_dong = hd.ma_hop_dong
and hd.ma_khach_hang = kh.ma_khach_hang
and kh.ma_loai_khach = lk.ma_loai_khach
where lk.ten_loai_khach = 'Diamond' and (kh.dia_chi like '% Vinh' or kh.dia_chi  like '% Quảng Ngãi');

-- 12.Hiển thị thông tin ma_hop_dong, ho_ten (nhân viên), ho_ten (khách hàng), so_dien_thoai (khách hàng), ten_dich_vu, 
-- so_luong_dich_vu_di_kem (được tính dựa trên việc sum so_luong ở dich_vu_di_kem), tien_dat_coc của tất cả các dịch vụ đã từng được
-- khách hàng đặt vào 3 tháng cuối năm 2020 nhưng chưa từng được khách hàng đặt vào 6 tháng đầu năm 2021.
select 
hd.ma_hop_dong, 
nv.ho_ten, 
kh.ho_ten, 
kh.so_dien_thoai, 
dv.ten_dich_vu, 
sum(hdct.so_luong) so_luong_dich_vu_di_kem,
hd.tien_dat_coc
from hop_dong hd 
join nhan_vien nv
join khach_hang kh
join dich_vu dv
join hop_dong_chi_tiet hdct
join dich_vu_di_kem dvdk
on hd.ma_nhan_vien = nv.ma_nhan_vien 
and hd.ma_khach_hang = kh.ma_khach_hang
and hd.ma_dich_vu = dv.ma_dich_vu
and hdct.ma_hop_dong = hd.ma_hop_dong
where month(hd.ngay_lam_hop_dong) in (10, 11, 12) and year(hd.ngay_lam_hop_dong) = 2020 
and hd.ma_hop_dong not in (select hd.ma_hop_dong from hop_dong hd where month(hd.ngay_lam_hop_dong) in (1, 2, 3, 4, 5, 6) and year(hd.ngay_lam_hop_dong) = 2021)
group by hd.ma_hop_dong;

-- 13.Hiển thị thông tin các Dịch vụ đi kèm được sử dụng nhiều nhất bởi các Khách hàng đã đặt phòng. (Lưu ý là có thể có nhiều dịch vụ có số lần sử dụng nhiều như nhau).
select * from dich_vu_di_kem dvdk 
where dvdk.ma_dich_vu_di_kem = (select dvdk.ma_dich_vu_di_kem from dich_vu_di_kem dvdk 
join hop_dong_chi_tiet hdct on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem 
where sum(hdct.so_luong) = (select max(sum(hdct.so_luong)) max
	from dich_vu_di_kem dvdk
	join hop_dong_chi_tiet hdct 
	join hop_dong hd 
	on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
    and hdct.ma_hop_dong = hdct.ma_hop_dong 
    ));


    
-- 14.Hiển thị thông tin tất cả các Dịch vụ đi kèm chỉ mới được sử dụng một lần duy nhất. Thông tin hiển thị bao gồm ma_hop_dong, 
-- ten_loai_dich_vu, ten_dich_vu_di_kem, so_lan_su_dung (được tính dựa trên việc count các ma_dich_vu_di_kem).

-- 15.Hiển thi thông tin của tất cả nhân viên bao gồm ma_nhan_vien, ho_ten, ten_trinh_do, ten_bo_phan, so_dien_thoai, dia_chi 
-- mới chỉ lập được tối đa 3 hợp đồng từ năm 2020 đến 2021.