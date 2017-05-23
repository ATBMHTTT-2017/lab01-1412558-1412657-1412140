-- kiểm tra đã OLS có sẵn sàng trên DB
select status from dba_ols_status where name = 'OLS_CONFIGURE_STATUS';
select value from v$option where parameter = 'Oracle Label Security';
-- unlock LBACSYS account
ALTER USER lbacsys IDENTIFIED BY lbacsys ACCOUNT UNLOCK;



-- login LBACSYS tạo chính sách, 
EXEC SA_SYSDBA.CREATE_POLICY (policy_name => 'OLS_DUAN',column_name => 'OLS_COLUMN_DUAN');

-- xóa chính sách
-- EXEC SA_SYSDBA.DROP_POLICY(policy_name => 'OLS_DUAN');

--tạo SEC_ADMIN để quan lý chính sách
GRANT connect TO sec_admin IDENTIFIED BY secadmin;

-- GÁN QUYỀN THỰC THI CÁC PACKAGE LIÊN QUAN
GRANT OLS_DUAN_DBA TO sec_admin;

-- Package dùng để tạo ra các thành phần của nhãn
GRANT execute ON sa_components TO sec_admin;

-- Package dùng để tạo các nhãn
GRANT execute ON sa_label_admin TO sec_admin;

-- Package dùng để gán chính sách cho các table/schema
GRANT execute ON sa_policy_admin TO sec_admin;

-- DÙNG SEC_ADMIN
-- TẠO ĐỘ NHẠY CẢM CỦA DỰ ÁN LEVEL
EXEC SA_COMPONENTS.CREATE_LEVEL('OLS_DUAN',10,'TT','THÔNG THƯỜNG');
EXEC SA_COMPONENTS.CREATE_LEVEL('OLS_DUAN',20,'GH','GIỚI HẠN');
EXEC SA_COMPONENTS.CREATE_LEVEL('OLS_DUAN',30,'BM','BÍ MẬT');
EXEC SA_COMPONENTS.CREATE_LEVEL('OLS_DUAN',40,'BMC','BÍ MẬT CAO');

-- TẠO CÁC COMPARTMENT LÀ PHÒNG CHỦ TRÌ DỰ ÁN
EXEC SA_COMPONENTS.CREATE_COMPARTMENT('OLS_DUAN',100,'PNS','NHÂN SỰ');
EXEC SA_COMPONENTS.CREATE_COMPARTMENT('OLS_DUAN',200,'PKT','KẾ TOÁN');
EXEC SA_COMPONENTS.CREATE_COMPARTMENT('OLS_DUAN',300,'PKH','KẾ HOẠCH');

-- TẠO CÁC GROUP LÀ ĐỊA ĐIỂM RỘNG NHẤT CỦA DỰ ÁN
EXEC SA_COMPONENTS.CREATE_GROUP('OLS_DUAN',9000,'TCT','TỔNG CÔNG TY',NULL);
EXEC SA_COMPONENTS.CREATE_GROUP('OLS_DUAN',7000,'HNC','HÀ NỘI','TCT');
EXEC SA_COMPONENTS.CREATE_GROUP('OLS_DUAN',8000,'HCMC','TP HỒ CHÍ MINH','HNC');
EXEC SA_COMPONENTS.CREATE_GROUP('OLS_DUAN',6000,'DNC','ĐÀ NẴNG','HNC');
EXEC SA_COMPONENTS.CREATE_GROUP('OLS_DUAN',5000,'HDC','HẢI DƯƠNG','HNC');
/* DROP THÀNH PHẦN NHÃN
EXEC SA_COMPONENTS.DROP_LEVEL('OLS_DUAN',10);
EXEC SA_COMPONENTS.DROP_COMPARTMENT('OLS_DUAN',100);
EXEC SA_COMPONENTS.DROP_GROUP('OLS_DUAN',1000);
EXEC SA_COMPONENTS.DROP_GROUP('OLS_DUAN',2000);
*/


