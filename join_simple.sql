 -- "Classic" ANSI JOIN syntax
SELECT *
  FROM emp a
      JOIN dept b 
	    ON a.deptno = b.deptno
 
-- "Nice" ANSI JOIN syntax
SELECT *
  FROM emp a
       JOIN dept b 
	     USING (deptno)
 
-- "Old" syntax using a "CROSS JOIN"
SELECT *
  FROM emp a, 
       dept b
 WHERE a.deptno = b.deptno