/*data chi nhánh*/
insert into CHINHANH(MACN,TENCN,TRUONGCHINHANH)VALUES ('CN001','TP. Hồ Chí Minh',null);
insert into CHINHANH(MACN,TENCN,TRUONGCHINHANH)VALUES ('CN002','Đà Nẵng',null);
insert into CHINHANH(MACN,TENCN,TRUONGCHINHANH)VALUES ('CN003','Hà Nội',null);
insert into CHINHANH(MACN,TENCN,TRUONGCHINHANH)VALUES ('CN004','Hải Dương',null);
insert into CHINHANH(MACN,TENCN,TRUONGCHINHANH)VALUES ('CN005','Huế',null);


/*data phòng ban*/
insert into PHONGBAN(MAPHONG,TENPHONG,TRUONGPHONG,NGAYNHANCHUC,SONHANVIEN,CHINHANH)VALUES ('PB001','Nhân Sự',null,TO_DATE('25/04/2017','DD/MM/YYYY'),10,'CN001');
insert into PHONGBAN(MAPHONG,TENPHONG,TRUONGPHONG,NGAYNHANCHUC,SONHANVIEN,CHINHANH)VALUES ('PB002','Kế Toán',null,TO_DATE('25/03/2017','DD/MM/YYYY'),10,'CN002');
insert into PHONGBAN(MAPHONG,TENPHONG,TRUONGPHONG,NGAYNHANCHUC,SONHANVIEN,CHINHANH)VALUES ('PB003','Kế Hoạch',null,TO_DATE('20/04/2017','DD/MM/YYYY'),10,'CN003');
insert into PHONGBAN(MAPHONG,TENPHONG,TRUONGPHONG,NGAYNHANCHUC,SONHANVIEN,CHINHANH)VALUES ('PB004','Kinh Doanh',null,TO_DATE('5/04/2017','DD/MM/YYYY'),10,'CN004');
insert into PHONGBAN(MAPHONG,TENPHONG,TRUONGPHONG,NGAYNHANCHUC,SONHANVIEN,CHINHANH)VALUES ('PB005','Kỹ Thuật',null,TO_DATE('2/04/2017','DD/MM/YYYY'),10,'CN005');


/*data nhân viên*/
insert into NHANVIEN (MANV,HOTEN,DIACHI,DIENTHOAI,EMAIL,MAPHONG,CHINHANH,LUONG)VALUES ('NV001','Binsu','Hồ Chí Minh','123456789','NV001.lab01@gmail.com','PB001','CN001',500);
insert into NHANVIEN (MANV,HOTEN,DIACHI,DIENTHOAI,EMAIL,MAPHONG,CHINHANH,LUONG)VALUES ('NV002','Bánh Tráng Trộn','Hồ Chí Minh','1123456789','NV002.lab01@gmail.com','PB001','CN001',550);
insert into NHANVIEN (MANV,HOTEN,DIACHI,DIENTHOAI,EMAIL,MAPHONG,CHINHANH,LUONG)VALUES ('NV003','Susi Hàn Quốc','Hồ Chí Minh','1223456789','NV003.lab01@gmail.com','PB001','CN001',500);
insert into NHANVIEN (MANV,HOTEN,DIACHI,DIENTHOAI,EMAIL,MAPHONG,CHINHANH,LUONG)VALUES ('NV004','Cánh Gà Chiên Mắm','Hà Nội','1233456789','NV004.lab01@gmail.com','PB001','CN001',600);
insert into NHANVIEN (MANV,HOTEN,DIACHI,DIENTHOAI,EMAIL,MAPHONG,CHINHANH,LUONG)VALUES ('NV005','Hột Vịt Lộn','Hà Nội','1234456789','NV005.lab01@gmail.com','PB001','CN001',600);

