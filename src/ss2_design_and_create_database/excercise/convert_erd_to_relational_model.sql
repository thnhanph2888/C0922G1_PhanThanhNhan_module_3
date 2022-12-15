create database commodity_management;
use commodity_management;
create table phieu_xuat(
	so_px int auto_increment primary key,
    ngay_xuat date
);

create table phieu_nhap(
    so_pn int auto_increment primary key,
    ngay_nhap date
);

create table vat_tu(
    ma_vtu int auto_increment primary key,
    ten_vtu varchar(50)
);

create table don_xuat_vat_tu(
	so_px int,
    ma_vtu int,
    primary key(so_px, ma_vtu),
    foreign key (so_px) references phieu_xuat(so_px),
    foreign key (ma_vtu) references vat_tu(ma_vtu),
    dg_xuat varchar(50),
    sl_xuat int
);

create table don_nhap_vat_tu(
	so_pn int,
    ma_vtu int,
    primary key(so_pn, ma_vtu),
    foreign key (so_pn) references phieu_nhap(so_pn),
    foreign key (ma_vtu) references vat_tu(ma_vtu),
    dg_nhap varchar(50),
    sl_nhap int
);

create table nha_cc(
	ma_nha_cc int auto_increment primary key,
    ten_nha_cc varchar(50),
    dia_chi varchar(50)
);

create table sdt(
	sdt varchar(20),
    ma_nha_cc int,
    primary key(sdt, ma_nha_cc),
    foreign key (ma_nha_cc) references nha_cc(ma_nha_cc)
);

create table don_dh(
	so_dh int auto_increment primary key,
    ngay_dh date,
    ma_nha_cc int,
    foreign key (ma_nha_cc) references nha_cc(ma_nha_cc)
);

create table vat_tu_va_don_hang(
	so_dh int,
    ma_vtu int,
    primary key(so_dh, ma_vtu),
    foreign key (so_dh) references don_dh(so_dh),
    foreign key (ma_vtu) references vat_tu(ma_vtu)
);