-- TẠO NHÃN
EXEC SA_LABEL_ADMIN.CREATE_LABEL('OLS_DUAN', 10, 'BMC:PNS:TCT');
EXEC SA_LABEL_ADMIN.CREATE_LABEL('OLS_DUAN', 20, 'BMC:PKT:TCT');
EXEC SA_LABEL_ADMIN.CREATE_LABEL('OLS_DUAN', 30, 'BMC:PKH:TCT');
EXEC SA_LABEL_ADMIN.CREATE_LABEL('OLS_DUAN', 40, 'BMC:PNS:HCMC');
EXEC SA_LABEL_ADMIN.CREATE_LABEL('OLS_DUAN', 50, 'BMC:PKT:HCMC');
EXEC SA_LABEL_ADMIN.CREATE_LABEL('OLS_DUAN', 60, 'BMC:PKH:HCMC');
EXEC SA_LABEL_ADMIN.CREATE_LABEL('OLS_DUAN', 70, 'BMC:PNS:HNC');
EXEC SA_LABEL_ADMIN.CREATE_LABEL('OLS_DUAN', 80, 'BMC:PKT:HNC');
EXEC SA_LABEL_ADMIN.CREATE_LABEL('OLS_DUAN', 90, 'BMC:PKH:HNC');
EXEC SA_LABEL_ADMIN.CREATE_LABEL('OLS_DUAN', 100, 'BMC:PNS:DNC');
EXEC SA_LABEL_ADMIN.CREATE_LABEL('OLS_DUAN', 110, 'BMC:PKT:DNC');
EXEC SA_LABEL_ADMIN.CREATE_LABEL('OLS_DUAN', 120, 'BMC:PKH:DNC');
EXEC SA_LABEL_ADMIN.CREATE_LABEL('OLS_DUAN', 130, 'BMC:PNS:HDC');
EXEC SA_LABEL_ADMIN.CREATE_LABEL('OLS_DUAN', 140, 'BMC:PKT:HDC');
EXEC SA_LABEL_ADMIN.CREATE_LABEL('OLS_DUAN', 150, 'BMC:PKH:HDC');
-- xóa nhãn
-- EXEC SA_LABEL_ADMIN.DROP_LABEL('ACCESS_DUAN', 10);

-- GÁN CHÍNH SÁCH OLS LÊN BẢNG DỰ ÁN
EXEC SA_POLICY_ADMIN.APPLY_TABLE_POLICY('OLS_DUAN', 'HCMUS', 'DUAN', 'NO_CONTROL');
-- GỠ CHÍNH SÁCH OLS TRÊN BẢN DỰ ÁN
/*
EXEC SA_POLICY_ADMIN.REMOVE_TABLE_POLICY('OLS_DUAN', 'HCMUS', 'DUAN');
*/

--GÁN NHÃN LÊN DÒNG DỮ LIỆU CỦA BẢNG DỰ ÁN
--GÁN QUYỀN SELECT,UPDATE DUAN CHO SEC_ADMIN (LOGIN AS HCMUS)
GRANT SELECT,UPDATE ON HCMUS.DUAN TO SEC_ADMIN;
-- CẬP NHẬT NHÃN CHO DÒNG LIỆU LIỆU CỦA BẢN DỰ ÁN (login as SEC_ADMIN)
UPDATE HCMUS.DUAN SET OLS_COLUMN_DUAN = CHAR_TO_LABEL('OLS_DUAN', 'BMC:PNS:TCT') where MADA = 'DA001';
UPDATE HCMUS.DUAN SET OLS_COLUMN_DUAN = CHAR_TO_LABEL('OLS_DUAN', 'BMC:PNS:TCT') where MADA = 'DA002';
UPDATE HCMUS.DUAN SET OLS_COLUMN_DUAN = CHAR_TO_LABEL('OLS_DUAN', 'BMC:PNS:TCT') where MADA = 'DA003';
UPDATE HCMUS.DUAN SET OLS_COLUMN_DUAN = CHAR_TO_LABEL('OLS_DUAN', 'BMC:PKT:TCT') where MADA = 'DA004';
UPDATE HCMUS.DUAN SET OLS_COLUMN_DUAN = CHAR_TO_LABEL('OLS_DUAN', 'BMC:PKT:TCT') where MADA = 'DA005';
UPDATE HCMUS.DUAN SET OLS_COLUMN_DUAN = CHAR_TO_LABEL('OLS_DUAN', 'BMC:PKH:TCT') where MADA = 'DA006';
UPDATE HCMUS.DUAN SET OLS_COLUMN_DUAN = CHAR_TO_LABEL('OLS_DUAN', 'BMC:PKH:TCT') where MADA = 'DA007';

