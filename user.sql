/* tạo user*/
alter session set "_ORACLE_SCRIPT"=true;
CREATE USER "1" IDENTIFIED BY "1";
CREATE USER "2" IDENTIFIED BY "2";
CREATE USER "3" IDENTIFIED BY "3";
CREATE USER "4" IDENTIFIED BY "4";
CREATE USER "5" IDENTIFIED BY "5";
CREATE USER "6" IDENTIFIED BY "6";
CREATE USER "7" IDENTIFIED BY "7";
CREATE USER "8" IDENTIFIED BY "8";
CREATE USER "9" IDENTIFIED BY "9";
CREATE USER "10" IDENTIFIED BY "10";
CREATE USER "11" IDENTIFIED BY "11";
CREATE USER "12" IDENTIFIED BY "12";
CREATE USER "13" IDENTIFIED BY "13";
CREATE USER "14" IDENTIFIED BY "14";
CREATE USER "15" IDENTIFIED BY "15";
CREATE USER "16" IDENTIFIED BY "16";
CREATE USER "17" IDENTIFIED BY "17";
CREATE USER "18" IDENTIFIED BY "18";
CREATE USER "19" IDENTIFIED BY "19";
CREATE USER "20" IDENTIFIED BY "20";
CREATE USER "21" IDENTIFIED BY "21";
CREATE USER "22" IDENTIFIED BY "22";
CREATE USER "23" IDENTIFIED BY "23";
CREATE USER "24" IDENTIFIED BY "24";
CREATE USER "25" IDENTIFIED BY "25";

CREATE USER C##OWNERDB IDENTIFIED BY ownerdb;
GRANT DBA, RESOURCE TO C##OWNERDB WITH ADMIN OPTION;
GRANT CREATE SESSION TO C##OWNERDB;
GRANT ALL PRIVILEGES TO C##OWNERDB;

/* gán quyền đăng nhập mọi user*/
grant connect to public