SET ECHO ON
SET TAB OFF
SET SERVEROUTPUT ON

REM 저장 함수 tvl을 사용하여 BOOLEAN 값 출력
BEGIN
    dbms_output.put_line('1=1 : '||tvl(1=1, 'TRUE','FALSE'));
    dbms_output.put_line('1=2 : '||tvl(1=2, 'TRUE','FALSE'));
    dbms_output.put_line('NULL : '||tvl(NULL, 'TRUE','FALSE','NULL'));
END;
/