UPDATE HCMUS.DUAN SET OLS_COLUMN_DUAN = CHAR_TO_LABEL('OLS_DUAN', 'BMC:PNS:HCMC') where MADA = 'DA008';
UPDATE HCMUS.DUAN SET OLS_COLUMN_DUAN = CHAR_TO_LABEL('OLS_DUAN', 'BMC:PKT:HCMC') where MADA = 'DA009';
UPDATE HCMUS.DUAN SET OLS_COLUMN_DUAN = CHAR_TO_LABEL('OLS_DUAN', 'BMC:PKH:HCMC') where MADA = 'DA010';

UPDATE HCMUS.DUAN SET OLS_COLUMN_DUAN = CHAR_TO_LABEL('OLS_DUAN', 'BMC:PNS:HNC') where MADA = 'DA011';
UPDATE HCMUS.DUAN SET OLS_COLUMN_DUAN = CHAR_TO_LABEL('OLS_DUAN', 'BMC:PKT:HNC') where MADA = 'DA012';
UPDATE HCMUS.DUAN SET OLS_COLUMN_DUAN = CHAR_TO_LABEL('OLS_DUAN', 'BMC:PKH:HNC') where MADA = 'DA013';

UPDATE HCMUS.DUAN SET OLS_COLUMN_DUAN = CHAR_TO_LABEL('OLS_DUAN', 'BMC:PNS:DNC') where MADA = 'DA014';
UPDATE HCMUS.DUAN SET OLS_COLUMN_DUAN = CHAR_TO_LABEL('OLS_DUAN', 'BMC:PKT:DNC') where MADA = 'DA015';
UPDATE HCMUS.DUAN SET OLS_COLUMN_DUAN = CHAR_TO_LABEL('OLS_DUAN', 'BMC:PKT:DNC') where MADA = 'DA016';

-- GÁN LEVEL CHO TRƯỞNG CHI NHÁNH
-- CHI NHÁNH TỔNG CÔNG TY
EXEC SA_USER_ADMIN.SET_LEVELS ('OLS_DUAN', 'NV001', 'BMC', 'TT', 'BMC', 'BMC');
-- CHI NHÁNH HỒ CHÍ MINH
EXEC SA_USER_ADMIN.SET_LEVELS ('OLS_DUAN', 'NV026', 'BMC', 'TT', 'BMC', 'BMC');
-- CHI NHÁNH HÀ NỘI
EXEC SA_USER_ADMIN.SET_LEVELS ('OLS_DUAN', 'NV041', 'BMC', 'TT', 'BMC', 'BMC');
-- CHI NHÁNH ĐÀ NẴNG
EXEC SA_USER_ADMIN.SET_LEVELS ('OLS_DUAN', 'NV056', 'BMC', 'TT', 'BMC', 'BMC');
-- CHI NHÁNH HẢI DƯƠNG
EXEC SA_USER_ADMIN.SET_LEVELS ('OLS_DUAN', 'NV071', 'BMC', 'TT', 'BMC', 'BMC');

-- GÁN COMPARTMENT CHO TRƯỞNG CHI NHÁNH
-- Policy name,username,read_comps,write_comps,def_comps,row_comps
EXEC SA_USER_ADMIN.SET_COMPARTMENTS('OLS_DUAN','NV001','PNS,PKT,PKH','','','');
EXEC SA_USER_ADMIN.SET_COMPARTMENTS('OLS_DUAN','NV026','PNS,PKT,PKH','','','');
EXEC SA_USER_ADMIN.SET_COMPARTMENTS('OLS_DUAN','NV041','PNS,PKT,PKH','','','');
EXEC SA_USER_ADMIN.SET_COMPARTMENTS('OLS_DUAN','NV056','PNS,PKT,PKH','','','');
EXEC SA_USER_ADMIN.SET_COMPARTMENTS('OLS_DUAN','NV071','PNS,PKT,PKH','','','');

-- GÁN group CHO TRƯỞNG CHI NHÁNH
-- Policy name,username,read_groups,write_groups,def_groups,row_groups
EXEC SA_USER_ADMIN.SET_GROUPS('OLS_DUAN','NV001','TCT','','','');
EXEC SA_USER_ADMIN.SET_GROUPS('OLS_DUAN','NV026','HCMC','','','');
EXEC SA_USER_ADMIN.SET_GROUPS('OLS_DUAN','NV041','HNC','','','');
EXEC SA_USER_ADMIN.SET_GROUPS('OLS_DUAN','NV056','DNC','','','');
EXEC SA_USER_ADMIN.SET_GROUPS('OLS_DUAN','NV071','HDC','','','');

