SET ECHO ON
SET TAB OFF 
SET SERVEROUTPUT ON 

REM 파일제목: 실습04-02_블록구조의 중첩_학번 성명.sql
DECLARE
v_str VARCHAR2(100);
BEGIN
v_str:= 'Hello world!';
dbms_output.put_line(v_str);
EXCEPTION WHEN OTHERS THEN
dbms_output.put_line(SQLERRM);
END;
/