insert into NHANVIEN (MANV,HOTEN,DIACHI,DIENTHOAI,EMAIL,MAPHONG,CHINHANH,LUONG)VALUES ('NV006','Nguyễn Văn C','Hà Nội','1234556789','NV006.lab01@gmail.com','PB002','CN002',500);
insert into NHANVIEN (MANV,HOTEN,DIACHI,DIENTHOAI,EMAIL,MAPHONG,CHINHANH,LUONG)VALUES ('NV007','Cao Mông D','Đà Nẵng','1234566789','NV007.lab01@gmail.com','PB002','CN002',500);
insert into NHANVIEN (MANV,HOTEN,DIACHI,DIENTHOAI,EMAIL,MAPHONG,CHINHANH,LUONG)VALUES ('NV008','Si Mộng','Hồ Chí Minh','123456789','NV008.lab01@gmail.com','PB002','CN002',500);
insert into NHANVIEN (MANV,HOTEN,DIACHI,DIENTHOAI,EMAIL,MAPHONG,CHINHANH,LUONG)VALUES ('NV009','Mộng Si','Hồ Chí Minh','1234567897','NV009.lab01@gmail.com','PB002','CN002',500);
insert into NHANVIEN (MANV,HOTEN,DIACHI,DIENTHOAI,EMAIL,MAPHONG,CHINHANH,LUONG)VALUES ('NV010','Lùn Thế Kỷ','Hồ Chí Minh','1234556789','NV010.lab01@gmail.com','PB002','CN002',500);
 
insert into NHANVIEN (MANV,HOTEN,DIACHI,DIENTHOAI,EMAIL,MAPHONG,CHINHANH,LUONG)VALUES ('NV011','Dương Quá','Hồ Chí Minh','1234567894','NV011.lab01@gmail.com','PB003','CN003',500);
insert into NHANVIEN (MANV,HOTEN,DIACHI,DIENTHOAI,EMAIL,MAPHONG,CHINHANH,LUONG)VALUES ('NV012','Cô Long','Huế','1234567897','NV12.lab001@gmail.com','PB003','CN003',500);
insert into NHANVIEN (MANV,HOTEN,DIACHI,DIENTHOAI,EMAIL,MAPHONG,CHINHANH,LUONG)VALUES ('NV013','Quách Tĩnh','Quãng Nam','1234556789','NV013.lab01@gmail.com','PB003','CN003',500);
insert into NHANVIEN (MANV,HOTEN,DIACHI,DIENTHOAI,EMAIL,MAPHONG,CHINHANH,LUONG)VALUES ('NV014','Hoàng Dung','Quãng Ngãi','1234567894','NV014.lab01@gmail.com','PB003','CN003',500);
insert into NHANVIEN (MANV,HOTEN,DIACHI,DIENTHOAI,EMAIL,MAPHONG,CHINHANH,LUONG)VALUES ('NV015','Lý Mạc Sầu','Hồ Chí Minh','1234556789','NV015.lab01@gmail.com','PB003','CN003',500);

insert into NHANVIEN (MANV,HOTEN,DIACHI,DIENTHOAI,EMAIL,MAPHONG,CHINHANH,LUONG)VALUES ('NV016','Trần Trường Sinh','Hồ Chí Minh','1234567894','NV016.lab01@gmail.com','PB004','CN004',500);
insert into NHANVIEN (MANV,HOTEN,DIACHI,DIENTHOAI,EMAIL,MAPHONG,CHINHANH,LUONG)VALUES ('NV017','Lặc Lạc','Huế','1234567897','NV017.lab01@gmail.com','PB004','CN004',500);
insert into NHANVIEN (MANV,HOTEN,DIACHI,DIENTHOAI,EMAIL,MAPHONG,CHINHANH,LUONG)VALUES ('NV018','Từ Hữu Dung','Quãng Nam','1234556789','NV018.lab01@gmail.com','PB004','CN004',500);
insert into NHANVIEN (MANV,HOTEN,DIACHI,DIENTHOAI,EMAIL,MAPHONG,CHINHANH,LUONG)VALUES ('NV019','Tam Thập Lục','Quãng Ngãi','1234567894','NV019.lab01@gmail.com','PB004','CN004',500);
insert into NHANVIEN (MANV,HOTEN,DIACHI,DIENTHOAI,EMAIL,MAPHONG,CHINHANH,LUONG)VALUES ('NV020','Trang Hoán Vũ','Quãng Ngãi','1234567894','NV020.lab01@gmail.com','PB004','CN004',500);
       
