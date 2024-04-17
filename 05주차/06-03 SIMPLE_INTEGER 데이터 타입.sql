SET ECHO ON
SET TAB OFF
SET SERVEROUTPUT ON

REM 문자형 데이터 타입 선언시 "(길이 CHAR)" 형식 사용
REM 바이트 단위가 아닌 글자 수 단위의 길이로 선언되므로
REM 데이터베이스 문자집합에 따라서 최대 길이가 달라진다.

DECLARE
v_simple_int SIMPLE_INTEGER := 2147483647; -- SIMPLE_INTEGER 타입의 가장 큰 값
BEGIN
dbms_output.put_line('정수 최댓값 : ' || v_simple_int);
v_simple_int := v_simple_int + 1; -- 오버플로우되어 SIMPLE_INTEGER 타입의 가장 작은 값이 됨
dbms_output.put_line('오버플로우 : ' || v_simple_int);
v_simple_int := v_simple_int - 1; -- 다시 언더플로우되어 SIMPLE_INTEGER 타입의 가장 큰 값이 됨
dbms_output.put_line('언더플로우 : ' || v_simple_int);
END;
/
