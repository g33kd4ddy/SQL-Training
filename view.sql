CREATE OR REPLACE VIEW emp_vw 
  as
SELECT e.*, 
       e2.ENAME AS MANAGER_NAME
  FROM emp e
       LEFT JOIN emp e2
         ON e.MGR = e2.EMPNO
 ORDER BY e2.ENAME;


 -- TEST
select *
from emp_vw


