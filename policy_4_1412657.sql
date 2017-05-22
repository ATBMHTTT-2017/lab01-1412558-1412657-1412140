﻿/* Giám đốc được phép xem thông tin dự án gồm (mã dự án, tên dự án, kinh phí, tên
phòng chủ trì, tên chi nhánh chủ trì, tên trưởng dự án và tổng chi) (DAC).*/

CREATE VIEW V_GIAMDOC_OF_DUAN AS
SELECT DUAN.MADA, DUAN.TENDA, DUAN.KINHPHI, PHONGBAN.TENPHONG, CHINHANH.TENCHINHANH, NHANVIEN.HOTEN as TruongDA, sum(CHITIEU.SOTIEN) as TongChi
FROM DUAN, PHONGBAN, CHINHANH, NHANVIEN
WHERE PHONGBAN.MAPB = DUAN.PHONGCHUTRI 
	AND CHINHANH.MACN = PHONGBAN.CHINHANH 
	AND NHANVIEN.MANV = DUAN.TRUONGDA
	AND CHITIEU.DUAN = DUAN.MADA;

GRANT SELECT ON V_GIAMDOC TO R_GIAMDOC;