-- GÁN CHÍNH SÁCH OLS LÊN BẢNG DỰ ÁN CHO ÁP DỤNG ĐỌC
EXEC SA_POLICY_ADMIN.REMOVE_TABLE_POLICY('OLS_DUAN', 'HCMUS', 'DUAN');
EXEC SA_POLICY_ADMIN.APPLY_TABLE_POLICY('OLS_DUAN', 'HCMUS', 'DUAN', 'READ_CONTROL');


-- PHÂN QUYỀN SELECT HCMUS.DUAN TO CÁC CHI NHÁNH (LOGIN AS HCMUS)
GRANT SELECT ON HCMUS.DUAN TO NV001,NV026,NV041,NV056,NV071;


-- BƯỚC TIẾP THEO TẠO CHÍNH SÁCH OLS, ĐẶT LÊN BẢN CHI TIÊU SAO CHO
-- NHÃN DÒNG DỮ LIỆU CHI TIÊU CỦA DỰ ÁN NÀO THÌ NHÃN CỦA DỰ ÁN ĐÓ

-- ĐẶT CHÍNH SÁCH LÊN BẢNG CHI TIÊU
EXEC SA_POLICY_ADMIN.APPLY_TABLE_POLICY('OLS_DUAN', 'HCMUS', 'CHITIEU', 'NO_CONTROL');

-- GÁN QUYỀN SELECT,UPDATE HCMUS.CHITIEU CHO SEC_ADMIN (login as hcmus)
grant select,update on HCMUS.CHITIEU to SEC_ADMIN;

-- TẠM DỪNG OLS TRÊN BẢNG HCMUS.DUAN ĐỂ SEC_ADMIN ĐỌC DỮ LIỆU
EXEC SA_POLICY_ADMIN.DISABLE_TABLE_POLICY('OLS_DUAN', 'HCMUS', 'DUAN');

-- CẬP NHẬT NHÃN CHO TỪNG DÒNG DỮ LIỆU BẢN CHI TIÊU
declare
  TEMP varchar2(200);
begin
for DUAN in (select MADA,OLS_COLUMN_DUAN FROM HCMUS.DUAN)
loop
    for CHITIEU in (select MACHITIEU FROM HCMUS.CHITIEU)
    loop
        UPDATE HCMUS.CHITIEU SET OLS_COLUMN_DUAN = DUAN.OLS_COLUMN_DUAN where DUAN.MADA = CHITIEU.DUAN;
    end loop;
end loop;
end;

-- BẬT LẠI OLS TRÊN BẢNG HCMUS.DUAN
EXEC SA_POLICY_ADMIN.ENABLE_TABLE_POLICY('OLS_DUAN', 'HCMUS', 'DUAN');

-- GÁN CHÍNH SÁCH OLS LÊN BẢNG HCMUS.CHITIEU CHO ÁP DỤNG ĐỌC
EXEC SA_POLICY_ADMIN.REMOVE_TABLE_POLICY('OLS_DUAN', 'HCMUS', 'CHITIEU');
EXEC SA_POLICY_ADMIN.APPLY_TABLE_POLICY('OLS_DUAN', 'HCMUS', 'CHITIEU', 'READ_CONTROL');

-- PHÂN QUYỀN SELECT HCMUS.CHITIEU (login as hcm)
GRANT SELECT ON HCMUS.CHITIEU TO NV001,NV026,NV041,NV056,NV071;
SELECT * FROM HCMUS.DUAN;
SELECT * FROM HCMUS.CHITIEU;
-- PB001-002-003 thuộc CN001 do NV001 làm tưởng CN001, xem được chi tiêu cá dự án từ DA001-007
-- PB006-007-008 thuộc CN002 do NV026 làm tưởng CN002, xem được chi tiêu các dự án từ DA008-009-010
-- PB009-010-011 thuộc CN003 do NV041 làm tưởng CN003, xem được chi tiêu các dự án từ DA011-012-013
-- PB012-013-014 thuộc CN004 do NV056 làm tưởng CN004, xem được chi tiêu các dự án từ DA014-015-016
-- CN001 là tổng công ty, nên NV001 được xem hết
-- CN003 là Hà nội, được xem hết trừ chi tiêu của DA001-007(tổng công ty)