 -- Rows from A that don’t join to B
SELECT *
  FROM emp a
      LEFT JOIN dept b 
        ON a.deptno = b.deptno
 WHERE b.deptno is null
 
-- Rows from B that don’t join to A
SELECT *
  FROM dept b
WHERE deptno not in 
     (select distinct deptno 
        from emp a 
       where deptno is not null)
