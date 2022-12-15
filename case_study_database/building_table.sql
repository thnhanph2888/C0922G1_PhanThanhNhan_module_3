-- Task 1.1, 1.2: Thêm mới thông tin cho tất cả các bảng có trong CSDL để có thể thoả mãn các yêu cầu bên dưới.
create database furama_resort_management;
use furama_resort_management;

create table vi_tri(
   ma_vi_tri int primary key,
   ten_vi_tri varchar(45)
);

create table trinh_do(
   ma_trinh_do int primary key,
   ten_trinh_do varchar(45)
);

create table bo_phan(
   ma_bo_phan int primary key,
   ten_bo_phan varchar(45)
);

create table nhan_vien(
   ma_nhan_vien int primary key,
   ho_ten varchar(45),
   ngay_sinh date,
   so_cmnd varchar(45),
   luong double,
   so_dien_thoai varchar(45),
   email varchar(45),
   dia_chi varchar(45),
   ma_vi_tri int,
   foreign key (ma_vi_tri) references vi_tri(ma_vi_tri),
   ma_trinh_do int,
   foreign key (ma_trinh_do) references trinh_do(ma_trinh_do),
   ma_bo_phan int,
   foreign key (ma_bo_phan) references bo_phan(ma_bo_phan)
);

create table loai_khach(
   ma_loai_khach int primary key,
   ten_loai_khach varchar(45)
);

create table khach_hang(
   ma_khach_hang  int primary key,
   ma_loai_khach int,
   foreign key(ma_loai_khach) references loai_khach(ma_loai_khach),
   ho_ten varchar(45),
   ngay_sinh date,
   gioi_tinh bit(1),
   so_cmnd varchar(45),
   so_dien_thoai varchar(45),
   email varchar(45),
   dia_chi varchar(45)
);

create table loai_dich_vu(
   ma_loai_dich_vu int primary key,
   ten_loai_dich_vu varchar(45)
);

create table kieu_thue(
   ma_kieu_thue int primary key,
   ten_kieu_thue varchar(45)
);

create table dich_vu(
   ma_dich_vu int primary key,
   ten_dich_vu varchar(45),
   dien_tich int,
   chi_phi_thue double,
   so_nguoi_toi_da int,
   ma_kieu_thue int,
   foreign key(ma_kieu_thue) references kieu_thue(ma_kieu_thue),
   ma_loai_dich_vu int,
   foreign key(ma_loai_dich_vu) references loai_dich_vu(ma_loai_dich_vu),
   tieu_chuan_phong varchar(45),
   mo_ta_tien_nghi_khac varchar(45),
   dien_tich_ho_boi double,
   so_tang int,
   dich_vu_mien_phi_di_kem text
);

create table dich_vu_di_kem(
   ma_dich_vu_di_kem int primary key,
   ten_dich_vu_di_kem varchar(45),
   gia double,
   don_vi varchar(45),
   trang_thai varchar(45)
);

create table hop_dong(
   ma_hop_dong int primary key,
   ngay_lam_hop_dong date,
   ngay_ket_thuc date,
   tien_dat_coc double,
   ma_nhan_vien int,
   foreign key(ma_nhan_vien) references nhan_vien(ma_nhan_vien),
   ma_khach_hang int,
   foreign key(ma_khach_hang) references khach_hang(ma_khach_hang),
   ma_dich_vu int,
   foreign key(ma_dich_vu) references dich_vu(ma_dich_vu)
);

create table hop_dong_chi_tiet(
   ma_hop_dong_chi_tiet int primary key,
   ma_dich_vu_di_kem int,
   foreign key(ma_dich_vu_di_kem) references dich_vu_di_kem(ma_dich_vu_di_kem),
   ma_hop_dong int,
   foreign key (ma_hop_dong) references hop_dong(ma_hop_dong),
   so_luong int
);

