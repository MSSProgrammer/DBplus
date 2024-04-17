REM 유효 범위를 벗어나 중첩된 블록 내의 변수 v_num_partitions를
REM 참조하므로 선언되지 않는 식별자 오류를 발생시킨다

DECLARE
c_table_name CONSTANT STRING(30) := 'EMP';
 BEGIN
dbms_output.put_line('테이블'||c_table_name||'의 파티션 개수 출력');
DECLARE -- 중첩된 블록
v_num_partitions NUMBER; 
 BEGIN
SELECT COUNT(*)
INTO v_num_partitions
FROM user_tab_partitions
WHERE table_name = c_table_name;
dbms_output.put_line('파티션 개수 = '||v_num_partitions); -- 적절한 범위
END;
END;
/