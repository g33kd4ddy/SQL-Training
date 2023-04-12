-- Full (outer) Join
SELECT *
  FROM emp a
      FULL OUTER JOIN dept b 
        ON a.deptno = b.deptno
 WHERE a.deptno is null
    OR b.deptno is null
