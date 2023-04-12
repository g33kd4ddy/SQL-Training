 -- Left (outer) Join
SELECT *
  FROM emp a
       LEFT JOIN dept b 
         ON a.deptno = b.deptno
 
-- Right (outer) Join
SELECT *
  FROM emp a
       RIGHT JOIN dept b 
         ON a.deptno = b.deptno
 
-- Oracle variant
SELECT a.*, b.*
  FROM emp a, 
       dept b
 WHERE a.deptno(+) = b.deptno
