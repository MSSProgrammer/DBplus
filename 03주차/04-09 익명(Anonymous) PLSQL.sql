SET ECHO ON
SET TAB OFF 
SET SERVEROUTPUT ON 

REM 파일제목: 실습04-09_익명(Aninymous) PL/SQL_학번성명.sql
DECLARE
v_num NUMBER;
BEGIN
v_num:=square(10);
dbms_output.put_line(v_num);
END;
/