insert into NHANVIEN (MANV,HOTEN,DIACHI,DIENTHOAI,EMAIL,MAPHONG,CHINHANH,LUONG)VALUES ('NV021','Nguyễn Cao A','Hồ Chí Minh','1234567894','NV021.lab01@gmail.com','PB005','CN005',500);
insert into NHANVIEN (MANV,HOTEN,DIACHI,DIENTHOAI,EMAIL,MAPHONG,CHINHANH,LUONG)VALUES ('NV022','Dương Thế B','Huế','1234567897','NV022.lab01@gmail.com','PB005','CN005',500);
insert into NHANVIEN (MANV,HOTEN,DIACHI,DIENTHOAI,EMAIL,MAPHONG,CHINHANH,LUONG)VALUES ('NV023','Cao Bùi C','Quãng Nam','1234556789','NV023.lab01@gmail.com','PB005','CN005',500);
insert into NHANVIEN (MANV,HOTEN,DIACHI,DIENTHOAI,EMAIL,MAPHONG,CHINHANH,LUONG)VALUES ('NV024','Dương Mịch','Quãng Ngãi','1234567894','NV024.lab01@gmail.com','PB005','CN005',500);
insert into NHANVIEN (MANV,HOTEN,DIACHI,DIENTHOAI,EMAIL,MAPHONG,CHINHANH,LUONG)VALUES ('NV025','Cao Thâm','Quãng Ngãi','1234567894','NV025.lab01@gmail.com','PB005','CN005',500);

/*data dự án*/
insert into DUAN(MADA,TENDA,KINHPHI,PHONGCHUTRI,TRUONGDA)VALUES ('DA001','Bất động sản',1000000,'PB001','NV003');
insert into DUAN(MADA,TENDA,KINHPHI,PHONGCHUTRI,TRUONGDA)VALUES ('DA002','Xây Dựng',1000000,'PB001','NV003');
insert into DUAN(MADA,TENDA,KINHPHI,PHONGCHUTRI,TRUONGDA)VALUES ('DA003','Công nghệ sinh',2000000,'PB002','NV008');
insert into DUAN(MADA,TENDA,KINHPHI,PHONGCHUTRI,TRUONGDA)VALUES ('DA004','Dạy Học',2000000,'PB002','NV008');
insert into DUAN(MADA,TENDA,KINHPHI,PHONGCHUTRI,TRUONGDA)VALUES ('DA005','Trí tuệ',3000000,'PB003','NV013');
insert into DUAN(MADA,TENDA,KINHPHI,PHONGCHUTRI,TRUONGDA)VALUES ('DA006','Tự Động Hóa',3000000,'PB003','NV013');
insert into DUAN(MADA,TENDA,KINHPHI,PHONGCHUTRI,TRUONGDA)VALUES ('DA007','Autobot',4000000,'PB001','NV018');
insert into DUAN(MADA,TENDA,KINHPHI,PHONGCHUTRI,TRUONGDA)VALUES ('DA008','Bán Xe Máy',4000000,'PB001','NV018');
insert into DUAN(MADA,TENDA,KINHPHI,PHONGCHUTRI,TRUONGDA)VALUES ('DA009','Vật liệu rắn',5000000,'PB001','NV023');
insert into DUAN(MADA,TENDA,KINHPHI,PHONGCHUTRI,TRUONGDA)VALUES ('DA010','Thoát Nước',5000000,'PB001','NV023');

/*data phân công*/
insert into PHANCONG (MANV,DUAN,VAITRO,PHUCAP)VALUES ('NV004','DA001','Thành viên',20);
insert into PHANCONG (MANV,DUAN,VAITRO,PHUCAP)VALUES ('NV004','DA002','Giám sát',30);
insert into PHANCONG (MANV,DUAN,VAITRO,PHUCAP)VALUES ('NV009','DA003','Quản lý',40);
insert into PHANCONG (MANV,DUAN,VAITRO,PHUCAP)VALUES ('NV009','DA004','Thành viên',20);
insert into PHANCONG (MANV,DUAN,VAITRO,PHUCAP)VALUES ('NV014','DA005','Giám sát',30);
insert into PHANCONG (MANV,DUAN,VAITRO,PHUCAP)VALUES ('NV014','DA006','Quản lý',40);
insert into PHANCONG (MANV,DUAN,VAITRO,PHUCAP)VALUES ('NV019','DA007','Quản lý',40);
insert into PHANCONG (MANV,DUAN,VAITRO,PHUCAP)VALUES ('NV019','DA008','Thành viên',20);
insert into PHANCONG (MANV,DUAN,VAITRO,PHUCAP)VALUES ('NV024','DA009','Giám sát',30);
insert into PHANCONG (MANV,DUAN,VAITRO,PHUCAP)VALUES ('NV024','DA010','Quản lý',40);

