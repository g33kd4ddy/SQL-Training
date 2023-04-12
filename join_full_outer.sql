-- Full (outer) Join
SELECT *
  FROM emp a
      FULL OUTER JOIN dept b 
        ON a.deptno = b.deptno
