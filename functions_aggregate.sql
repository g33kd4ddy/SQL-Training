-- Sum of SAL and count of employees
SELECT SUM(sal),
       COUNT(*)
  FROM emp

-- group by deptno
SELECT deptno,
       SUM(sal), 
       COUNT(*)
  FROM emp
 GROUP BY deptno