/*data chi tiêu*/
insert into CHITIEU(MACHITIEU,TENCHITIEU,SOTIEN,DUAN)VALUES ('CT001','Phí di chuyển',100,'DA001');
insert into CHITIEU(MACHITIEU,TENCHITIEU,SOTIEN,DUAN)VALUES ('CT002','Phí ăn uống',200,'DA001');
insert into CHITIEU(MACHITIEU,TENCHITIEU,SOTIEN,DUAN)VALUES ('CT003','Phí vật liệu',300,'DA001');
insert into CHITIEU(MACHITIEU,TENCHITIEU,SOTIEN,DUAN)VALUES ('CT004','Phí di chuyển',100,'DA002');
insert into CHITIEU(MACHITIEU,TENCHITIEU,SOTIEN,DUAN)VALUES ('CT005','Phí ăn uống',200,'DA002');
insert into CHITIEU(MACHITIEU,TENCHITIEU,SOTIEN,DUAN)VALUES ('CT006','Phí vật liệu',300,'DA002');
insert into CHITIEU(MACHITIEU,TENCHITIEU,SOTIEN,DUAN)VALUES ('CT007','Phí di chuyển',100,'DA003');
insert into CHITIEU(MACHITIEU,TENCHITIEU,SOTIEN,DUAN)VALUES ('CT008','Phí ăn uống',200,'DA003');
insert into CHITIEU(MACHITIEU,TENCHITIEU,SOTIEN,DUAN)VALUES ('CT009','Phí vật liệu',300,'DA003');
insert into CHITIEU(MACHITIEU,TENCHITIEU,SOTIEN,DUAN)VALUES ('CT010','Phí di chuyển',100,'DA004');
insert into CHITIEU(MACHITIEU,TENCHITIEU,SOTIEN,DUAN)VALUES ('CT011','Phí ăn uống',200,'DA004');
insert into CHITIEU(MACHITIEU,TENCHITIEU,SOTIEN,DUAN)VALUES ('CT012','Phí vật liệu',300,'DA004');
insert into CHITIEU(MACHITIEU,TENCHITIEU,SOTIEN,DUAN)VALUES ('CT013','Phí di chuyển',100,'DA005');
insert into CHITIEU(MACHITIEU,TENCHITIEU,SOTIEN,DUAN)VALUES ('CT014','Phí ăn uống',200,'DA005');
insert into CHITIEU(MACHITIEU,TENCHITIEU,SOTIEN,DUAN)VALUES ('CT015','Phí vật liệu',300,'DA005');

update PHONGBAN set TRUONGPHONG='NV002' where MAPHONG='PB001';
update PHONGBAN set TRUONGPHONG='NV007' where MAPHONG='PB002';
update PHONGBAN set TRUONGPHONG='NV012' where MAPHONG='PB003';
update PHONGBAN set TRUONGPHONG='NV017' where MAPHONG='PB004';
update PHONGBAN set TRUONGPHONG='NV022' where MAPHONG='PB005';

update CHINHANH set TRUONGCHINHANH='NV001' where MACN='CN001';
update CHINHANH set TRUONGCHINHANH='NV006' where MACN='CN002';
update CHINHANH set TRUONGCHINHANH='NV011' where MACN='CN003';
update CHINHANH set TRUONGCHINHANH='NV016' where MACN='CN004';
update CHINHANH set TRUONGCHINHANH='NV021' where MACN='CN005';

/* NV01 -> NV05 thuộc CHINHANH 1*/
/* NV06 -> NV10 thuộc CHINHANH 2*/
/* NV11 -> NV15 thuộc CHINHANH 3*/
/* NV16 -> NV20 thuộc CHINHANH 4*/
/* NV21 -> NV25 thuộc CHINHANH 5*/
/* các CN lần lượt   1, 2,  3,  4, 5     có:*/
/* trưởng chi nhánh  01, 06, 11, 16, 21*/
/* trưởng phòng 	 02, 07, 12, 17, 22*/
/* trưởng dự án 	 03, 08, 13, 18, 23*/
/*
DELETE FROM NHANVIEN;
DELETE FROM CHINHANH;
DELETE FROM PHONGBAN;
DELETE FROM DUAN;
DELETE FROM PHANCONG;
DELETE FROM CHITIEU;

Drop table NHANVIEN;
Drop table CHINHANH;
Drop table PHONGBAN;
Drop table DUAN;
Drop table PHANCONG;
Drop table CHITIEU;

Select * from HCMUS.NHANVIEN;
Select * from CHINHANH;
Select * from PHONGBAN;
Select * from DUAN;
Select * from PHANCONG;
Select * from CHITIEU;
*/