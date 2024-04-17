SET ECHO ON --에코모드 : 스크립트를 @를 사용하여 실행할 경우 이 문장을 설정해야 스크립트 화면에 나타남
SET TAB OFF -- 탭설정:이 설정을 ON으로 하게 되면(기본값) 스크립트 공백이 여러 개 연속되는 경우, 출력이 비정상적으로 이뤄지는 경우
SET SERVEROUTPUT ON --서버 출력:서버출력은 SET SERVEROUTPUT ON을 설정해야 화면에 나타남

REM 파일제목: 실습04-01_PL/SQL 프로그램의 기본적인 구성요소를 모두 갖춘 예제.sql
DECLARE
v_str VARCHAR2(100);
BEGIN
v_str:= 'Hello world!';
dbms_output.put_line(v_str);
EXCEPTION WHEN OTHERS THEN
dbms_output.put_line(SQLERRM);
END;
/